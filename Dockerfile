FROM python:stretch
ADD *.py *.pyc /app/
ADD requirements.txt /app/
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["gunicorn", "-b", ":8080", "main:APP"]
