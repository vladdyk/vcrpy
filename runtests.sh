#!/bin/bash

export REQUESTS_CA_BUNDLE=`python -m pytest_httpbin.certs`
py.test $*
