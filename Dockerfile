#FROM mcr.microsoft.com/appsvc/node:10-lts

#ENV HOST 0.0.0.0
#ENV PORT 8080
#EXPOSE 8080

#ENTRYPOINT ["pm2", "start", "--no-daemon", "/opt/startup/default-static-site.js"]


# Image officielle Node.js récente
FROM node:18-alpine

# Créer le dossier de travail
WORKDIR /usr/src/app

# Copier package.json et package-lock.json
COPY package*.json ./

# Copier tout le code
COPY . .

# Exposer le port utilisé par ton app
EXPOSE 3000

# Lancer le serveur
CMD ["node", "bin/www"]


