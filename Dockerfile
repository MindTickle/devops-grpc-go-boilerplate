FROM golang as base

RUN go get golang.org/x/net/context
RUN go get google.golang.org/grpc
RUN go get google.golang.org/grpc/reflection

RUN go get github.com/fullstorydev/grpcurl
RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl

FROM golang

COPY --from=base /go/bin/grpcurl /go/bin/grpcurl
COPY --from=base /go/src /go/src

EXPOSE 50051

COPY . /app

RUN echo "random change"
CMD cd /app && go run server/main.go
