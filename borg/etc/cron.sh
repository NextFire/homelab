#!/bin/sh -xe
borgmatic --verbosity 1 --list --stats
apk add rclone   # I'm lazy
rclone sync /mnt/borg-repository $BORG_REPO_REMOTE -P --transfers 25 --checkers 50
