#!/bin/bash

set -ex

python3 -m pip install -r requirements.txt

python3 deploy_gh_pages.py