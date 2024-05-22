# Используем официальный образ Python
FROM python:3.10-slim

# Устанавливаем зависимости
RUN pip install --upgrade pip
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

# Копируем исходный код
COPY . /app

# Устанавливаем рабочую директорию
WORKDIR /app

# Открываем порт
EXPOSE 8000

# Запуск приложения
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
