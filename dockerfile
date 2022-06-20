FROM gcc:ll AS build
WORKDIR /APP
COPY . .
RUN g++ helloworld.cpp -o app.exe
FROM ubuntu:22.04
COPY --from=build /APP/app.exe /app.exe
CMD ./app.exe