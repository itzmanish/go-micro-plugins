module github.com/itzmanish/go-micro-plugins/config/source/consul/v2

go 1.13

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible

require (
	github.com/hashicorp/consul/api v1.3.0
	github.com/itzmanish/go-micro/v2 v2.10.0
)
