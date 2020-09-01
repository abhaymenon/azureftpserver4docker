FROM python:3.6-slim

COPY . /app/
WORKDIR /app/
RUN pip install -r requirements.txt
RUN mkdir /ftp_root

EXPOSE 21

ENTRYPOINT python -u startup.py