with Ada.Text_IO;          use Ada.Text_IO;
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;
with Generic_Tree;
with Interfaces; use Interfaces;
with Ada.Unchecked_Deallocation;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Glib;           use Glib;
with Cairo;         use Cairo;
with utils; use utils;

package body Generic_Tree is
   procedure Add_Node (Tree : in out Binary_Tree; Nom : Element_Type; Prenom : Element_Type; Birthdate : Element_Type; cle : Interfaces.Unsigned_32; Bit_Mask : in out Interfaces.Unsigned_32; First : in out Boolean ) is
   count : Integer := 0;
   begin
     if Est_Vide(Tree) then
         -- Créer un nouveau nœud
         Tree := new T_Noeud'(Cle => Cle, Nom => Nom, Prenom => Prenom, Birthdate => Birthdate,
                             Father_side => null, Mother_side => null);
         
      else 
            if ((cle and Bit_Mask ) /= 0 and First) then
               First := False;
               Bit_Mask := Bit_Mask / 2;
               Add_Node (Tree , Nom, Prenom, Birthdate,  cle, Bit_Mask, First);
            elsif ((cle and Bit_Mask ) = 0 and First) then
               Bit_Mask := Bit_Mask / 2;
               Add_Node (Tree , Nom, Prenom, Birthdate,  cle, Bit_Mask, First);
            elsif ((cle and Bit_Mask ) /= 0 and not First) then 
               Bit_Mask := Bit_Mask / 2;
               Add_Node (Tree.Mother_side , Nom, Prenom, Birthdate,  cle, Bit_Mask, First);
            elsif ((cle and Bit_Mask ) = 0 and not First) then 
               Bit_Mask := Bit_Mask / 2;
               Add_Node (Tree.Father_side , Nom, Prenom, Birthdate,  cle, Bit_Mask, First);
            end if;
         end if;
   end Add_Node;

   procedure Display_Tree (Tree : Binary_Tree) is
   begin
      null;
   end Display_Tree;

   function To_JSON (Tree : Binary_Tree) return String is
   begin
      -- Implémentation JSON à écrire
      null;
      return "{}"; -- Placeholder
   end To_JSON;

   procedure From_JSON (Tree : Binary_Tree; JSON_Str : String) is
   begin
      -- Implémentation JSON à écrire
      null;
   end From_JSON;

   function Access_Tree (Tree : Binary_Tree) return Binary_Tree is 
   begin
      return Tree;
   end Access_Tree;

   function Create_Tree return Binary_Tree is
   begin
      return null; -- Un arbre vide est représenté par `null`
   end Create_Tree;

   function Reset_Tree (Tree : in out Binary_Tree) return Binary_Tree is
   begin
      Tree := null;
      return Tree ; -- Un arbre vide est représenté par `null`
   end Reset_Tree;

   procedure Initialiser(Tree: in out Binary_Tree) is
   begin
      Tree := null;
   end Initialiser;

   function Est_Vide (Tree : Binary_Tree) return Boolean is
   begin
      return Tree = null;
   end Est_Vide;

   function Taille (Tree : Binary_Tree) return Integer is
   begin
      if Est_Vide(Tree) then
         return 0;
      else
         return 1 + Taille(Tree.Father_side) + Taille(Tree.Mother_side);
      end if;
   end Taille;

   procedure Supprimer (Tree : in out Binary_Tree) is
      procedure Free_Tree is new Ada.Unchecked_Deallocation(T_Noeud, Binary_Tree);
   begin
      if Tree.Father_side /= null then 
         Supprimer (Tree.Father_side);
      end if;
      if Tree.Mother_side /= null then 
         Supprimer (Tree.Mother_side);
      end if;
      if Tree.Father_side = null and Tree.Mother_side = null then 
         Free_Tree (Tree);
         Tree := null;
         
      end if;


   end Supprimer;

   procedure Vider (Tree : in out Binary_Tree; Who : Interfaces.Unsigned_32) is
   begin
      if not Est_Vide(Tree) then
         if Who = 0 then
            Tree.Father_side := null;
         elsif Who = 1 then
            Tree.Mother_side := null;
         end if;
      end if;
   end Vider;

   function Find_key (Tree : Binary_Tree; Nom : Element_Type; Prenom : Element_Type; Birthdate : Element_Type) return Interfaces.Unsigned_32 is 
      Key : Interfaces.Unsigned_32 := 0 ; -- 0 signifie "pas de clé ou clé non correspondante"
      Key1 : Interfaces.Unsigned_32 := 0;
      Key2: Interfaces.Unsigned_32:= 0;

   begin
      if Est_Vide(Tree) then
         key := 0;
      else if (Nom = Tree.Nom and Prenom = Tree.Prenom and Birthdate = Tree.Birthdate) then 
               Key := Tree.Cle;
           else 
               Key1 := Find_key(Tree.Father_side, Nom, Prenom, Birthdate);
               key2 := Find_key(Tree.Mother_side, Nom, Prenom, Birthdate);
               if key1 /= 0  then
                  key := key1;
               else if key2 /= 0 then
                  key := key2;
               end if;
               end if;
            end if;
      end if;
      
      return key;
   end Find_key;

   function Find_Tree (Tree : Binary_Tree; Cle : Interfaces.Unsigned_32) return Binary_Tree is 
      Target_Tree : Binary_Tree;
      Temp_Tree1 : Binary_Tree;
      Temp_Tree2: Binary_Tree;

   begin 
      
      if Est_Vide (Tree) then
         Target_Tree := null;
      else 
         if Cle = Tree.Cle then 
            Target_Tree := Tree;
            return Target_Tree;
         else 
            if not Est_Vide (Tree.Father_side) then
               Temp_Tree1 := Find_Tree (Tree.Father_side, Cle);
            end if;
            if not Est_Vide (Tree.Mother_side) then
               Temp_Tree2 := Find_Tree (Tree.Mother_side, Cle);
            end if;
            if Temp_Tree1 /= null then 
               Target_Tree := Temp_Tree1;
            elsif Temp_Tree2 /= null then 
               Target_Tree := Temp_Tree2;
            else 
               Target_Tree := null;
            end if;
         end if;
      end if;
      return Target_Tree;
   end Find_Tree;

   function Get_Nom (tree : Binary_Tree; Cle : Interfaces.Unsigned_32) return Element_Type is
      Tree_get : Binary_Tree;
   begin
      Tree_get := Generic_Tree.Find_Tree(tree,Cle);
      return Tree_get.Nom;
   end Get_Nom;

   function Get_Birthdate (tree : Binary_Tree; Cle : Interfaces.Unsigned_32) return Element_Type is
      Tree_get : Binary_Tree;
   begin
      Tree_get := Generic_Tree.Find_Tree(tree,Cle);
      return Tree_get.Birthdate;
   end Get_Birthdate;

   function Get_Prenom(tree : Binary_Tree; Cle : Interfaces.Unsigned_32) return Element_Type is
      Tree_get : Binary_Tree;
   begin
      Tree_get := Generic_Tree.Find_Tree(tree,Cle);
      return Tree_get.Prenom;
   end Get_Prenom;

   function Get_Key(tree : Binary_Tree) return Interfaces.Unsigned_32 is
   begin
      return Tree.Cle;
   end Get_Key;

   procedure Afficher (Tree : in Binary_Tree) is
   begin
      --Put_Line ("Begin Afficher");
      if not Est_Vide(Tree) then
         Afficher(Tree.Father_side);
         Put_Line(Interfaces.Unsigned_32'Image(Tree.Cle) & " : " & To_String(Tree.Prenom));
         Afficher(Tree.Mother_side);
      end if;
   end Afficher;

   function search_N_Parent (Tree : Binary_Tree; N : Integer; Cles : in out Cle_Array) return Cle_Array is 
      count : Integer := 0;
   begin 
      if not Est_Vide (Tree) then
         if not Est_Vide (Tree.Father_side) then
            count := count + 1;
            Cles := search_N_Parent (Tree.Father_side, N, Cles);
         end if;
         if not Est_Vide (Tree.Mother_side) then
            count := count + 1;
            Cles := search_N_Parent (Tree.Mother_side, N, Cles);
         end if;

         if count = n then 
            cles(Integer(Tree.cle) + 1) := Tree.cle;
            Cles(1) := cles(1) + 1;
         end if;

      end if;
      
      return Cles;
   end search_N_Parent;

   procedure On_Draw (Cr : Cairo_Context; Tree : Binary_Tree; X : Glib.Gdouble; Y : Glib.Gdouble; Y_pre : Glib.Gdouble) is

   begin
      --Définir la couleur du texte
         Cairo.Set_Source_RGB (Cr, 1.0, 1.0, 1.0);   --Noir
        if not Est_Vide(Tree) then  
            

              --Dessiner le nœud actuel
             Cairo.Move_To (Cr, X, Y);
             Cairo.Set_Font_Size (Cr, 15.0);
             Cairo.Show_Text (Cr,Binary_To_String(Tree.Cle) & " : ");
             Cairo.Set_Font_Size (Cr, 10.0);
             Cairo.Move_To (Cr, X , Y + 10.0);
             Cairo.Show_Text (Cr, To_String(Tree.Nom) );
             Cairo.Move_To (Cr, X , Y + 20.0);
            Cairo.Show_Text (Cr,To_String(Tree.Prenom));

             -- Dessiner la ligne vers le père
             if not Est_Vide(Tree.Father_side) then
                
               -- Dessiner récursivement le côté père
               if Y - Y_pre > 0.0 then 
                  Cairo.Move_To (Cr, X + 100.0 , Y + 12.5);
                  Cairo.Line_To (Cr,X + 150.0 - 5.0, Y  - (Y - Y_pre)/2.0);
                  Cairo.Stroke (Cr);
                  On_Draw (Cr, Tree.Father_side, X + 150.0, Y  - (Y - Y_pre)/ 2.0,Y);
               else 
                  Cairo.Move_To (Cr, X + 100.0 , Y + 12.5);
                  Cairo.Line_To (Cr,X + 150.0 - 5.0, Y  - (Y_pre - Y)/2.0);
                  Cairo.Stroke (Cr);
                  On_Draw (Cr, Tree.Father_side, X + 150.0, Y  - (Y_pre - Y)/ 2.0,Y);
               end if;
             end if;

             -- Dessiner la ligne vers la mère
             if not Est_Vide(Tree.Mother_side) then
               if Y - Y_pre > 0.0 then 
                Cairo.Move_To (Cr, X + 100.0 , Y + 12.5);
                Cairo.Line_To (Cr, X + 150.0 - 5.0, Y  - (Y_pre - Y)/ 2.0);
                Cairo.Stroke (Cr);
                -- Dessiner récursivement le côté mère
                On_Draw (Cr, Tree.Mother_side, X + 150.0, Y  - (Y_pre - Y)/ 2.0,Y);
            else 
               Cairo.Move_To (Cr, X + 100.0 , Y + 12.5);
                Cairo.Line_To (Cr, X + 150.0 - 5.0, Y  - (Y - Y_pre)/ 2.0);
                Cairo.Stroke (Cr);
                -- Dessiner récursivement le côté mère
                On_Draw (Cr, Tree.Mother_side, X + 150.0, Y  - (Y - Y_pre)/ 2.0,Y);
            end if;
             end if;
         else 
            Cairo.Move_To (Cr, 350.0, 350.0);
            Cairo.Set_Font_Size (Cr, 30.0);
            Cairo.Show_Text (Cr, "Arbre Généalogique Vide");
          end if;
   end On_Draw;
end Generic_Tree;
