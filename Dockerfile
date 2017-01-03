FROM microsoft/dotnet:latest
COPY . /app
WORKDIR /app

RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]

ENV ASPNETCORE_URLS http://*:5001
EXPOSE 5001/tcp

ENTRYPOINT ["dotnet", "run"]

