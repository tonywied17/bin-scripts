#!/bin/bash

DYNADOT_API_KEY=""

# Domain details
DOMAIN="_acme-challenge.$CERTBOT_DOMAIN"

# Delete the DNS TXT record
curl -X POST "https://api.dynadot.com/api3.html?key=${DYNADOT_API_KEY}&command=delete_record&domain=${DOMAIN}&subdomain=_acme-challenge"

echo "DNS challenge cleaned up."