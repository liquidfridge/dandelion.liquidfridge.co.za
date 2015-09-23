# dandelion.liquidfridge.co.za



## Configuration

Create configuration file `/ops/ops.conf` with:

```
#!/usr/bin/env bash

G_USER=""                                               # User
G_GROUP=""                                              # Group
G_UID=""                                                # User ID
G_GID=""                                                # Group ID

G_MODE="prod"                                           # Mode: dev, prod, host

G_MYSQL_HOST=""                                         # MySQL host
G_MYSQL_PORT=""                                         # MySQL port
G_MYSQL_USER=""                                         # MySQL username
G_MYSQL_PASS=""                                         # MySQL password
G_MYSQL_DB=""                                           # MySQL database
G_MYSQL_DATA_DIR="/var/lib/mysql"                       # Directory with MySQL data

G_PUBLIC_ROOT="${HOME}/public_html"

G_DRUPAL_ROOT="${G_PUBLIC_ROOT}/drupal"                 # Drupal installation directory
G_DRUPAL_PROFILE="dandelion_standard"                   # Installation profile name
G_DRUPAL_SITE_NAME=""                                   # Site name
G_DRUPAL_SITE_MAIL=""                                   # Site email
G_DRUPAL_ADMIN_USER=""                                  # Admin username
G_DRUPAL_ADMIN_PASS=""                                  # Admin password
G_DRUPAL_ADMIN_MAIL=""                                  # Admin email

G_BACKUP_ROOT="${HOME}/ops/backups"                     # Backup directory
```



## Installation

Run install:

```/ops/ops.sh install```
