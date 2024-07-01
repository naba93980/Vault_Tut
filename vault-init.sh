#!/bin/bash

# Start the vault server
vault server -config=vault.hcl &


# Wait for the Vault server to be ready
while true; do
    VAULT_STATUS=$(vault status)
    if echo "$VAULT_STATUS" | grep -q "Sealed *true"; then
        echo "Vault server is running but sealed. Unsealing now..."

        # Unseal the vault
        vault operator unseal "$UNSEAL_KEY_1"
        vault operator unseal "$UNSEAL_KEY_2"

    elif echo "$VAULT_STATUS" | grep -q "Initialized *true"; then
        echo "Vault server is initialized and unsealed."
        break
    else
        echo "Waiting for Vault server to be initialized..."
        sleep 1
    fi
done


# Login to the vault
vault login "$VAULT_TOKEN"


