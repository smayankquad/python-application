from django.contrib.auth.models import Group, User
from accounts.models import Employee

def run():
    # Create groups
    Group.objects.create(name='admin')
    Group.objects.create(name='manager')
    Group.objects.create(name='receptionist')
    Group.objects.create(name='staff')
    Group.objects.create(name='guest')

    # Create admin user
    user = User.objects.create_user('admin', password='1234')
    group = Group.objects.get(name="admin")
    user.groups.add(group)

    # Create admin employee
    admin = Employee(user=user, salary=0)
    admin.save()