#!/usr/bin/bash

set -e

git clone https://github.com/rockyooooooo/final-project-Z-axis-frontend.git -b dev client
git clone https://github.com/rockyooooooo/final-project-Z-axis-backend.git -b dev server
docker-compose up -d