# See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

# This stage is used when running from VS in fast mode (Default for Debug configuration)
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
USER $APP_UID
WORKDIR /app
EXPOSE 80
EXPOSE 443


# This stage is used to build the service project
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copia nuget.config e pacotes locais (relativos ao contexto definido no docker-compose)
COPY nuget.config ./nuget.config
COPY components/package ./components/package
# Copia os arquivos de projeto
COPY ["src/Product.Api/Product.Api.csproj", "Product.Api/"]
COPY ["src/ProductApi.Application/ProductApi.Application.csproj", "ProductApi.Application/"]
COPY ["src/ProductApi.Core/ProductApi.Core.csproj", "ProductApi.Core/"]
COPY ["src/ProductApi.Infra.Data/ProductApi.Infra.Data.csproj", "ProductApi.Infra.Data/"]
COPY ["src/ProductApi.Infra.IoC/ProductApi.Infra.IoC.csproj", "ProductApi.Infra.IoC/"]

# Restaura pacotes usando o nuget.config com pacote local
RUN dotnet restore "Product.Api/Product.Api.csproj" --configfile nuget.config

COPY ./src/Product.Api ./Product.Api
COPY ./src/ProductApi.Application ./ProductApi.Application
COPY ./src/ProductApi.Core ./ProductApi.Core
COPY ./src/ProductApi.Infra.IoC ./ProductApi.Infra.IoC
COPY ./src/ProductApi.Infra.Data ./ProductApi.Infra.Data

WORKDIR "/src/Product.Api"
RUN dotnet build "Product.Api.csproj" -c Release -o /app/build

# This stage is used to publish the service project to be copied to the final stage
FROM build AS publish
RUN dotnet publish "Product.Api.csproj" -c Release -o /app/publish 

# This stage is used in production or when running from VS in regular mode (Default when not using the Debug configuration)
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Product.Api.dll"]