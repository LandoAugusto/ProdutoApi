﻿using Asp.Versioning;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Cors.Infrastructure;
using Microsoft.AspNetCore.ResponseCompression;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using Product.Api.Configurations;
using Product.Api.Filters;
using ProductApi.Core.Infrastructure;
using ProductApi.Core.Infrastructure.Configuration;
using ProductApi.Core.Infrastructure.Interfaces;
using ProductApi.Core.Infrastructure.Mapper;
using Swashbuckle.AspNetCore.SwaggerGen;
using System.IdentityModel.Tokens.Jwt;
using System.IO.Compression;
using System.Reflection;
using System.Text;

namespace Product.Api.Extensions
{
    /// <summary>
    /// 
    /// </summary>
    public static class ServiceCollectionExtensions
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="services"></param>
        /// <param name="configuration"></param>
        public static void UseApi(this IServiceCollection services, IConfiguration configuration)
        {

            IConfigurationSection section = configuration.GetSection("ApiConfig");
            services.Configure<ApiConfig>(section);
            var apiConfig = section.Get<ApiConfig>();
            services.AddSingleton((IServiceProvider sp) => sp.GetRequiredService<IOptions<ApiConfig>>().Value);
            services.ConfigControllersPipeline();
            services.AddResponseCompression(apiConfig);
            services.AddUseCors();
            services.AddRoutings();
            services.AddApiVersion();
            services.AddSwagger(apiConfig);
            services.AddAutoMapper(typeof(ConfigurarationMapping));
            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            services.AddAuthAndAuthor(apiConfig);
        }

        private static IServiceCollection ConfigControllersPipeline(this IServiceCollection services)
        {
            services.AddScoped<IApiWorkContext, ApiWorkContext>();
            services.AddControllers(mvcOptions =>
            {

                //mvcOptions.Filters.Add<ContextFilter>(order: 1);
                //mvcOptions.Filters.Add<ControllersFilter>(order: 2);
                mvcOptions.Filters.Add<ExceptionFilter>(order: 0);
            });

            return services;
        }


        private static void AddResponseCompression(this IServiceCollection services, ApiConfig apiConfig)
        {
            if (apiConfig != null && apiConfig.UseResponseCompression)
            {
                services.Configure(delegate (GzipCompressionProviderOptions options)
                {
                    options.Level = CompressionLevel.SmallestSize;
                });

                services.AddResponseCompression(delegate (ResponseCompressionOptions options)
                {
                    options.EnableForHttps = true;
                    options.Providers.Add<BrotliCompressionProvider>();
                    options.Providers.Add<GzipCompressionProvider>();
                });
            }
        }

        private static void AddUseCors(this IServiceCollection services)
        {
            services.AddCors(delegate (CorsOptions options)
            {
                options.AddPolicy("AllowSpecificOrigins", delegate (CorsPolicyBuilder builder)
                {
                    builder.AllowAnyOrigin().AllowAnyHeader().AllowAnyMethod();
                });
            });
        }

        private static void AddRoutings(this IServiceCollection services)
        {
            services.AddRouting(delegate (RouteOptions option)
            {
                option.ConstraintMap["kebab"] = typeof(KebabParameterTransformer);
                option.LowercaseUrls = true;
            });
        }

        private static void AddApiVersion(this IServiceCollection services)
        {
            services.AddApiVersioning(delegate (ApiVersioningOptions config)
            {
                config.AssumeDefaultVersionWhenUnspecified = true;
                config.ReportApiVersions = true;
                config.ApiVersionReader = ApiVersionReader.Combine(new UrlSegmentApiVersionReader(),
                                                   new HeaderApiVersionReader("x-api-version"),
                                                   new MediaTypeApiVersionReader("x-api-version"));
            })
            .AddApiExplorer(options =>
            {
                options.GroupNameFormat = "'v'VVV";
                options.SubstituteApiVersionInUrl = true;
                options.DefaultApiVersionParameterDescription = "Versão da API.";
            }).EnableApiVersionBinding(); ;
        }

        private static void AddSwagger(this IServiceCollection services, ApiConfig apiConfig)
        {
            services.AddSwaggerGen(delegate (SwaggerGenOptions options)
            {
                options.OperationFilter<SwaggerDefaultValues>();

                options.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
                {   
                    Description =
                    @"Digite 'Bearer' [espaço] e, em seguida, seu token na entrada de texto abaixo.<br><br>Example: 'Bearer 12345abcdef'<br>",
                    Name = "Authorization",
                    In = ParameterLocation.Header,
                    Type = SecuritySchemeType.ApiKey,
                    Scheme = "Bearer"
                });

                options.OperationFilter<SwaggerJsonIgnoreFilter>();

                options.AddSecurityRequirement(new OpenApiSecurityRequirement
                {
                    {
                        new OpenApiSecurityScheme
                        {
                            Reference = new OpenApiReference
                            {
                                Type = ReferenceType.SecurityScheme,
                                Id = "Bearer"
                            },
                            Scheme = "oauth2",
                            Name = "Bearer",
                            In = ParameterLocation.Header,
                        },
                        new List<string>()
                    }
                });

                var xmlFile = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";
                var xmlPath = Path.Combine(AppContext.BaseDirectory, xmlFile);
                options.IncludeXmlComments(xmlPath);
            });
        }

        private static void AddAuthAndAuthor(this IServiceCollection services, ApiConfig apiConfig)
        {
            if (apiConfig.Jwt.Enable)
            {
                var signingConfigurations = new SigningConfiguration();
                services.AddSingleton(signingConfigurations);

                services.AddAuthentication(options =>
                {
                    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme; ;
                    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
                }).AddJwtBearer(jwtOptions =>
                {
                    var secretKey = apiConfig.Jwt.Secret;
                    var validateSigningKey = !string.IsNullOrWhiteSpace(secretKey);

                    var paramsValidation = jwtOptions.TokenValidationParameters;

                    paramsValidation.IssuerSigningKey = signingConfigurations.Key;
                    paramsValidation.ValidAudience = apiConfig.Jwt.Audience;
                    paramsValidation.ValidIssuer = apiConfig.Jwt.Issuer;
                    paramsValidation.ValidateIssuerSigningKey = true;
                    paramsValidation.ValidateLifetime = true;
                    paramsValidation.ClockSkew = TimeSpan.FromHours(apiConfig.Jwt.ExpiresInMinutes);
                    if (validateSigningKey)
                    {
                        var secretKeyBytes = Encoding.UTF8.GetBytes(secretKey);
                        jwtOptions.TokenValidationParameters.IssuerSigningKey = new SymmetricSecurityKey(secretKeyBytes);
                    }
                    else
                    {
                        jwtOptions.TokenValidationParameters.RequireExpirationTime = false;
                        jwtOptions.TokenValidationParameters.RequireSignedTokens = false;
                        jwtOptions.TokenValidationParameters.SignatureValidator = (token, _) =>
                            new JwtSecurityToken(token);
                    }

                    jwtOptions.TokenValidationParameters = paramsValidation;

                    jwtOptions.Events = new JwtBearerEvents
                    {
                        OnChallenge = async (context) =>
                        {
                            context.HandleResponse();
                            context.Response.StatusCode = StatusCodes.Status401Unauthorized;

                        },
                        OnForbidden = async (context) =>
                        {
                            context.Response.StatusCode = StatusCodes.Status403Forbidden;
                        },
                    };
                });

                services.AddAuthorization();
            }
        }
    }
}
