module github.com/itzmanish/go-micro-plugins/wrapper/breaker/gobreaker/v2

go 1.13

require (
	github.com/itzmanish/go-micro/v2 v2.9.3
	github.com/bradfitz/gomemcache v0.0.0-20190913173617-a41fca850d0b // indirect
	github.com/sony/gobreaker v0.4.1
	github.com/teris-io/shortid v0.0.0-20171029131806-771a37caa5cf // indirect
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
