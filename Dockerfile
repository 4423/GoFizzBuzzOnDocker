FROM golang:latest as builder
COPY ./GoFizzBuzzServer /go
WORKDIR /go
RUN GOOS=linux CGO_ENABLED=0 go build server.go

FROM alpine:latest as runner
COPY --from=builder /go/server /server
CMD ["/server"]