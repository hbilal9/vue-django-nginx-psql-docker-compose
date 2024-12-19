FROM python:3.12-alpine

# Set environment variables (adjust as needed)
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE core.settings

# Create and set the working directory in the container
WORKDIR /core

# Copy the requirements file into the container
COPY requirements.txt .

# Update the package list and install dependencies
RUN apk update && apk add --no-cache gcc musl-dev libffi-dev

# Install dependencies using pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port your Django application will run on (adjust as needed)
EXPOSE 8000

# RUN python manage.py migrate

# RUN python manage.py createsuperuser admin admin@gmail.com password

# Command to start the Django development server
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

# Command to start Uvicorn ASGI server
# CMD ["uvicorn", "core.asgi:application", "--host", "0.0.0.0", "--port", "8000"]
