module github.com/itzmanish/go-micro-plugins/store/redis/v2

go 1.15

require (
	github.com/itzmanish/go-micro/v2 v2.9.3
	github.com/go-redis/redis/v7 v7.4.0
	gopkg.in/yaml.v2 v2.2.7 // indirect
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
