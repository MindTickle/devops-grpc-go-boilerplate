# Devops gRPC Go Boilerplate

## Running

* `docker build -t devops-grpc-go-boilerplate .`
* `docker run -p 50051:50051 devops-grpc-go-boilerplate`

## Testing
`grpcurl -plaintext localhost:50051 protos.HelloWorld/SayHello`
