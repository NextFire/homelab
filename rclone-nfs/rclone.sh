#!/bin/sh -xe

rclone \
    --verbose \
    --config=/config/rclone/rclone.conf \
    --cache-dir=/cache \
    mount $RCLONE_REMOTE /mnt/export \
    --vfs-cache-mode writes \
    --allow-other \
    $RCLONE_OPTS
