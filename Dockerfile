# Використовуємо офіційний образ Node.js версії 16 на базі Alpine Linux
FROM node:16-alpine

# Встановлюємо змінну середовища для робочої директорії
WORKDIR /app

# Встановлюємо змінну середовища для збереження NODE_ENV у значенні production
ENV NODE_ENV=production

# Копіюємо файли package.json та package-lock.json в контейнер
COPY package*.json ./

# Встановлюємо залежності
RUN npm install

# Копіюємо решту файлів проекту в контейнер
COPY . .

# Вказуємо порт, на якому працює телеграм-бот
EXPOSE 3000

# Запускаємо команду для запуску додатку
CMD [ "npm", "start" ]

