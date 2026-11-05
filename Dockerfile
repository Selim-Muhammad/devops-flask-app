FROM python:3.14-slim

WORKDIR /app

COPY hello.py .

RUN pip install --no-cache-dir flask redis

EXPOSE 5000

CMD ["flask", "--app", "hello", "run", "--host=0.0.0.0"]
