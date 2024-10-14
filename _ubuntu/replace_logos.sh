#!/bin/bash

# Replace logos in Overseerr Snap/Read-Only filesystem
mkdir -p /var/snap/overseerr/custom_assets/
mount --bind /var/snap/overseerr/custom_assets/logo_full.svg /snap/overseerr/current/public/logo_full.svg
mount --bind /var/snap/overseerr/custom_assets/logo_stacked.svg /snap/overseerr/current/public/logo_stacked.svg