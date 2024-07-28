#!/bin/sh -x

WG_IF=japanet7
TIMEOUT=3
REPO=/var/tmp/nanak8s

PEERS=$(wg show $WG_IF allowed-ips | awk '{print $2}' | sed 's/\/.*//g' | sort -n -t . -k 1,1 -k 2,2 -k 3,3 -k 4,4)

for PEER in $PEERS; do
    curl -I --connect-timeout $TIMEOUT $PEER:3900 && VALID_PEERS="$VALID_PEERS \"$PEER\""
done
VALID_PEERS=$(echo $VALID_PEERS | sed 's/ /,/g')

git clone git@github.com:Japan7/nanak8s.git $REPO
git -C $REPO fetch
git -C $REPO reset --hard origin/main

yq -i "(.environments.default.values[] | select(has(\"garage\"))).garage.addresses = [$VALID_PEERS]" $REPO/apps/garage/environments.yaml
git -C $REPO add apps/garage/environments.yaml
git -C $REPO commit -m "[garage] update addresses" --author 'camp.yuru.moe[bot] <camp@yuru.moe>'
git -C $REPO push
