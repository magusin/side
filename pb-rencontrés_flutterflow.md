![img](https://i.imgur.com/arGGMZB.png)

Mauvaise utilisation, IconToggle ne convenait pas ici, une checkbox est plus adaptée.

La database firestore ne semble pas prendre les 0 en début d'int, le mdp est en clair:

![img](https://i.imgur.com/0yZpPQk.png)

Solution : ?
indice: https://firebaseopensource.com/projects/firebase/scrypt/ 

Le mdp est déjà crypté et enregistré par google, il n'a normalement pas besoin d'être enregistré en bdd.

La checkbox n'est pas comprise dans une condition de validation d'un processus.



