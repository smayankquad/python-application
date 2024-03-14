# python-application
python-application CI-CD

Steps to run the code

Install Django and Apps:

1 pip install Django==3.1.4
2 pip install django-phonenumber-field[phonenumbers]

Needed to create roles and admin account to add new employee accounts
Change Directory to Django---Hotel-Management-System/HMS and start the Shell:

3 python manage.py shell

Then execute these, one by one:

4 from django.contrib.auth.models import Group, User

5 from accounts.models import Employee

6 Group.objects.create(name='admin')

7 Group.objects.create(name='manager')

8 Group.objects.create(name='receptionist')

9 Group.objects.create(name='staff')

10 Group.objects.create(name='guest')

11 user = User.createuser=User.objects.create_user('admin', password='1234')

12 group = Group.objects.get(name="admin")

13 user.groups.add(group)

14 admin = Employee(user=user, salary=0)

15 admin.save()

Finally:

Exit the shell and set the database:

16 python manage.py makemigrations
17 python manage.py migrate

Then, start the surver

python manage.py runserver
