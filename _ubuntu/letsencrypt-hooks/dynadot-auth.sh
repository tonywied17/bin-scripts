#!/bin/bash

DYNADOT_API_KEY=""

# Domain details
DOMAIN="_acme-challenge.$CERTBOT_DOMAIN"
IP_ADDRESS=$(curl -s https://api.ipify.org)

# Add DNS TXT record for the ACME challenge
curl -X POST "https://api.dynadot.com/api3.html?key=${DYNADOT_API_KEY}&command=set_txt_record&domain=${DOMAIN}&value=${CERTBOT_VALIDATION}&subdomain=_acme-challenge&ttl=600"

# Wait to ensure the DNS record has propagated
sleep 60
