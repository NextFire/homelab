FROM heywoodlh/nfs-server:latest

RUN apk add --no-cache supervisor fuse3

RUN apk add --no-cache --virtual rclone-install curl bash unzip && \
    curl https://rclone.org/install.sh | bash && \
    apk del rclone-install

RUN mkdir -p /mnt/export

COPY supervisord.conf /etc/supervisord.conf
COPY rclone.sh /rclone/rclone.sh

ENV NFS_EXPORT_0="/mnt/export   *(rw,sync,no_subtree_check,crossmnt,fsid=0,insecure)"

ENTRYPOINT [ "/usr/bin/supervisord", "-c", "/etc/supervisord.conf" ]

VOLUME [ "/cache" ]
