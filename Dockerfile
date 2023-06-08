FROM golang:1.20

WORKDIR /usr/src/app

COPY . .

RUN go build && \
    go test -coverprofile=coverage.out

# CMD ["./go-sonar"]