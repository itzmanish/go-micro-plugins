module github.com/itzmanish/go-micro-plugins/wrapper/monitoring/prometheus/v2

go 1.13

require (
	github.com/itzmanish/go-micro/v2 v2.10.0
	github.com/prometheus/client_golang v1.5.1
	github.com/prometheus/client_model v0.2.0
	github.com/stretchr/testify v1.7.0
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
