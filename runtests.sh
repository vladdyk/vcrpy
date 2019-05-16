#!/bin/bash

if [[ "${TOX_ENV_NAME}" == *"boto3"* ]]; then
    py.test $*
else
    REQUESTS_CA_BUNDLE=`python -m pytest_httpbin.certs` py.test $*
fi