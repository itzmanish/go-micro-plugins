module github.com/itzmanish/go-micro-plugins/wrapper/breaker/gobreaker/v2

go 1.13

require (
	github.com/itzmanish/go-micro/v2 v2.10.0
	github.com/sony/gobreaker v0.4.1
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
