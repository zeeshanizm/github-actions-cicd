FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir "Flask>=3.0,<4"
COPY app/ ./app/
RUN useradd --create-home appuser
USER appuser
EXPOSE 8080
CMD ["python", "-m", "app.main"]
