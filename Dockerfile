FROM  mcr.microsoft.com/dotnet/core/sdk:3.0 AS build
WORKDIR  /src
COPY . .
RUN dotnet restore
RUN dotnet publish  -o /app

FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS runtime
WORKDIR /app
EXPOSE 5000
COPY --from=build /app .
ENTRYPOINT [ "dotnet", "dotnet-core-helloworld.dll" ]