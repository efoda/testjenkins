#############################################
# Dockerfile to build the unittest container
#############################################

# Base image is python
FROM python:latest

# Author: Dr. Peter
MAINTAINER Dr. Peter <peterindia@gmail.com>

# Install redis driver for python and the redis mock
RUN pip install redis && pip install mockredispy


# Make unittest as the default execution
ENTRYPOINT python3 -m unittest

