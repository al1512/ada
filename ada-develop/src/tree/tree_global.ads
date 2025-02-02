with Generic_Tree;
with Interfaces; 
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Glib;
with Cairo;         use Cairo;




package Tree_Global is
   --subtype Name_Type is String;
   package My_Tree is new Generic_Tree (Element_Type => Unbounded_String, To_String => Ada.Strings.Unbounded.To_String);
   procedure Add_Node ( Name : Unbounded_String; Surname : Unbounded_String; Birthdate : Unbounded_String; Key : Interfaces.Unsigned_32);
   function Get_Tree return My_Tree.Binary_Tree;
   function Find_Tree (Tree : My_Tree.Binary_Tree; Cle : Interfaces.Unsigned_32) return My_Tree.Binary_Tree;
   function Find_key (Tree :  My_Tree.Binary_Tree; Nom : Unbounded_String; Prenom : Unbounded_String; Birthdate : Unbounded_String) return Interfaces.Unsigned_32;
   procedure Vider (Tree : in out My_Tree.Binary_Tree; Who : Interfaces.Unsigned_32);
   procedure Supprimer ( Cle : Interfaces.Unsigned_32);
   function Taille (Tree :  My_Tree.Binary_Tree) return Integer;
   function Est_Vide (Tree : My_Tree.Binary_Tree) return Boolean;
   procedure Initialiser;
   procedure Afficher (Tree : in My_Tree.Binary_Tree);
   procedure Reset_Affiche;
   procedure Set_Affiche (Tree : in My_Tree.Binary_Tree);
   function search_N_Parent (Tree : in My_Tree.Binary_Tree; N : Integer) return My_Tree.Cle_Array;
   procedure On_Draw (Cr : Cairo_Context;  X : Glib.Gdouble; Y : Glib.Gdouble);
   function Get_Nom(Cle : Interfaces.Unsigned_32) return Unbounded_String;
   function Get_Birthdate(Cle : Interfaces.Unsigned_32) return Unbounded_String;
   function Get_Prenom(Cle : Interfaces.Unsigned_32) return Unbounded_String;
   procedure Reset;
   procedure Empty;

end Tree_Global;
