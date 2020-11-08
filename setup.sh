FROM tiangolo/uwsgi-nginx-flask:python3.8

WORKDIR /app/

COPY requirements.txt /app/
RUN pip install -r ./requirements.txt

ENV ENVIRONMENT production

COPY app.py /app/
