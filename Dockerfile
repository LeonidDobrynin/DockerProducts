FROM python:3.9

COPY ./requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt
COPY . /src
EXPOSE 8000
WORKDIR /src
RUN python manage.py migrate
ENTRYPOINT ["python", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
