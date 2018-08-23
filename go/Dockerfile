FROM golang:1.10

ENV GOPATH /app
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH" "$GOPATH/src" "$GOPATH/src/app" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

ADD . $GOPATH/src
WORKDIR $GOPATH

RUN go get ./...
RUN go build -o main .

CMD ["$GOPATH/src/app/main"]
