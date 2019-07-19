#!/bin/bash
nohup celery -A task worker --loglevel=info -Q queue0 -n queue0 &
nohup celery -A task worker --loglevel=info -Q queue1 -n queue1 &
nohup celery -A task worker --loglevel=info -Q queue2 -n queue2 &
nohup celery -A task worker --loglevel=info -Q queue3 -n queue3 &
nohup celery -A task worker --loglevel=info -n main &
nohup python3 main.py &