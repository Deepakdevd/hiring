##
## Build
##
FROM golang:1.16-buster AS build

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY ./assignment/main.go /app

RUN go build -o /docker-server

##
## Multistagebuildwithsmallerimage
##
FROM gcr.io/distroless/base-debian10

WORKDIR /

COPY --from=build /docker-server /docker-server

EXPOSE 8080

USER nonroot:nonroot

ENTRYPOINT ["/docker-server"]
