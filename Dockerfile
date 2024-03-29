# Gunakan base image Node.js
FROM node:latest

# Set folder kerja di dalam container
WORKDIR /app

# Salin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Instal dependensi aplikasi
RUN npm install

# Salin semua file proyek ke dalam container
COPY . .

# Port yang akan digunakan oleh aplikasi
EXPOSE 5000

# Perintah untuk menjalankan aplikasi
CMD ["npm", "start"]