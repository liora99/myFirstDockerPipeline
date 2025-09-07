FROM node:18-alpine

# Créer le dossier de travail
WORKDIR /usr/src/app

# Copier package.json et package-lock.json
COPY package*.json ./myExpressApp/

# Installer les dépendances
RUN npm install --prefix myExpressApp

# Copier tout le code
COPY . .

# Exposer le port (Azure utilisera PORT de l'environnement)
ENV PORT=8080
EXPOSE 8080

# Lancer le serveur depuis le bon dossier
CMD ["node", "myExpressApp/bin/www"]
