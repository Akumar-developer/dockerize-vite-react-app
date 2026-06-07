#!/bin/bash


if ! command -v kubectl &>/dev/null; then
	echo "Installing Kubectl ...."

	ARCH=$(unmae-m)
	VERSION=$(curl -Ls https://dl.k8s.io/release/stable.txt)

	curl -Lo ./kubectl "https://dl.k8s.io/release/${VERSION}/bin/linux/amd64/kubectl"

	chmod +x ./kubectl
	sudo mv ./kubectl /user/local/bin/kubectl
	echo "kubectl installed successfully"

	kubectl version --client 
else
	echo "unsupported architecture : $ARCH"
	exit 1
fi

