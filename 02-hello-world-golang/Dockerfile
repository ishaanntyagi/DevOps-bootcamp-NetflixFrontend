FROM golang:1.17-alpine
WORKDIR /app

COPY main.go .

# Initialize Go module
RUN go mod init hello

RUN go build -o main .

CMD ["./main"]