# Image Node officielle
FROM node:20

# Copier tout le projet dans le conteneur
COPY myExpressApp /usr/src/app

# Définir le dossier de travail dans le conteneur
WORKDIR /usr/src/app

# Installer les dépendances
RUN npm install

# Exposer le port sur lequel l'app écoute
EXPOSE 80

# Démarrer le serveur
CMD ["node", "bin/www"]
