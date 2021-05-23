#!/bin/bash -e

tag=$1

for m in $(find ./ -name 'go.mod'); do
  d=$(dirname $m);
  pushd $d;
  rm -f go.sum
  grep -q github.com/itzmanish/go-micro/v2 go.mod && go get github.com/itzmanish/go-micro/v2@$tag
  grep -q github.com/itzmanish/micro/v2 go.mod && go get github.com/itzmanish/micro/v2@$tag
  go mod tidy
  popd;
done
