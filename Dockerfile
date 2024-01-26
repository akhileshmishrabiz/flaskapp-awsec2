FROM python:3
WORKDIR /app
COPY src/requirements.txt /app
RUN pip install -r requirements.txt
COPY src/* /app

EXPOSE 5000
CMD ["python", "app.py"]
