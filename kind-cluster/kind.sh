#!/bin/bash

if ! command kind -v &>/dev/null; then
	echo "Installing kind ....."

	ARCH=$(uname -m)
	echo " Architecture is $ARCH"

	curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.29.0/kind-linux-amd64
	chmod +x ./kind
	sudo mv ./kind /usr/local/bin/kind

	echo "Kind installed successfully"
	kind --version
else
	echo "Unsupported architecture : $ARCH"
	exit 1

fi
