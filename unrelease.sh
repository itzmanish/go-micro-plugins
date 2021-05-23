#!/bin/bash

tag=$1

if [ "x$tag" = "x" ]; then
  echo "must specify tag to remove release"
  exit 1;
fi

for m in $(find * -name 'go.mod' -exec dirname {} \;); do
  hub release delete $m/$tag;
done
