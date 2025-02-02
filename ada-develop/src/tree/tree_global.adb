with Interfaces; use Interfaces;
with Ada.Text_IO;          use Ada.Text_IO;
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;

with Glib;           use Glib;
with Cairo;         use Cairo;
with tree_functions;
with Tree_Global;



package body Tree_Global is
   Tree_Instance : My_Tree.Binary_Tree;
   Tree_Affiche : My_Tree.Binary_Tree;
   

   procedure Add_Node ( Name : Unbounded_String; Surname : Unbounded_String; Birthdate : Unbounded_String;  Key : Interfaces.Unsigned_32) is
   Bit_Mask : Interfaces.Unsigned_32 := 2 ** 8;
   first : Boolean := True ;
   begin
      My_Tree.Add_Node(Tree_Instance, Name, Surname, Birthdate, Key, Bit_Mask, First);
   end Add_Node;

   function Get_Tree return My_Tree.Binary_Tree is
   begin
      return Tree_Instance;
   end Get_Tree;

   function Find_Tree (Tree : My_Tree.Binary_Tree; Cle : Interfaces.Unsigned_32) return My_Tree.Binary_Tree is 
   begin 
      return My_Tree.Find_Tree(Tree,Cle);
   end Find_Tree;

   function Find_key (Tree : My_Tree.Binary_Tree; Nom : Unbounded_String; Prenom : Unbounded_String; Birthdate : Unbounded_String) return Interfaces.Unsigned_32 is
   begin 
      return My_Tree.Find_key (Tree_Instance, Nom , Prenom , Birthdate );
   end Find_key;

   procedure Vider (Tree : in out My_Tree.Binary_Tree; Who : Interfaces.Unsigned_32) is 
   begin
      My_Tree.Vider(Tree, who);
   end Vider;

   procedure Supprimer (Cle : Interfaces.Unsigned_32) is 
      Tree_found : My_Tree.Binary_Tree;
      Bit_Mask : Interfaces.Unsigned_32 := 2 **0;
   begin
      Tree_found := Tree_Global.My_Tree.Find_Tree(Tree_Instance,Cle);
      My_Tree.Supprimer(Tree_found);
      if (Cle and Bit_Mask) = 0 then
         Tree_found := Tree_Global.My_Tree.Find_Tree(Tree_Instance, Cle /2);
         Vider(Tree_found,Cle and Bit_Mask);
      elsif (Cle and Bit_Mask) = 1 then 
         Tree_found := Tree_Global.My_Tree.Find_Tree(Tree_Instance, (Cle - 1)/2);
         Vider(Tree_found,Cle and Bit_Mask);
      end if;

   end Supprimer;

   function Taille (Tree : My_Tree.Binary_Tree) return Integer is
   begin
      return My_Tree.Taille(Tree);
   end Taille;

   function Est_Vide (Tree : My_Tree.Binary_Tree) return Boolean is
   begin 
      return My_Tree.Est_Vide(Tree);
   end Est_Vide;

   procedure Initialiser is
   begin
      My_Tree.Initialiser(Tree_Instance);
   end Initialiser;

   procedure Afficher (Tree : in My_Tree.Binary_Tree) is 
   begin 
      My_Tree.Afficher(Tree);
   end Afficher;

   procedure Set_Affiche (Tree : in My_Tree.Binary_Tree) is 
   begin 
      Tree_Affiche := Tree;
   end Set_Affiche;

   function search_N_Parent (Tree : in My_Tree.Binary_Tree; N : Integer) return My_Tree.Cle_Array is 
      Cles : My_Tree.Cle_Array := (others => 2147483647);
   begin 
      Cles(1) := 0;
      return My_Tree.search_N_Parent(Tree,N,Cles);
   end search_N_Parent;
   
   function Get_Nom(Cle : Interfaces.Unsigned_32) return Unbounded_String is
      Nom : Unbounded_String;
   begin
      Nom := My_Tree.Get_Nom(Tree_Instance,Cle);
      return Nom;
   end Get_Nom;

   function Get_Birthdate(Cle : Interfaces.Unsigned_32) return Unbounded_String is
      Date : Unbounded_String;
   begin
      Date := My_Tree.Get_Birthdate(Tree_Instance,Cle);
      return Date;
   end Get_Birthdate;

   function Get_Prenom(Cle : Interfaces.Unsigned_32) return Unbounded_String is
      Prenom : Unbounded_String;
   begin
      Prenom := My_Tree.Get_Prenom(Tree_Instance,Cle);
      return Prenom;
   end Get_Prenom;

   procedure Reset is
   begin 
      Tree_Affiche := My_Tree.Reset_Tree(Tree_Affiche);
   end Reset;

   procedure Reset_Affiche is
   begin
      Tree_Affiche := Tree_Instance;
   end Reset_Affiche;

   procedure Empty is
   begin 
      if not Est_Vide (Tree_Affiche) then
         Supprimer(My_Tree.Get_Key(Tree_Instance));
         Tree_Instance := My_Tree.Reset_Tree(Tree_Instance);
      end if;
   end Empty;

   procedure On_Draw (Cr : Cairo_Context;  X : Glib.Gdouble; Y : Glib.Gdouble) is
   begin
      if Est_Vide (Tree_Affiche) then
         --Put_Line ("Try I -> A");
         Tree_Affiche := Tree_Instance;
      end if;
      My_Tree.On_Draw(Cr,Tree_Affiche,X,Y,0.0);
   end On_Draw;

end Tree_Global;
