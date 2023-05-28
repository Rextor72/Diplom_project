# Указываем базовый образ, который будем использовать
FROM python:3.9-alpine

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы зависимостей проекта
COPY . .

# Устанавливаем зависимости приложения
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install Flask-SQLAlchemy

# Запускаем приложение при старте контейнера
CMD ["python", "app.py"]