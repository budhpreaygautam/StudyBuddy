FROM python:3

WORKDIR /data

RUN pip install django==3.2
RUN pip install djangorestframework

RUN pip install django-cors-headers
RUN pip install Pillow
COPY . .
RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]
