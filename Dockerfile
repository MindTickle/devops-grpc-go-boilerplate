FROM golang as base

FROM base as builder

RUN go get golang.org/x/net/context
RUN go get google.golang.org/grpc
RUN go get google.golang.org/grpc/reflection

RUN go get github.com/fullstorydev/grpcurl
RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl

FROM base

COPY --from=builder /go/bin/grpcurl /go/bin/grpcurl
COPY --from=builder /go/src /go/src

EXPOSE 50051

COPY . /app

RUN echo "random change"
CMD cd /app && go run server/main.go
