![img](https://i.imgur.com/NySdimn.png)

Solution: 
![img](https://i.imgur.com/iVrbLgS.png)

Ajout d'une condition pour la concordance de mdp1 avec mdp2 peut être inutile vu que flutterflow semble définir cette fonctionnalité de base dans 'Authentification via mail'.

![img](https://i.imgur.com/jANIeMW.png)

L'input renseigné sans la validation par authentification bloque ou ignore son required pour passer à la page suivante.

Solution: 
https://docs.flutter.dev/cookbook/forms/validation

![img](https://i.imgur.com/hChknCJ.png)

Chargement de la page qui ne se fait pas sur web.
"Uncaught (in promise) Error: [cloud_firestore/permission-denied] Missing or insufficient permissions."

Solution: Les permissions sont présente sur Firebase; 
![img](https://i.imgur.com/9FimkuQ.png)
Le problème vient de la demande sur la page avant la connexion d'où le blocage par chrome mais le problème n'apparaissait pas sur l'émulateur android de FlutterFlow.


