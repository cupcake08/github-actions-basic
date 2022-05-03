FROM golang:1.18-alpine3.15

RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go clean --modcache \
    && go build -o main . 
CMD ["/app/main"]