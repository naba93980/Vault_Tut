#!/bin/bash

vault server -dev     # start vault server in dev mode

export VAULT_ADDR='http://127.0.0.1:8200'    # set the vault address

export VAULT_TOKEN="here.tyuffgftyduyiuy"   # set the vault token

vault status    # check the vault status

vault create secret/hello value=world    # create a secret
