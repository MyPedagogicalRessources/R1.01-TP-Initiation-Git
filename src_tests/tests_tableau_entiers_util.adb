with Tableaux_Entiers_Util; use Tableaux_Entiers_Util;
with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;

procedure Tests_Tableau_Entiers_Util is

   tableau_1    : Tableau_Entiers;
   tableau_vide : Tableau_Entiers;

   -- Tests fonction Nb_Occurences
   --
   
   function test_Nb_Occurences_Cas_Nominal return Boolean is
      result : Boolean := True;
   begin
      tableau_1.tableau (1 .. 10) := (1, 2, 3, 4, 4, 6, 4, 9, 9, 10);
      tableau_1.nbElements        := 10;
      if Nb_Occurences (tableau_1, 4) /= 3 then
         result := False;
      elsif Nb_Occurences (tableau_1, 9) /= 2 then
         result := False;
      elsif Nb_Occurences (tableau_1, 1) /= 1 then
         result := False;
      elsif Nb_Occurences (tableau_1, 10) /= 1 then
         result := False;
      end if;
      return result;
   end test_Nb_Occurences_Cas_Nominal;

   function test_Nb_Occurences_Cas_Limite return Boolean is
      result : Boolean := True;
   begin
      tableau_vide.nbElements := 0;
      if Nb_Occurences (tableau_vide, 4) /= 0 then
         result := False;
      elsif Nb_Occurences (tableau_vide, 0) /= 0 then
         result := False;
      end if;
      return result;
   end test_Nb_Occurences_Cas_Limite;

   -- Tests fonction Element_Plus_Frequent
   --
   
   function test_Element_Plus_Frequent_Cas_Nominal return Boolean is
      result : Boolean := True;
   begin
      tableau_1.tableau (1 .. 10) := (1, 2, 3, 4, 4, 6, 4, 9, 9, 10);
      tableau_1.nbElements        := 10;
      if Element_Plus_Frequent (tableau_1) /= 4 then
         result := False;
      end if;
      return result;
   end test_Element_Plus_Frequent_Cas_Nominal;

   function test_Element_Plus_Frequent_Cas_Erreur_Tableau_Vide return Boolean
   is
      result              : Boolean := False;
      elementPlusFrequent : Integer;
   begin
      tableau_vide.nbElements := 0;
      elementPlusFrequent     := Element_Plus_Frequent (tableau_vide);
      return result;
   exception
      when ERREUR_TABLEAU_VIDE =>
         result := True;
         return result;
   end test_Element_Plus_Frequent_Cas_Erreur_Tableau_Vide;

   function test_Element_Plus_Frequent_Cas_Limite_Plusieurs_Max return Boolean
   is
      result            : Boolean := True;
      elt_plus_frequent : Integer;
   begin
      tableau_1.tableau (1 .. 10) := (1, 9, 3, 4, 4, 6, 4, 9, 8, 10);
      tableau_1.nbElements        := 10;
      elt_plus_frequent           := Element_Plus_Frequent (tableau_1);
      Put("Element plus frequent : "); Put(elt_plus_frequent, 0); New_Line;
      if elt_plus_frequent /= 4 and elt_plus_frequent /= 9 then
         result := False;
      end if;
      return result;
   end test_Element_Plus_Frequent_Cas_Limite_Plusieurs_Max;

begin

   -- Test de la fonction Nb_Occurences
   Put_Line ("# Test de la fonction Nb_Occurences : ");
   if test_Nb_Occurences_Cas_Nominal then
      Put_Line ("+ OK");
   else
      Put_Line ("- KO");
   end if;

   -- Test de la fonction Nb_Occurences sur tableau vide
   Put_Line ("# Test de la fonction Nb_Occurences sur tableau vide : ");
   if test_Nb_Occurences_Cas_Limite then
      Put_Line ("+ OK");
   else
      Put_Line ("- KO");
   end if;

   -- Test de la fonction Element_Plus_Frequent
   Put_Line ("# Test de la fonction Element_Plus_Frequent : ");
   if test_Element_Plus_Frequent_Cas_Nominal then
      Put_Line ("+ OK");
   else
      Put_Line ("- KO");
   end if;

   -- Test de la fonction Element_Plus_Frequent sur tableau vide
   -- Ne fonctionne pas sous Mac OS X en raison de la version de GCC :
   -- provoque erreur : libunwind: _Unwind_GetDataRelBase - ...
   -- puis stack overflow
   -- Put_Line("# Test de la fonction Element_Plus_Frequent sur tableau vide : ");
   --  if test_Element_Plus_Frequent_Cas_Erreur_Tableau_Vide then
   --     Put_Line("+ OK");
   --  else
   --     Put_Line("- KO");
   --  end if;

   -- Test de la fonction Element_Plus_Frequent sur plusieurs max
   Put_Line
     ("# Test de la fonction Element_Plus_Frequent sur plusieurs max : ");
   if test_Element_Plus_Frequent_Cas_Limite_Plusieurs_Max then
      Put_Line ("+ OK");
   else
      Put_Line ("- KO");
   end if;

end Tests_Tableau_Entiers_Util;
