#!/usr/bin/env bash
curl -sfL https://get.k3s.io | sh -

if [ ! -e /usr/local/bin/kubectl ]; then
  curl -sLO https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kubectl
  chmod +x ./kubectl
  sudo mv ./kubectl /usr/local/bin/kubectl
else
  echo "Pre-req OK!"
fi