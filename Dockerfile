FROM python:3.9-slim

WORKDIR /app
COPY . .

RUN chmod +x bgmi
RUN pip install -r requirements.txt

CMD ["gunicorn", "--bind", "0.0.0.0:$PORT", "api:app"]