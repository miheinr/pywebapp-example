#!/bin/sh

# export FLASK_APP=webapp.py
# python3 -m flask run

# recommended amount of workers for gunicorn is (2*num_cores + 1)
WORKERS=`python3 -c 'from multiprocessing import cpu_count; print(2*cpu_count() + 1)'`

gunicorn --bind 0.0.0.0:8080 --workers $WORKERS wsgi:app
