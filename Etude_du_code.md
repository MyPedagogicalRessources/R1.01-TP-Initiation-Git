a. Où se trouve le code permettant de tester les fonctions Nb_Occurences et
Element_Plus_Frequent ?

Dans le dossier src_tests, dans le fichier tests_tableaux_entiers_util.adb, dans les
fonctions préfixées par test_. La procédure principale se charge de lancer les tests pour les
fonctions Nb_Occurences et Element_Plus_Frequent.

b. Comment sont regroupés les sous-programmes de test pour chaque fonction testée ?

Les sous-programmes de test pour chaque fonction testée sont regroupés en cas de tests :
? cas de tests nominaux ou standard,
? cas de tests limites qui correspondent à des valeurs spécifiques que la fonction doit traiter
correctement,
? cas de tests d?erreurs qui correspondent à des valeurs spécifiques qui doivent générer une
erreur attendue.

c. Quelles bonnes pratiques semblent semblent émerger de votre étude du code ?

Les bonnes pratiques qui semblent émerger de l?étude du code sont :
? la séparation des fonctions de test des fonctions testées soit séparation du code principal et
du code de test,
? la séparation des cas de tests en cas de tests nominaux, limites et d?erreurs pour aider à
couvrir un maximum de cas d?utilisation pertinents par les tests.