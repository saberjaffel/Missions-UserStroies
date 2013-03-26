#language : fr

#userStory : admin-us-1
#sprint : sprint-1
#release : 1.0
#estimation : 13 pts

#observation 1 : Un utilisateur est unique par son "Email"
#observation 2 : L'Email est sous la forme Prenom.Nom@missions.local

Fonctionnalité: Création d'un nouveau utilisateur
   Afin de pouvoir ajouter un utilisateur
   En tant qu' administrateur
   Je dois être capable de créer un nouveau utilisateur ayant le profil "manager" ou "collaborateur".


   Contexte:
     Etant donné que j'ai déjà créer les utilisateurs suivant:
      | Nom      | Prénom        | Profil         | Email                                |
      |----------|---------------|----------------|--------------------------------------|
      | User0Nom | User0Prenom   | Administrateur | User0Prenom.User0Nom@missions.local  |
      | User1Nom | User1Prenom   | Manager        | User1Prenom.User1Nom@missions.local  |
      | User2Nom | User2Prenom   | Collaborateur  | User2Prenom.User2Nom@missions.local  |


   Scénario: Création d'un nouvel manager
     Etant donné que je suis dans la page "/user/manager/new"
     Quand je remplis le champs "lastname"
     Et je remplis le champs "firstname"
     Et je séléctionne un service depuis la liste à choix unique "service"
     Et je remplis le champs "email" par <Email>
     Et je remplis le champs "password"
     Et je remplis le champs "password_confirm"
     Alors je dois obtenir le message <Message>

     Examples:
       | Email                               | Message                                                   |
       |-------------------------------------|-----------------------------------------------------------|
       | User3Prenom.User3Nom@missions.local | Un nouveau manager est crée avec succès.                  |
       | User1Prenom.User1Nom@missions.local | Echec. Un manager possédant cet email est déjà existant ! |