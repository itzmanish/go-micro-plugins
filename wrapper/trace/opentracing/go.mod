module github.com/itzmanish/go-micro-plugins/wrapper/trace/opentracing/v2

go 1.13

require (
	github.com/itzmanish/go-micro/v2 v2.10.0
	github.com/micro/go-micro/v2 v2.9.1
	github.com/opentracing/opentracing-go v1.1.0
	github.com/stretchr/testify v1.7.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
