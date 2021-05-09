module github.com/micro/go-micro-plugins/store/memcached/v2

go 1.15

require (
	github.com/bradfitz/gomemcache v0.0.0-20190913173617-a41fca850d0b
	github.com/itzmanish/go-micro/v2 v2.9.3
)

replace github.com/coreos/etcd => github.com/ozonru/etcd v3.3.20-grpc1.27-origmodule+incompatible
