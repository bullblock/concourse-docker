#!/bin/sh
CONCOURSE_SESSION_SIGNING_KEY=${CONCOURSE_SESSION_SIGNING_KEY:-/concourse-keys/session_signing_key}
[ -f $CONCOURSE_SESSION_SIGNING_KEY ] && export CONCOURSE_SESSION_SIGNING_KEY
CONCOURSE_TSA_AUTHORIZED_KEYS=${CONCOURSE_TSA_AUTHORIZED_KEYS:-/concourse-keys/authorized_worker_keys}
[ -f $CONCOURSE_TSA_AUTHORIZED_KEYS ] && export CONCOURSE_TSA_AUTHORIZED_KEYS
CONCOURSE_TSA_HOST_KEY=${CONCOURSE_TSA_HOST_KEY:-/concourse-keys/tsa_host_key}
[ -f $CONCOURSE_TSA_HOST_KEY ] && export CONCOURSE_TSA_HOST_KEY
CONCOURSE_TSA_PUBLIC_KEY=${CONCOURSE_TSA_PUBLIC_KEY:-/concourse-keys/tsa_host_key.pub}
[ -f $CONCOURSE_TSA_PUBLIC_KEY ] && export CONCOURSE_TSA_PUBLIC_KEY
CONCOURSE_TSA_WORKER_PRIVATE_KEY=${CONCOURSE_TSA_WORKER_PRIVATE_KEY:-/concourse-keys/worker_key}
[ -f $CONCOURSE_TSA_WORKER_PRIVATE_KEY ] && export CONCOURSE_TSA_WORKER_PRIVATE_KEY
CONCOURSE_TLS_CERT=${CONCOURSE_TLS_CERT:-/concourse_cert}
[ -f $CONCOURSE_TLS_CERT ] && export CONCOURSE_TLS_CERT
CONCOURSE_TLS_KEY=${CONCOURSE_TLS_KEY:-/concourse_key}
[ -f $CONCOURSE_TLS_KEY ] && export CONCOURSE_TLS_KEY
exec /usr/local/concourse/bin/concourse $@
