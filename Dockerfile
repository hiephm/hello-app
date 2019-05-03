FROM python:3.6-slim

RUN pip install flask

WORKDIR /app

COPY app.py /app/

ENTRYPOINT ["python"]

CMD ["app.py"]