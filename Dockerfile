FROM alpine:latest

RUN apk --no-cache add ca-certificates tzdata make

RUN apk --no-cache add go

WORKDIR /listmonk

COPY . .

RUN go build -o listmonk cmd/*.go

EXPOSE 9001

CMD ["./listmonk"]
