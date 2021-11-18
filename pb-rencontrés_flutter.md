![img](https://i.imgur.com/NySdimn.png)

Solution: 
![img](https://i.imgur.com/iVrbLgS.png)

//

Ajout d'une condition pour la concordance de mdp1 avec mdp2 peut être inutile vu que flutterflow semble définir cette fonctionnalité de base dans 'Authentification via mail'.
![img](https://i.imgur.com/jANIeMW.png)

Solution: Elle est inutile et cause même une erreur parfois dans chrome.

//

L'input renseigné sans la validation par authentification bloque ou ignore son required pour passer à la page suivante.

Solution: 
https://docs.flutter.dev/cookbook/forms/validation

![img](https://i.imgur.com/hChknCJ.png)

//

Chargement de la page qui ne se fait pas sur web.
"Uncaught (in promise) Error: [cloud_firestore/permission-denied] Missing or insufficient permissions."

Les permissions sont présente sur Firebase; 
![img](https://i.imgur.com/9FimkuQ.png)
Solution: Le problème vient de la requête d'information d'objet coté back sur la page AVANT la connexion d'où le blocage par chrome mais le problème n'apparaissait pas sur l'émulateur android de FlutterFlow.

//

![img](https://i.imgur.com/epQLWAf.png)

Error serializing doc user/JYjCB9lDfXOqIF9eP2MG:
Deserializing '[disponibilite, , display_name, , email, , date_de_naissance, 1, check, true,...' to 'UserRecord' failed due to: Deserializing '1' to 'String' failed due to: Expected a value of type 'String', but got one of   
type 'int'

Solution: L'entré "date_de_naissance" était déclaré comme string car sous format jj/mm/aaaa, mais déclaré comme int dans la bdd

![img](https://i.imgur.com/tH5IR5v.png)

//

Dans la partie Profil les cards ne semblent pas scrollable sur web.
Je pense qu'une ListView serait plus adaptée.

"Another exception was thrown: A RenderFlex overflowed by 158 pixels on the bottom."

Indice: https://stackoverflow.com/questions/49480051/flutter-dart-exceptions-caused-by-rendering-a-renderflex-overflowed

J'ai réarrangé la structure, mais aucun changement.

//

Sur la page connexion, la touche tab ne passe pas d'un textfield à l'autre sur web, mais le fait sous android.

//

Les data n'apparraissent pas dans le profil

![img](https://i.imgur.com/TKlST5Q.png)

L'erreur est plus clair avec le débugger d'android studio: "D/FirebaseAuth( 3313): Notifying auth state listeners about user ( xzDtL6zQH5Nys6muTcBZN52o8JV2 )."

Solution: Mauvais appel query du composant 'Document from Reference' et non 'Query Collection'.

![img](https://i.imgur.com/KfT5y4j.png)




