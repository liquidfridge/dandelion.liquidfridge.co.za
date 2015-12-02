# dandelion.liquidfridge.co.za



## Features

The bulk of the Drupal configuration, e.g. permissions, is stored in code in the `dandelion_features` module. A few system variables differ between the development and production servers, e.g. site name. These are configured on the production server directly.

### Development

After changing the configuration via the administration pages, run the following to save the configuration to code and push to remote repository:

```
cd /ops && bash ops.sh features-export
cd /path/to/sites/all/modules/dandelion_features
git commit -a -m "Commit message here"
git push
```

### Production

To deploy the updated configuration, run:

```
cd /ops && bash ops.sh update-contrib dandelion_features
```

If changes were made on the production server (not recommended), that override those set by `dandelion_features`, then run from Drupal root:

```
drush fr dandelion_features
```



## Usage

Unban an IP address:

```
mysql -u root -p
use $DATABASE
delete from blocked_ips where ip = '$IP';
delete from login_security_track where host = '$IP';
```



## Backup with cron

Create `/path/to/ops/cron-daily.sh`:

```
#!/usr/bin/env bash

cd /path/to/ops && bash ops.sh duplicity-cleanup && bash ops.sh backup && bash ops.sh cleanup && bash ops.sh duplicity-backup-full
```

`crontab -e` and add:

```
0 1 * * * /path/to/ops/cron-daily.sh
```



## Backup with git

A single-page version of the notes at `http://dandelion.liquidfridge.co.za/book/export/html/%nid` is mirrored to a git repository `https://github.com/liquidfridge/dandelion-notes`

Initialize the local repository on the production server:

```
cd /path/to/ops && bash ops.sh notes-init
```

Create `/path/to/ops/cron-notes.sh`:

```
#!/usr/bin/env bash

cd /path/to/ops && bash ops.sh notes-push
```

`crontab -e` and add, e.g. to run every 5 minutes:

```
*/5 * * * * /path/to/ops/cron-notes.sh
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
G_DRUPAL_ADMIN_USER=""                                  # Admin username (do not use "admin")
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

G_GIT_AUTHOR_NAME=""                                    # Name of author of git commits
G_GIT_AUTHOR_EMAIL=""                                   # Email of author of git commits

G_NOTES_ROOT=""                                         # Parent directory of local repo
G_NOTES_REPO_URL=""                                     # SSH URL of remote repo
G_NOTES_REPO_NAME="dandelion-notes"                     # Name of repo
G_NOTES_EXPORT_URL=""                                   # URL to download and save to repo

G_ETHERPAD_ROOT=""                                      # Etherpad root directory
```



## Installation

If using remote backups, install dependencies (Debian, Ubuntu):

```
apt-get install duplicity ncftp python-paramiko python-gobject-2
```

Run install:

```
cd /ops && bash ops.sh install
```
