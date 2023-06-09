# Встановлюємо базовий образ
FROM node:14-alpine

# Встановлюємо директорію робочої зони
WORKDIR /.

# Копіюємо файли залежностей та package.json
COPY package*.json ./

# Встановлюємо залежності
RUN npm install

# Копіюємо всі файли проекту
COPY . .

# Запускаємо збірку проекту
RUN npm run build

# Вказуємо команду для запуску сервера
CMD [ "npm", "start" ]