FROM golang:latest
COPY ./GoFizzBuzzServer /go
EXPOSE 8080
CMD ["go", "run", "server.go"]