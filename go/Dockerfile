FROM golang:1.12

RUN mkdir -p /go/src/app && ln -s /go/src/app /app
ADD . /go/src/app

RUN cd /go/src/app && go get ./... && go build -o app . && chmod +x app && cd /app 

WORKDIR /app
CMD ["/go/src/app/app"]
