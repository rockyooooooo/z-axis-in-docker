#!/usr/bin/bash

# Exit immediately if any command exits with a non-zero status.
set -e

# clone frontend and backend
if [ ! -d client ]; then
  git clone https://github.com/rockyooooooo/final-project-Z-axis-frontend.git -b dev client
fi
if [ ! -d server ]; then
  git clone https://github.com/rockyooooooo/final-project-Z-axis-backend.git -b dev server
fi

# copy .env file
if [ -f .env.backend ]; then
  cp .env.backend server/.env
else
  cp .env.backend.example server/.env
fi

# run docker-compose
docker-compose up -d --build
echo "Go visit http://localhost:3000"
