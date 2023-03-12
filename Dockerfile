FROM golang:1.20
WORKDIR /go/src
COPY main.go .
COPY go.mod .
RUN GOOS=linux go build -ldflags="-s -w" -o server main.go
CMD ["./server"]