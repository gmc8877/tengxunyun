FROM golang:1.17.8


WORKDIR /bj38/test
RUN go env -w GO111MODULE=on
RUN go env -w GOPROXY=https://goproxy.cn,direct

ADD . /bj38/test
RUN go build main.go

ENTRYPOINT ["./main"]