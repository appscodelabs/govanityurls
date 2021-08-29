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

for p in "${projects[@]}"; do
	gh secret remove -o $p GOVANITYURLS_SERVICE_ACCOUNT_JSON_KEY
done
