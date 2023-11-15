# Using the Python runtime as a parent image
FROM python:3.8

# Set the working directory to /app
WORKDIR .

# Copy the current directory contents into the container at /app
COPY . .
COPY tests/. tests/.

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Run tests when the container launches
CMD ["pytest"]
