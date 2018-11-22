#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Usage: $0 <directory>" 1>&2
fi;

dir="${1////}";
tag="$dir-custom"

docker image rm -f "$tag"
docker build -t "$tag" "$dir"

