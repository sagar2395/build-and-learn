FROM golang:1.23 As build

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY main.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o /docker-gs-ping


FROM gcr.io/distroless/base-debian11 AS release

WORKDIR /

COPY --from=build /docker-gs-ping .

EXPOSE 8090

CMD ["/docker-gs-ping"]