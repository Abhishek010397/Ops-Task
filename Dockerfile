FROM golang:1.12.0-alpine3.9
RUN apk add --no-cache git
RUN mkdir /app
ADD . /app
WORKDIR /app
ENV DEMO_REDIS_ADDR 18.222.95.186:6379
ENV DEMO_APP_ADDR 18.222.95.186:8080
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .
RUN go build -o main .
EXPOSE 8000
CMD ["/app/main"]
