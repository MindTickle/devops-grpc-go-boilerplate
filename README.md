# Devops gRPC Go Boilerplate

## Running

* `docker build -t go-grpc-boilerplate .`
* `docker run -p 50051:50051 go-grpc-boilerplate`

## Testing
`grpcurl -plaintext localhost:50051 protos.HelloWorld/SayHello`
