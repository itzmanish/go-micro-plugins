package gobreaker

import (
	"context"
	"testing"

	"github.com/itzmanish/go-micro/v2/client"
	"github.com/itzmanish/go-micro/v2/errors"
	"github.com/itzmanish/go-micro/v2/registry/memory"
	"github.com/sony/gobreaker"
)

func TestBreaker(t *testing.T) {
	// setup
	r := memory.NewRegistry()

	c := client.NewClient(
		// set the selector
		client.Registry(r),
		// add the breaker wrapper
		client.Wrap(NewClientWrapper()),
	)

	req := c.NewRequest("test.service", "Test.Method", map[string]string{
		"foo": "bar",
	}, client.WithContentType("application/json"))

	var rsp map[string]interface{}

	// Force to point of trip
	for i := 0; i < 6; i++ {
		c.Call(context.TODO(), req, rsp)
	}

	err := c.Call(context.TODO(), req, rsp)
	if err == nil {
		t.Error("Expecting tripped breaker, got nil error")
	}

	merr := err.(*errors.Error)
	if merr.Code != 502 {
		t.Errorf("Expecting tripped breaker, got %v", err)
	}
}

func TestCustomBreaker(t *testing.T) {
	// setup
	r := memory.NewRegistry()

	c := client.NewClient(
		// set the selector
		client.Registry(r),
		// add the breaker wrapper
		client.Wrap(NewCustomClientWrapper(
			gobreaker.Settings{},
			BreakService,
		)),
	)

	req := c.NewRequest("test.service", "Test.Method", map[string]string{
		"foo": "bar",
	}, client.WithContentType("application/json"))

	var rsp map[string]interface{}

	// Force to point of trip
	for i := 0; i < 6; i++ {
		c.Call(context.TODO(), req, rsp)
	}

	err := c.Call(context.TODO(), req, rsp)
	if err == nil {
		t.Error("Expecting tripped breaker, got nil error")
	}

	merr := err.(*errors.Error)
	if merr.Code != 502 {
		t.Errorf("Expecting tripped breaker, got %v", err)
	}
}
