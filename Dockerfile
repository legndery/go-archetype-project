FROM golang:1.12.9-alpine3.9

RUN apk add --no-cache \
	build-base

ADD . /app/
WORKDIR /app
RUN CGO_ENABLED=0 go build
CMD ["/app/demo"]
