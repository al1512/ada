with Interfaces;
with Glib;           use Glib;
with Cairo;         use Cairo;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;



generic
   type Element_Type  is private; -- Type des données stockées dans l'arbre
      with function To_String (E : Element_Type) return String;
   --with function "<" (Father_side, Mother_side : Element_Type) return Boolean; -- Fonction de comparaison
package Generic_Tree is
   type Binary_Tree is private;
   type Cle_Array is array (Positive range 1 .. 64) of Interfaces.Unsigned_32;

   procedure Add_Node (Tree : in out Binary_Tree; Nom : Element_Type; Prenom : Element_Type; Birthdate : Element_Type; cle : Interfaces.Unsigned_32; Bit_Mask : in out Interfaces.Unsigned_32; First : in out Boolean );
   procedure Display_Tree (Tree : Binary_Tree);
   function Access_Tree (Tree: Binary_Tree) return Binary_Tree;
   --function Find_node (cle : Interfaces.Unsigned_32; Nom : Element_Type; Prenom : Element_Type; Birthdate : Element_Type) return Binary_Tree;
   function To_JSON (Tree : Binary_Tree) return String;
   procedure From_JSON (Tree :Binary_Tree; JSON_Str : String);
   function Create_Tree return Binary_Tree;
   function Reset_Tree (Tree : in out Binary_Tree) return Binary_Tree;
   procedure Initialiser(Tree: in out Binary_Tree);
   function Est_Vide (Tree : Binary_Tree) return Boolean;
   function Taille (Tree :  Binary_Tree) return Integer;
   procedure Supprimer (Tree : in out  Binary_Tree) ;
   procedure Vider (Tree : in out Binary_Tree; Who : Interfaces.Unsigned_32);
   function Find_key (Tree :  Binary_Tree; Nom : Element_Type; Prenom : Element_Type; Birthdate : Element_Type) return Interfaces.Unsigned_32;
   function Find_Tree (Tree : Binary_Tree; Cle : Interfaces.Unsigned_32) return Binary_Tree;
   function Get_Nom(tree : Binary_Tree; Cle : Interfaces.Unsigned_32) return Element_Type;
   function Get_Birthdate(tree : Binary_Tree; Cle : Interfaces.Unsigned_32) return Element_Type;
   function Get_Prenom(tree : Binary_Tree; Cle : Interfaces.Unsigned_32) return Element_Type;
   function Get_Key(tree : Binary_Tree) return Interfaces.Unsigned_32;
   function search_N_Parent (Tree : Binary_Tree; N : Integer; Cles : in out Cle_Array) return Cle_Array;
   procedure Afficher (Tree : in Binary_Tree);
   procedure On_Draw (Cr : Cairo_Context; Tree : Binary_Tree; X : Glib.Gdouble; Y : Glib.Gdouble ; Y_pre : Glib.Gdouble);


private
	type T_Noeud;
	type Binary_Tree is access T_Noeud;
	type T_Noeud is record
			Cle: Interfaces.Unsigned_32;
			Nom : Element_Type;
			Prenom : Element_Type;
			Birthdate : Element_Type;
			Father_side : Binary_Tree;
			Mother_side : Binary_Tree;
			-- Invariant
			--    Pour tout noeud N dans Sous_Arbre_Gauche, N.Cle < Cle
			--    Pour tout noeud N dans Sous_Arbre_Droit,  N.Cle > Cle
		end record;
end Generic_Tree;
