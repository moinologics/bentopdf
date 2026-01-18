#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

REL_NAME=pdf-tool
NAMESPACE=self-hosted-central

# helm repo add stakater https://stakater.github.io/stakater-charts

helm upgrade --install $REL_NAME stakater/application -f $SCRIPT_DIR/values-production.yaml -n $NAMESPACE