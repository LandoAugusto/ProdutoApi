# See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

# This stage is used when running from VS in fast mode (Default for Debug configuration)
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
USER $APP_UID
WORKDIR /app
EXPOSE 8080
EXPOSE 8081


# This stage is used to build the service project
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["./Product.Api/Product.Api.csproj", "src/Product.Api/"]
COPY ["./ProductApi.Application/ProductApi.Application.csproj", "src/ProductApi.Application/"]
COPY ["./ProductApi.Core/ProductApi.Core.csproj", "src/ProductApi.Core/"]
COPY ["./ProductApi.Infra.Data/ProductApi.Infra.Data.csproj", "src/ProductApi.Infra.Data/"]
COPY ["./ProductApi.Infra.IoC/ProductApi.Infra.IoC.csproj", "src/ProductApi.Infra.IoC/"]
RUN dotnet restore "src/Product.Api.csproj"
COPY . .
WORKDIR "Product.Api"
RUN dotnet build "src/src/Product.Api.csproj" -c $BUILD_CONFIGURATION -o /app/build

# This stage is used to publish the service project to be copied to the final stage
FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "Product.Api.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

# This stage is used in production or when running from VS in regular mode (Default when not using the Debug configuration)
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Product.Api.dll"]