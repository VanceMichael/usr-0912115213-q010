FROM golang:1.22-alpine AS build
WORKDIR /src
COPY go.mod ./
RUN go mod download
COPY . .
RUN go test ./...
RUN CGO_ENABLED=0 go build -o /out/server .

FROM alpine:3.21
COPY --from=build /out/server /usr/local/bin/server
ENV DATA_PATH=/data/vehicle-replay.db
EXPOSE 8080
CMD ["server"]
