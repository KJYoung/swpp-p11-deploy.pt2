#!/bin/bash

# TODO: Write automation script for launching BE app
python manage.py makemigrations 
python manage.py migrate
uwsgi \
    --module=toh.wsgi:application \
    --wsgi-file toh/wsgi.py \
    --http :8000