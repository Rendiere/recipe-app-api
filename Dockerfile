FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt


RUN mkdir /app
WORKDIR /app
COPY ./app /app

# Create a user for running applications
# Done for security - so that app is not run from root
RUN adduser -D user
USER user

