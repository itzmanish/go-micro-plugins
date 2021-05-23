module github.com/itzmanish/go-micro-plugins/wrapper/ratelimiter/ratelimit/v2

go 1.13

require (
	github.com/itzmanish/go-micro/v2 v2.10.0
	github.com/juju/ratelimit v1.0.2-0.20191002062651-f60b32039441
	github.com/micro/go-micro/v2 v2.9.1
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
