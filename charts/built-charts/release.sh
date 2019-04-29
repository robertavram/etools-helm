#!/bin/sh
set -e

repos=(django t2f pmp ap action-points tpm dashboard)
CHARTS_PATH="$(dirname "$(pwd)")"
echo "What release number do you want to use?"
read VERSION



for REPO in "${repos[@]}"
do
    echo "dry run ${REPO}"
    REPO_PTH=${CHARTS_PATH}/etools-${REPO}
    echo $REPO_PTH
    helm install --dry-run --debug $REPO_PTH
    echo "packaging ${REPO} with verion ${VERSION}"
    helm package --version $VERSION $REPO_PTH
    echo "pushing image to GCS"
    echo "helm gcs push etools-${REPO}:${VERSION} etools-charts"
done


echo "DONE"