FROM microsoft/dotnet:latest
COPY . /app
WORKDIR /app

RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]

ENV ASPNETCORE_URLS http://*:7001
EXPOSE 7001/tcp

ENTRYPOINT ["dotnet", "run"]

