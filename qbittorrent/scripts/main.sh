#!/bin/sh -xe
# /config/scripts/main.sh "%N" "%L" "%G" "%F" "%R" "%D" "%C" "%Z" "%T" "%I" "%J" "%K"
# N=$1    # Torrent name
# L=$2    # Category
# G=$3    # Tags (separated by comma)
# F=$4    # Content path (same as root path for multifile torrent)
# R=$5    # Root path (first torrent subdirectory path)
# D=$6    # Save path
# C=$7    # Number of files
# Z=$8    # Torrent size (bytes)
# T=$9    # Current tracker
# I=${10} # Info hash v1
# J=${11} # Info hash v2
# K=${12} # Torrent ID

/config/scripts/renamer.py "$@"
