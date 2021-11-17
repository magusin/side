![img](https://i.imgur.com/arGGMZB.png)

Mauvaise utilisation, IconToggle ne convenait pas ici, une checkbox est plus adaptée.

//

La database firestore ne semble pas prendre les 0 en début d'int, le mdp est en clair:

![img](https://i.imgur.com/0yZpPQk.png)

Solution : ?
indice: https://firebaseopensource.com/projects/firebase/scrypt/ 

Le mdp est déjà crypté et enregistré par google, il n'a pas besoin d'être enregistré en bdd.

//

La checkbox n'est pas comprise dans une condition de validation d'un processus.

//

Le passage de data ne se fait pas.

Solution: https://www.youtube.com/watch?v=p1rHEj_Tc3Y

//

Test d'authentification avec checkbox et nouvelles données; tout était cassé, les données ne venaient que partiellement à la bdd. Soit c'est le tabarnak de checkbox qui faisait bugger soit quand les données ont été changées en bdd il faut tout réécrire et réassigner toutes les consignes de textfield et de validation.
Dans le doute et vu que c'est actuellement (17/11/21 4:59) fonctionnelle, la checkbox est punie au coin.

//








