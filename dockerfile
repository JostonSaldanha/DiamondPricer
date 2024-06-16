# From python:3.8

# WORKDIR /myapp

# COPY . /app


# RUN pip install -r /app/requirements.txt

# CMD ["python","app.py"]
# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /myapp

# Copy the current directory contents into the container at /myapp
COPY . /myapp

# Install any needed packages specified in requirements.txt
RUN pip install -r /myapp/requirements.txt

# Run the Flask application
CMD ["python", "app.py"]
