#!/bin/bash

projects=( \
	appscode \
	bytebuilders \
	gomodules \
	kmodules \
	kubedb \
	kubeform \
	kubeguard \
	kubeops \
	kubepack \
	kubeshield \
	kubevault \
	open-viz \
	pharmer \
	searchlight \
	stashed \
	voyagermesh \
	wandrs \
)

firebase use default
for p in "${projects[@]}"; do
	firebase hosting:sites:create $p-govanityurls
done
