FROM golang:1.14.9-alpine
ADD . /app/
WORKDIR /app
RUN CGO_ENABLED=0 go build ./cmd/demo
CMD ["/app/demo"]
