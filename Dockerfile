# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

ENV CLIENT_ID 230182039712.234204688484
ENV CLIENT_SECRET 2c369935c56fc21c61736adef4588122
ENV VERIFICATION_TOKEN dLz44aBk47nY0ba9LxawraFE

# Run app.py when the container launches
CMD ["python", "app.py"]
