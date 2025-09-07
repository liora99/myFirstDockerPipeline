# Étape 1 : choisir l'image Node
FROM node:20

# Étape 2 : définir le répertoire de travail
WORKDIR /usr/src/app

# Étape 3 : copier le dossier de l'application
COPY myExpressApp/ ./myExpressApp

# Étape 4 : installer les dépendances
RUN npm install --prefix myExpressApp

# Étape 5 : copier le reste du code si nécessaire
# COPY . .

# Étape 6 : exposer le port et définir la commande
EXPOSE 3000
CMD ["node", "myExpressApp/app.js"]
