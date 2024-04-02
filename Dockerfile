FROM python:3.12.2

WORKDIR /app

COPY requirements.txt /app

RUN pip install -r requirements.txt

COPY . /app

CMD ["uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8080"]