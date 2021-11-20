![img](https://i.imgur.com/arGGMZB.png)

Mauvaise utilisation, IconToggle ne convenait pas ici, une checkbox est plus adaptée.

//

La database firestore ne semble pas prendre les 0 en début d'int, le mdp est en clair:

![img](https://i.imgur.com/0yZpPQk.png)

indice: https://firebaseopensource.com/projects/firebase/scrypt/ 

Solution : Le mdp est déjà crypté et enregistré par google, il n'a pas besoin d'être enregistré en bdd.
Exemple: 0789654321 pour un numéro de téléphone donne 789 654 321 comme chiffre donc logique que le 0 n'apparaisse pas.
Les éléments de type int passés en string font correctement apparaitre les 0 en début.

//

La checkbox n'est pas comprise dans une condition de validation d'un processus.

//

Le passage de data ne se fait pas.

Solution: https://www.youtube.com/watch?v=p1rHEj_Tc3Y

//

Test d'authentification avec checkbox et nouvelles données; tout était cassé, les données ne venaient que partiellement à la bdd. Soit c'est le tabarnak de checkbox qui faisait bugger soit quand les données ont été changées en bdd il faut tout réécrire et réassigner toutes les consignes de textfield et de validation.
Dans le doute et vu que c'est actuellement (17/11/21 4:59) fonctionnelle, la checkbox est punie au coin.

//

L'Update Record pour "Disponibilite" ne me proposait pas de prendre la valeur correcte du TextField comme référence et me renvoie un format incorrecte.
![img](https://i.imgur.com/Y3K04O6.png)

Solution: Erreur de saisis dans FlutterFlow, direction FireStore
![img](https://i.imgur.com/yXVTuZV.png)
Le Field Type doit être un élément simple et non une liste.

//

La page profil seconde partie a de l'espace entre les cards.
Après vérification de tout les paddings possible et rien trouvé j'en déduit que les cards ont un padding naturel.

Solution: Mettre des containers à la place des cards qui ne comportent pas ce problème.

//

Limage uploaded en bdd ne s'affiche pas dans le container qui l'appel.
Edit: l'image est bien uploaded et ajouté ou remplacé à la variable; "photo_url" dans la bdd, mais elle n'apparait pas, à la place avec un zoom intensif l'erreur; "failed to decode image data".

Apparait sous Android Emulator, je pense que lochalost doit faire blocage.

//

Je ne peux pas tester mon projet sur l'émulateur de flutterflow vu qu'il ne fonctionne plus depuis 2 jours.
J'ai testé d'autre projet ça fonctionne ce n'est qu'avec "Side", le projet est peut être devenu trop volumineux pour FlutterFlow, un problème de compilation paraîtrait étonnant puisque que c'est FF qui le compile lui-même.

//

Il n'y a pas d'option pour supprimer un compte mais seulement supprimer les données de la db de l'utilisateur, donc il pourra toujours se connecter et toute les datas et les constantes qui sont en liens avec son profil d'utilisateurs seront retournées vide.

Indice: https://community.flutterflow.io/c/discuss-and-get-help/delete-user-account-with-the-delete-user-data-extension

//

Avec une requête querry je peux "count" le nombre d'élément dans une liste, mais je ne parviens pas à count les éléments à l'intérieur d'un élément d'une liste.

//

La tabBar sans élément contenant (si on veut rajouter quelque chose au dessus de la page par exemple) fait bugger l'application.

//

L'app freeze et refuse de répondre si on essaye de manipuler une TabBar et plus précisément les éléments TabBar Page qui la compose depuis le Widget Tree, il faut naviguer par Active Tab présente dans TabBar pour éviter les problèmes.

//

Upload CV ne fait pas partis des fonctionnalités de flutterflow et je ne sais pas trop comment stocker des documents dans firebase.

MAJ: A explorer: https://fireship.io/lessons/flutter-file-uploads-cloud-storage/

//



















