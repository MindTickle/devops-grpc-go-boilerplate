FROM golang

RUN go get golang.org/x/net/context
RUN go get google.golang.org/grpc
RUN go get google.golang.org/grpc/reflection

RUN go get github.com/fullstorydev/grpcurl
RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl

EXPOSE 50051

COPY . /app

RUN exit 1
CMD cd /app && go run server/main.go
