# choix de l'image ( php avec apache préinstallé) 
FROM php:8.2-apache

# Définir le répertoire de travail sur le répertoire /var/www/html
WORKDIR /var/www/html

# Copier index.php et le mettre à la racine qui est maintenant /var/www/html
COPY ./src .

# Exposer le port 8081 explicitement
EXPOSE 8080

# Donner les permissions à www-data:www-data d'executer tous les fichiers de /var/www/html car apache utilise cet utilisateur et pas un autre.
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html