FROM python:3.8
COPY requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt
EXPOSE 5000
WORKDIR /app
COPY . /app
ENTRYPOINT gunicorn main:app --reload --bind 0.0.0.0:5000 --workers 4 --threads 8 --timeout 0 --capture-output --enable-stdio-inheritance