################ Build & Dev ################
# Build stage will be used:
# - for building the application for production
# - as target for development (see devspace.yaml)
FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster as build

# Create project directory (workdir)
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Add source code files to WORKDIR
ADD . .

# Build application
RUN dotnet publish -c Release -o bin

# Application port (optional)
EXPOSE 5000

# Container start command for development
# Allows DevSpace to restart the dev container
# It is also possible to override this in devspace.yaml via images.*.cmd
CMD ["dotnet", "run"]


################ Production ################
# Creates a minimal image for production using a different base image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 as production

# Create project directory (workdir)
WORKDIR /app

# Copy application binary from build/dev stage to the distroless container
COPY --from=build /app/bin .

# Container start command for production (ADJUST DLL NAME TO YOUR PROJECT)
CMD ["dotnet", "myWebApp.dll"]
