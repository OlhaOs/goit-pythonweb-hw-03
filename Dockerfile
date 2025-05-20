# Вказати базовий образ Python 3.13
FROM python:3.13-slim

# Встановити робочий каталог
WORKDIR /app

# Скопіювати залежності
COPY requirements.txt .

# Встановити залежності
RUN pip install --no-cache-dir -r requirements.txt

# Скопіювати увесь код застосунку в контейнер
COPY . .

# Відкрити порт
EXPOSE 3000

# Команда запуску 
CMD ["python", "main.py"]