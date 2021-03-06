FROM python:3.8-buster

WORKDIR /app

ADD requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

ADD *.py /app/

CMD ["python", "-u", "office_status_indicator.py"]
