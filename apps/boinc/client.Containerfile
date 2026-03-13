FROM boinc/client:arm64v8@sha256:2031746369792456c0cb03809a4f10d019c516504e23b1ccb649ba518261e0b4

RUN <<EOF
apt update
apt install -y libzip-dev
ln -s libzip.so /lib/aarch64-linux-gnu/libzip.so.4
rm -rf /var/lib/apt/lists/*
EOF
