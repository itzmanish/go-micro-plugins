module github.com/itzmanish/go-micro-plugins/wrapper/trace/datadog/v2

go 1.13

require (
	github.com/DataDog/datadog-go v3.3.1+incompatible // indirect
	github.com/itzmanish/go-micro/v2 v2.10.0
	github.com/micro/go-micro/v2 v2.9.1
	github.com/philhofer/fwd v1.0.0 // indirect
	github.com/stretchr/objx v0.2.0 // indirect
	github.com/stretchr/testify v1.7.0
	github.com/tinylib/msgp v1.1.1 // indirect
	google.golang.org/grpc v1.27.0
	gopkg.in/DataDog/dd-trace-go.v1 v1.20.1
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
