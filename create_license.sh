#!/bin/bash

# read UUID
uuid=$(sudo dmidecode -t 1 | grep UUID | awk '{print $2}')

public_key="-----BEGIN PUBLIC KEY-----

-----END PUBLIC KEY-----"

uuid=$(echo -n "$uuid" | tr -d '\0')
public_key=$(echo -n "$public_key" | tr -d '\0')

encrypted_data=$(echo -n "$uuid" | openssl pkeyutl -encrypt -pubin -inkey <(echo -n "$public_key"))

echo -n "$encrypted_data" > "license.lic"

echo "License data has been encrypted and saved to license.lic"