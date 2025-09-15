FROM python:3.11-slim
MAINTAINER "diaboudambaba@gmail.com"
RUN apt update -y && apt install python-dev-is-python3 python3-dev libsasl2-dev  libldap2-dev libssl-dev git  pip -y
RUN mkdir /data
VOLUME ["/data"]
COPY requirements.txt student_age.py /
RUN pip3 install -r /requirements.txt
EXPOSE 5000
CMD [ "python3", "./student_age.py"]
