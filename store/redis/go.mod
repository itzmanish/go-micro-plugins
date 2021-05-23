module github.com/itzmanish/go-micro-plugins/store/redis/v2

go 1.15

require (
	github.com/go-redis/redis/v7 v7.4.0
	github.com/itzmanish/go-micro/v2 v2.10.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
