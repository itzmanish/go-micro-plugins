module github.com/itzmanish/go-micro-plugins/registry/consul/v2

go 1.15

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible

require (
	github.com/hashicorp/consul/api v1.3.0
	github.com/itzmanish/go-micro/v2 v2.9.2
	github.com/mitchellh/hashstructure v1.0.0
)
