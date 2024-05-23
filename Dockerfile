# Dockerfile
FROM node:21.4.0-alpine

# กำหนด Working Directory
WORKDIR /app

# คัดลอก package.json และ package-lock.json
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอกไฟล์ทั้งหมดในโปรเจค
COPY . .

# สร้าง production build
RUN npm run build

# เปิดพอร์ต 3000
EXPOSE 3000

# รันแอปพลิเคชัน
CMD ["npm", "start"]