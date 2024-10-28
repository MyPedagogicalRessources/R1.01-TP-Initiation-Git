package Tableaux_Entiers_Util is

   MAX_LENGTH : constant Integer := 15;
   ERREUR_TABLEAU_VIDE : exception;

   type Tableau_Entiers_Taille_Fixe is array (1 .. MAX_LENGTH) of Integer;

   type Tableau_Entiers is record
      tableau    : Tableau_Entiers_Taille_Fixe;
      nbElements : Integer;
   end record;

   -- Afficher_Tableau : affiche les elements d'un tableau
   -- un_tableau : tableau a afficher
   procedure Afficher_Tableau (un_tableau : in Tableau_Entiers);

   -- Nb_Occurences : retourne le nombre d'occurences d'un element dans un tableau
   -- un_tableau : tableau dans lequel on cherche un_element
   -- un_element : element dont on cherche le nombre d'occurences
   -- retourne : le nombre d'occurences de l'element un_element dans le tableau un_tableau
   function Nb_Occurences
     (un_tableau : in Tableau_Entiers; un_element : in Integer) return Integer;

   -- Element_Plus_Frequent : retourne l element le plus frequent du tableau
   -- un_tableau : tableau dont on cherche l'element le plus frequent
   -- retourne : l'element le plus frequent du tableau
   -- necessite : le tableau ne doit pas etre vide
   -- exception : ERREUR_TABLEAU_VIDE si le tableau est vide
   function Element_Plus_Frequent
     (un_tableau : in Tableau_Entiers) return Integer;

end Tableaux_Entiers_Util;
