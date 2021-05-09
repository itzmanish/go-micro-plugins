package consul

import (
	"context"

	"github.com/hashicorp/consul/api"
	"github.com/itzmanish/go-micro/v2/store"
)

type addressKey struct{}
type prefixKey struct{}
type stripPrefixKey struct{}
type dcKey struct{}
type tokenKey struct{}
type configKey struct{}

// WithAddress sets the consul address
func WithAddress(a string) store.Option {
	return func(o *store.Options) {
		if o.Context == nil {
			o.Context = context.Background()
		}
		o.Context = context.WithValue(o.Context, addressKey{}, a)
	}
}

// WithPrefix sets the key prefix to use
func WithPrefix(p string) store.Option {
	return func(o *store.Options) {
		if o.Context == nil {
			o.Context = context.Background()
		}
		o.Context = context.WithValue(o.Context, prefixKey{}, p)
	}
}

// StripPrefix indicates whether to remove the prefix from config entries, or leave it in place.
func StripPrefix(strip bool) store.Option {
	return func(o *store.Options) {
		if o.Context == nil {
			o.Context = context.Background()
		}

		o.Context = context.WithValue(o.Context, stripPrefixKey{}, strip)
	}
}

func WithDatacenter(p string) store.Option {
	return func(o *store.Options) {
		if o.Context == nil {
			o.Context = context.Background()
		}
		o.Context = context.WithValue(o.Context, dcKey{}, p)
	}
}

// WithToken sets the key token to use
func WithToken(p string) store.Option {
	return func(o *store.Options) {
		if o.Context == nil {
			o.Context = context.Background()
		}
		o.Context = context.WithValue(o.Context, tokenKey{}, p)
	}
}

// WithConfig set consul-specific options
func WithConfig(c *api.Config) store.Option {
	return func(o *store.Options) {
		if o.Context == nil {
			o.Context = context.Background()
		}
		o.Context = context.WithValue(o.Context, configKey{}, c)
	}
}
