# Pire2Pire.com-Conception-BDD-avec-MERISE

Votre mission est de concevoir la base de données d’une plateforme de formation en ligne nommée pire2pire.com à l'aide de la méthode MERISE.

# Definition de Merise

La méthode Merise (Méthode d'étude et de réalisation informatique pour les systèmes d'entreprise) est née à la fin des années 1970 en France, avec pour objectif de définir une démarche de conception de S.I. Le principe de base repose sur la séparation des données et des traitements. L'organisation des données semble plus pérenne que la définition des traitements, qui évolue en fonction de l'évolution des métiers, des fonctions et des utilisateurs.

# Règles de gestion

- Un apprenant est caractérisé par un code d'inscription unique (UUID), un nom, un prénom, une adresse, une date de naissance.
- Un formateur est caractérisé par un code unique (auto-incrément), un nom, un prénom.
- Un module est caractérisé par un numéro en Sémantique Versionning, un intitulé, un objectif pédagogique, un contenu (un texte et/ou une image et/ou une vidéo), une durée (heures), un ou plusieurs tags, un auteur (formateur).
- Une formation est un nom.
- Un module contient un ou plusieurs contenus et un contenu à un seul module.
- Un module contient un ou plusieurs tags et un tag à un plusieurs module.
- Un module peut concerner un ou plusieurs formations et une formation à un ou plusieurs module.
- Une formation est organisé par un seul formateur et un formateur organise une à plusieurs formations.
- Un formateur peut être auteur d'un ou plusieurs modules et un module est écris par un seul formateur.
- Un apprenant peut s'inscrire à un ou plusieurs formations et une formation à un ou plusieurs apprenants.
- Un apprenant est évaluer pour un ou plusieurs modules (avec un état de fin de module: OK / KO) et un module est évaluer par zéro ou plusieurs apprenants.
