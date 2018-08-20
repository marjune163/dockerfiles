#!/bin/sh

nodever="${1:-8.11.4}"
nodepkg="node-v${nodever}-linux-x64"
nodepkgfile="${nodepkg}.tar.gz"

cachedir="cache"
workdir="workdir"

mkdir -p "${cachedir}"
if [ ! -e "${cachedir}/${nodepkgfile}" ]; then
	wget -P "${cachedir}" "https://nodejs.org/dist/v${nodever}/${nodepkgfile}"
fi;

rm -rf "${workdir}"
mkdir -p "${workdir}"
tar -zxf "${cachedir}/${nodepkgfile}" -C "${workdir}/"

cp Dockerfile "${workdir}/"

docker build --build-arg nodepkg="${nodepkg}" -t "marjune/nodejs:${nodever}" "${workdir}"
