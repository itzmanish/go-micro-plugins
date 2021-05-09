module github.com/itzmanish/go-micro-plugins/wrapper/trace/opencensus/v2

go 1.13

require (
	github.com/itzmanish/go-micro/v2 v2.9.2
	go.opencensus.io v0.22.2
	google.golang.org/genproto v0.0.0-20200115191322-ca5a22157cba
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
