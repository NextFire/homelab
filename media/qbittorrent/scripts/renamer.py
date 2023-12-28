#!/usr/bin/env python3

import json
import re
import sys
from pathlib import Path

F = Path(sys.argv[4])

if F.is_file():
    with open('/config/scripts/renamer.json') as f:
        series = json.load(f)
    for s in series:
        if re.search(s['match'], F.name, re.IGNORECASE):
            episode = re.search(s['capture'], F.name, re.IGNORECASE).group(1)
            episode = int(episode) + int(s['offset'])
            F.rename(F.parent / f"{episode:02}{F.suffix}")
            break
