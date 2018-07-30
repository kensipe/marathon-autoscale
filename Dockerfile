FROM python:3-alpine
ADD /requirements.txt /marathon-autoscale/
WORKDIR /marathon-autoscale
RUN apk add --update --virtual .build-dependencies openssl-dev libffi-dev python-dev make gcc g++
RUN pip install -r requirements.txt
ADD /marathon_autoscaler.py /marathon-autoscale/
CMD python marathon_autoscaler.py
