#!/bin/bash

echo "Starting Django shell..."
# Start the Django shell
python manage.py shell << EOF
# Import necessary modules
from django.contrib.auth.models import Group, User
from accounts.models import Employee

# Create groups
print("Creating groups...")
Group.objects.create(name='admin')
Group.objects.create(name='manager')
Group.objects.create(name='receptionist')
Group.objects.create(name='staff')
Group.objects.create(name='guest')

# Create a user
print("Creating user...")
user = User.objects.create_user('admin', password='1234')

# Add the user to the admin group
print("Adding user to admin group...")
group = Group.objects.get(name="admin")
user.groups.add(group)

# Create an Employee instance
print("Creating Employee instance...")
admin = Employee(user=user, salary=0)
admin.save()

print("Python commands execution completed.")
EOF

echo "Script execution completed."
