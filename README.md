# localstack-host
fork de localstack pour une install sans docker

## port pod exposition
Le container expose les ports 4567 à 4597 et 8080 or nous n'avons exposé qu'un seul port (4572) au niveau du pod !
Il va donc falloir créer un service pour exposer tous ces ports au niveau du pod.

## Route
La route permet d'exposer une interface web aws mais il faut la lancer manuellement dans le terminal du pod :
'
# localstack web
'
