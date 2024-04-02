FROM python:3.12.2

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

CMD ["uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8080"]