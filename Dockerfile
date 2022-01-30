FROM golang:1.14.9-alpine AS builder
ADD . /app/
WORKDIR /app
RUN CGO_ENABLED=0 go build ./cmd/demo

FROM alpine:latest
# copy te go binary
COPY --from=builder /app/demo /root/
CMD ["/root/demo"]