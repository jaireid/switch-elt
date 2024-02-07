# Create a new build stage from a python base image
FROM python:3.8-slim

# Install PostgreSQL command-line tools
RUN apt-get update && apt-get install -y postgresql-client

# Copy files to the image's filesystem
COPY elt_script.py .

# Specify default commands
CMD [ "python", "elt_script.py" ]