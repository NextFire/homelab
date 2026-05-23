FROM jlesage/baseimage-gui:debian-13-v4.12.1

RUN <<EOF
add-pkg boinc-manager
set-cont-env APP_NAME "BOINC Manager"
EOF

COPY --chmod=+x <<EOF /startapp.sh
#!/bin/sh -xe
export HOME=/config
exec boincmgr
EOF
