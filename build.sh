#!/bin/bash
set -e
NS=eu.gcr.io/cognitedata
if [ ! -s "$TAG" ] ; then
    echo "This build will be published under the tag: ${TAG}"
fi

(cd gateway && ./build.sh $TAG $NS)
# (cd watchdog && ./build.sh)
# (cd auth/basic-auth && ./build.sh)