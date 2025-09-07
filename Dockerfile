FROM node:20

WORKDIR /usr/src/app

# Copier le projet
COPY myExpressApp/ ./myExpressApp

# Installer les dépendances
RUN npm install --prefix myExpressApp

# Exposer le port
EXPOSE 3000

# Démarrer le serveur via bin/www
CMD ["node", "myExpressApp/bin/www"]
