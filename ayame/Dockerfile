FROM golang:1.20-alpine

RUN apk add make

WORKDIR /app
COPY . .
RUN go install

RUN make

RUN make init

EXPOSE 3333

CMD ["./ayame"]
