#!/bin/bash

echo "Starting Django shell..."
# Start the Django shell
python manage.py makemigrations
python manage.py migrate

echo "Script execution completed."
