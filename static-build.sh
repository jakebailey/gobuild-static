#!/bin/sh -e

tar -x -C /go/src

# $@ is intentionally not wrapped in quotes.
go install -installsuffix static -ldflags "-s -w -extldflags '-static' $GO_LDFLAGS" $@

cd /go/bin
tar -c *
