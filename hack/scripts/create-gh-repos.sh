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

gsa=$(cat /personal/AppsCode/credentials/govanityurls@appscode-govanityurls.json)
gh secret set FIREBASE_SERVICE_ACCOUNT_APPSCODE_GOVANIURLS -b"${gsa}" -R appscodelabs/govanityurls

for p in "${projects[@]}"; do
	gh repo create -y --public --template=appscodelabs/govanityurls $p/govanityurls
	gh secret set FIREBASE_SERVICE_ACCOUNT_APPSCODE_GOVANIURLS -b"${gsa}" -R $p/govanityurls
done
