#!/bin/sh

echo "Starting Application"

# export FLASK_APP=webapp.py
# python3 -m flask run

gunicorn --bind 0.0.0.0:5000 wsgi:app
