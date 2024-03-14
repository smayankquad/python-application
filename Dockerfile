# Use official Python image as base
FROM python:3.9

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . /code/

# Expose port 8000
EXPOSE 8000

RUN python setup.py

# Run migrations and start the server
CMD python manage.py makemigrations && python manage.py migrate && python manage.py runserver 0.0.0.0:8000