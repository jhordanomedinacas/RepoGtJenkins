# Imagen base para build
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /app

# Copiar y restaurar dependencias
COPY *.csproj ./
RUN dotnet restore mi-proyecto.csproj

# Copiar todo y compilar
COPY . ./
RUN dotnet build mi-proyecto.csproj --no-restore

# Publicar
RUN dotnet publish mi-proyecto.csproj -c Release -o /app/publish

# Imagen final
FROM mcr.microsoft.com/dotnet/runtime:10.0 AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "mi-proyecto.dll"]