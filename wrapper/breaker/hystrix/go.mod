module github.com/itzmanish/go-micro-plugins/wrapper/breaker/hystrix/v2

go 1.13

require (
	github.com/afex/hystrix-go v0.0.0-20180502004556-fa1af6a1f4f5
	github.com/itzmanish/go-micro/v2 v2.10.0
	github.com/micro/go-micro/v2 v2.9.1
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
