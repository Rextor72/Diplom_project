FROM python:3.9-alpine

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install Flask-SQLAlchemy


CMD ["python", "app.py"]