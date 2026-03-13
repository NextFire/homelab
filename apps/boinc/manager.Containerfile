FROM jlesage/baseimage-gui:ubuntu-24.04-v4.11.2

RUN <<EOF
add-pkg boinc-manager
set-cont-env APP_NAME "BOINC Manager"
EOF

COPY --chmod=+x <<EOF /startapp.sh
#!/bin/sh -xe
export HOME=/config
exec boincmgr
EOF
