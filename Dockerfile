FROM python:3.8-alpine
MAINTAINER saichaitanya2288 <saichaitanya2288@gmail.com>

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY . .

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
