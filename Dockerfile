FROM python:3
WORKDIR /app
COPY Src/requirements.txt /app
RUN pip install -r requirements.txt
COPY Src/* /app

EXPOSE 5000
CMD ["python", "app.py"]
