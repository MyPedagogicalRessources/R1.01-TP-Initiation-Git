with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Tableaux_Entiers_Util is

   procedure Afficher_Tableau (un_tableau : in Tableau_Entiers) is
      i : Integer; -- indice de parcours de un_tableau.tab
   begin
      i := 1;
      while i <= un_tableau.nbElements loop
         Put (un_tableau.tableau (i), 5);
         i := i + 1;
      end loop;
      New_Line;
   end Afficher_Tableau;

   function Nb_Occurences
     (un_tableau : in Tableau_Entiers; un_element : in Integer) return Integer
   is
      i     : Integer; -- indice de parcours de un_tableau.tab
      nbOcc : Integer := 0; -- nb d'occurences de un_element
   begin
      i := 1;
      while i <= un_tableau.nbElements loop
         if un_tableau.tableau (i) = un_element then
            nbOcc := nbOcc + 1;
         end if;
         i := i + 1;
      end loop;
      return nbOcc;
   end Nb_Occurences;

   function Element_Plus_Frequent
     (un_tableau : in Tableau_Entiers) return Integer
   is
      i          : Integer; -- indice de parcours de un_tableau.tab
      occ_Max     : Integer := 0; -- nb d'occurences max
      element_Max : Integer; -- element le plus frequent
      occ_Element_Courant : Integer; -- nb occurences element courant
      element_Courant: Integer; -- element courant
   begin
      if un_tableau.nbElements = 0 then
         raise ERREUR_TABLEAU_VIDE;
      end if;
      i := un_tableau.nbElements;
      while i >= 1 loop
         element_Courant := un_tableau.tableau (i);
         occ_Element_Courant := Nb_Occurences (un_tableau, element_Courant);
         if occ_Element_Courant > occ_Max then
            occ_Max     := occ_Element_Courant;
            element_Max := element_Courant;
         end if;
         i := i - 1;
      end loop;
      return element_Max;
   end Element_Plus_Frequent;

end Tableaux_Entiers_Util;
