
# Lecoincoin Amine Aboutaj // Youssef Oulouda

# Versions
Version de Grails : 3.3.8

Java : OpenJDK 1.8

# Presentation de Projet:

Contexte:Lecoincoin est une société familiale qui existe depuis 1940, elle est gérée par Mr Gerard
Lecoincoin et Mme Mathilde Lecoincoin.
Lecoincoin est une entreprise de dépôt vente touchant à tout ce qui peut se vendre ou
s’acheter.
Lecoincoin a raté le tournant du numérique, il y a quelques décennies et aimerait vraiment
pouvoir avoir une présence en ligne pour diffuser ses annonces.

Besoins fonctionnels
● Authentification
● Créer / Visualiser / Mettre à jour / Supprimer
● Des annonces (avec upload d’illustrations)
● Des utilisateurs
## Senario
Mme Mathilde Lecoincoin n’était pas à l’aise avec l’outil informatique, n’aura qu’un rôle de modérateur pour ne pas risquer de causer trop de dégâts.  Dates importantes Lecoincoin fêtera ses 80 ans le dimanche suivant la fin de votre cours (à minuit) ! Il faut donc impérativement que tous les éléments demandés soient livrés pour cette date ! Objectifs Réaliser une plateforme complète avec plusieurs modes de consultation :
● Un backend devra être réalisé pour permettre à Mr Lecoincoin d’administrer les annonces, les modifier, les supprimer et même en créer !
● Un frontend devra être réalisé pour permettre à monsieur tout le monde de profiter de ces annonces exceptionnelles  
● Une API REST devra être réalisée, car Mr Lecoincoin est ambitieux et il aimerait vraiment avoir une application mobile dans un futur proche.

● Les comptes utilisateurs pourront avoir 3 rôles différents :
○ ADMIN
○ MODERATOR
○ CLIENT
● L’administrateur et le modérateur pourront tous deux accéder au backend

● Des utilisateurs (User) qui seront liés à des rôles (Role) pour la sécurité, le modèle de données permettra de gérer des annonces et leurs illustrations

● Les opérations de CRUD sur les entités représentant :
○ Les utilisateurs
○ Les annonces
○ Les illustrations

● Les Utilisateurs:
L'utilisateur avec le role adminstrateur(admin) a tous les droits d'accées .
○ Liste des utilisateurs : Cette partie permet d'afficher tous les utilisateurs
qui se trouve dans notre site.
○ Crée un nouvel utilisateur : Cette page permet a l'Administrateur de cree un nouvel utilisateur
avec ses propres informations et d'ajouter des utilisateurs Editées
○ un utilisateur : l'Administrateur a le droit de modifier les informations
des utilisateurs .
○ Supprimer un utilisteur : l'Administrateur a le droit de supprimer des utilisateurs.

● Les Annonces:
L'utilisateur avec le role user(moderateur) a tous les droits d'accées .
○ Liste des Annonces : Cette partie permet d'afficher tous les annonces
qui se trouve dans notre site avec ses illustrations.
○ Crée une nouvelle Annonce : Cette page permet a l'Administrateur de cree une nouvelle annonce
avec ses propres informations et d'ajouter des illustrations Editées
○ une Annonce : l'Administrateur a le droit de modifier les informations
des annonces .
○ Supprimer une Annonce : l'Administrateur a le droit de supprimer des annonces.

● Les illustrations :
○ Liste des illustrations :
Cette partie permet d'afficher tous les illustration qui se trouve dans notre site.
○ Crée une nouvelle illustration :
Cette page permet a luser(moderateur) de cree une nouvelle illustration avec ses propres informations.
○ Editée une illustration :
user(moderateur) a le droit de modifier les informations des illustrations .
○ Supprimer une illustration :
user(moderateur) peut supprimer une illustration ou plusieurs



