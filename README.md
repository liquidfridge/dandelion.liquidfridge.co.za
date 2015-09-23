# dandelion.liquidfridge.co.za



## Usage

Perform full Drupal backup and copy to remote destination:

```
cd /ops && bash ops.sh backup && bash ops.sh duplicity-backup-full
```



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
G_BACKUP_NOTIFY=0                                       # Send email notification

G_DUPLICITY_RESTORE_ROOT="${HOME}/ops/restore"          # Restore directory for remote backups
G_DUPLICITY_RETAIN_FULL=2                               # Number of full remote backups to retain
G_DUPLICITY_RETAIN_INCR=2                               # Number of incremental remote backups to retain
G_DUPLICITY_TARGET_URL=""                               # Destination of remote backups: ftp://user@host:port/path/to/dir
G_DUPLICITY_FTP_PASSWORD=""                             # FTP password for remote backups
G_DUPLICITY_FTP_MODE="passive"                          # FTP mode for remote backups: active, passive

G_NOTIFY_FROM=""                                        # Notification from email address
G_NOTIFY_TO=""                                          # Notification to email address
```



## Installation

If using remote backups, install dependencies (Debian, Ubuntu):

```
apt-get install duplicity ncftp python-paramiko python-gobject-2
```

Run install:

```/ops/ops.sh install```
