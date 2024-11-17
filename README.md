# linux-bin-scripts
![GitHub repo size](https://img.shields.io/github/repo-size/tonywied17/linux-bin-scripts?style=for-the-badge)
![GitHub language count](https://img.shields.io/github/languages/top/tonywied17/linux-bin-scripts?style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/tonywied17/linux-bin-scripts?style=for-the-badge)

some bin scripts and template files to help automate some tasks for my linux web server

![cloud](https://raw.githubusercontent.com/tonywied17/linux-bin-scripts/refs/heads/main/assets/cloud.png)

## Manage User Accounts and SSL Certificates
```bash
manage-user
```
Management script to add a user and setup apache for that user, renew an ssl certificate, and remove a user and cleanup apache configuration.
![manage-user](https://raw.githubusercontent.com/tonywied17/linux-bin-scripts/refs/heads/main/assets/manage-user.png)
![hosted-webpage](https://raw.githubusercontent.com/tonywied17/linux-bin-scripts/refs/heads/main/assets/manage-user-result.png)

## Manage Daemons
```bash
manage-daemons
```
View running services, restart a running service, stop a running service, and start a running service.
![manage-daemons](https://raw.githubusercontent.com/tonywied17/linux-bin-scripts/refs/heads/main/assets/manage-daemons.png)

## Manage PM2 Instances
```bash
manage-pm2
```
This script will allow you to list pm2 instances for a user, start a pm2 instance, stop a pm2 instance, restart a pm2 instance, delete a pm2 instance, and exit.
![manage-pm2](https://raw.githubusercontent.com/tonywied17/linux-bin-scripts/refs/heads/main/assets/manage-pm2.png)

## Performance Booster
```bash
boost
```
Update package lists, upgrade installed packages, remove unnecessary packages, clean up package cache, clear systemd journal logs older than 7 days, clean up temporary files, optimize file system, display current memory usage, and display disk usage.
![boost 1](https://raw.githubusercontent.com/tonywied17/linux-bin-scripts/refs/heads/main/assets/boost-1.png)
![boost 2](https://raw.githubusercontent.com/tonywied17/linux-bin-scripts/refs/heads/main/assets/boost-2.png)


## Toggle 2 Factor Authentication
```bash
toggle-2fa
```
This will enable/disable 2 factor authentication for ssh on a linux server. It will also disable password authentication and root login, and enable the google authenticator app on the server.
![toggle-2fa](https://raw.githubusercontent.com/tonywied17/linux-bin-scripts/refs/heads/main/assets/toggle-2fa.png)

## Manage Apache Logs
```bash
apache-logs
```
View apache logs, purge unmatched logs that don't have enabled apache configuration anymore, and purge backup logs.
![apache-logs](https://raw.githubusercontent.com/tonywied17/linux-bin-scripts/refs/heads/main/assets/apache-logs.png)

## SymLinks
```bash
symlinks
```
Simply view symbolic links and their target.
![symlinks](https://raw.githubusercontent.com/tonywied17/linux-bin-scripts/refs/heads/main/assets/symlinks-1.png)
