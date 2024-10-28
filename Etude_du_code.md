a. O� se trouve le code permettant de tester les fonctions Nb_Occurences et
Element_Plus_Frequent ?

Dans le dossier src_tests, dans le fichier tests_tableaux_entiers_util.adb, dans les
fonctions pr�fix�es par test_. La proc�dure principale se charge de lancer les tests pour les
fonctions Nb_Occurences et Element_Plus_Frequent.

b. Comment sont regroup�s les sous-programmes de test pour chaque fonction test�e ?

Les sous-programmes de test pour chaque fonction test�e sont regroup�s en cas de tests :
? cas de tests nominaux ou standard,
? cas de tests limites qui correspondent � des valeurs sp�cifiques que la fonction doit traiter
correctement,
? cas de tests d?erreurs qui correspondent � des valeurs sp�cifiques qui doivent g�n�rer une
erreur attendue.

c. Quelles bonnes pratiques semblent semblent �merger de votre �tude du code ?

Les bonnes pratiques qui semblent �merger de l?�tude du code sont :
? la s�paration des fonctions de test des fonctions test�es soit s�paration du code principal et
du code de test,
? la s�paration des cas de tests en cas de tests nominaux, limites et d?erreurs pour aider �
couvrir un maximum de cas d?utilisation pertinents par les tests.