FROM python:rc-slim

# Declarando a váriavel do nome 

WORKDIR /app

COPY . /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
CMD ["gunicorn", "app:app"]
