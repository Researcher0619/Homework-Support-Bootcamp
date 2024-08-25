# Node.js tabanlı bir Docker imajı kullanıyoruz
FROM node:16-alpine

# Uygulama için bir dizin oluşturuyoruz
WORKDIR /app

# Paketleri yüklemek için package.json ve package-lock.json dosyalarını kopyalıyoruz
COPY package*.json ./

# Bağımlılıkları kuruyoruz
RUN npm install

# Uygulama dosyalarını kopyalıyoruz
COPY . .

# Uygulamayı 3000 portunda çalıştıracağız
EXPOSE 3000

# Uygulamayı başlatıyoruz
CMD ["node", "index.js"]
