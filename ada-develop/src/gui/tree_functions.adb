-- units from Gtk
with Glib;       use Glib;
with Glib.Object;use Glib.Object;
with Gtk.Enums;  use Gtk.Enums;
with Gtk.Widget; use Gtk.Widget;
with Gtk.GEntry; use Gtk.GEntry;
with Gtk.Main;       use Gtk.Main;
with Gtk.Builder;    use Gtk.Builder;
with Gtk.Widget;     use Gtk.Widget;
with Tree_Global;    use Tree_Global;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Interfaces; use Interfaces;
with Gtk.Drawing_Area;
with json_handler; use json_handler;
with utils; use utils;




-- Ada predefined units
with Ada.Text_IO;    use Ada.Text_IO;

package body tree_functions is

   procedure Add_node (Builder : access Gtkada_Builder_Record'Class) is
         Nom       : Unbounded_String := Null_Unbounded_String;
         Prenom    : Unbounded_String := Null_Unbounded_String;
         Birthdate : Unbounded_String := Null_Unbounded_String;
         Lien      : Unbounded_String := Null_Unbounded_String;
         Binary_entry : String(1..11);
         cle : Interfaces.Unsigned_32;
      begin
         Put_Line ("Entrez le nom :");
         Nom := To_Unbounded_String (Get_Line);
         Put_Line ("Entrez le prénom :");
         Prenom := To_Unbounded_String (Get_Line);
         Put_Line ("Entrez la date de naissance :");
         Birthdate := To_Unbounded_String (Get_Line);
         Put_Line ("Veuillez entrer une valeur binaire au format 2#...# : ");
         Binary_entry := Get_Line;
         Cle := Interfaces.Unsigned_32'Value (Binary_entry);
         --cle := 2#1000#;
         Tree_Global.Add_Node (Nom, Prenom, Birthdate, cle);
   end Add_node;

   procedure Supp_node (Builder : access Gtkada_Builder_Record'Class) is
      Binary_entry : String(1..11);
      cle : Interfaces.Unsigned_32;
   begin
      Put_Line ("Veuillez entrer une valeur binaire au format 2#...# : ");
      Binary_entry := Get_Line;
      Cle := Interfaces.Unsigned_32'Value (Binary_entry);
      Tree_Global.Supprimer (Cle);
     null;
   end Supp_node;

   function Get_known_parents return Unbounded_String is 
      Cle : Interfaces.Unsigned_32; 
      Binary_entry : String(1..11);
      Tree : Tree_Global.My_Tree.Binary_Tree;
      message : Unbounded_String;
   begin
      Put_Line ("Veuillez entrer une valeur binaire au format 2#...# : ");
      Binary_entry := Get_Line;
      Cle := Interfaces.Unsigned_32'Value (Binary_entry);
      --Cle := 2#00000010#;
      Tree := Tree_Global.Get_Tree;
      Put_Line ("taille :" & Integer'image(Tree_Global.Taille(Tree_Global.Find_Tree(Tree,Cle))));
      message := "Le noeud "& To_Unbounded_String(Binary_To_String(Cle)) & " a " & To_Unbounded_String(Integer'image(Tree_Global.Taille(Tree_Global.Find_Tree(Tree,Cle)) -1))&" ancêtres connus. " & To_Unbounded_String(Integer'image(Tree_Global.Taille(Tree_Global.Find_Tree(Tree,Cle)))) &" en le comptant lui même.";
      return message;
   end Get_known_parents;

   function Get_gen_n_parents return Unbounded_String is
      Line_Entry : Integer; 
      Cle : Interfaces.Unsigned_32; 
      Cles : Interfaces.Unsigned_32; 
      Binary_entry : String(1..11);
      Tree : Tree_Global.My_Tree.Binary_Tree;
      message : Unbounded_String;
      New_Line_Char : Character := ASCII.LF; -- Retour à la ligne
      Find : Boolean := False;
   begin 
      Tree := Tree_Global.Get_Tree;
      Put_Line ("Veuillez entrer une valeur binaire au format 2#...# : ");
      Binary_entry := Get_Line;
      --Binary_entry := "2#00000010#";
      Cle := Interfaces.Unsigned_32'Value (Binary_entry);
      Put_Line ("Veuillez entrer la génération souhaitée :");
      Get(Line_Entry);
      --Line_Entry := 3;
      Cles := Cle * (2**Line_Entry);
      message := "Les ancètres de génération" & Integer'Image(Line_Entry) & " du noeud " & To_Unbounded_String(Binary_To_String(Cle)) & " sont : " ;
      for i in 0..(2**Line_Entry) loop
         Put_Line (Interfaces.Unsigned_32'Image(Cles));
         if not Tree_Global.Est_Vide(Tree_Global.Find_Tree (Tree, Cles )) then 
            message := message & New_Line_Char & " - " & To_Unbounded_String(Binary_To_String(Cles)) & " : " & Tree_Global.Get_Nom (Cles) & " " & Tree_Global.Get_Prenom (Cles);
            Put_Line (Interfaces.Unsigned_32'Image(Cles));
            Find := True;
         end if;
         Cles := Cles + 1;
      end loop;
      if not Find then
         message :="Le noeud " & To_Unbounded_String(Binary_To_String(Cle)) & " n'a aucun ancètre de génération"& Integer'Image(Line_Entry);
      end if;
      return message;
   end Get_gen_n_parents;

   procedure Specific_tree (Builder : access Gtkada_Builder_Record'Class) is
   Cle : Interfaces.Unsigned_32; 
   Binary_entry : String(1..11);
   Tree : Tree_Global.My_Tree.Binary_Tree;
   begin
      Tree := Tree_Global.Get_Tree;
      Put_Line ("Veuillez entrer une valeur binaire au format 2#...# : ");
      Binary_entry := Get_Line;
      Cle := Interfaces.Unsigned_32'Value (Binary_entry);
      Tree_Global.Set_Affiche (My_Tree.Find_Tree(Tree,Cle));
   end Specific_tree;

   procedure Create_Tree (Builder : access Gtkada_Builder_Record'Class) is
      People    : JSON_Handler.Person_List(1 .. 100);
   begin
      People := JSON_Handler.Load_JSON_Data ("data/tree_data.json");
      
      for Person of People loop
        -- Put_Line (To_String(Person.LastName));
        -- Put_Line (To_String(Person.Key));
         Tree_Global.Add_node (Person.LastName,Person.FirstName,Person.Birthdate,Unbounded_String_To_Unsigned_32(Person.Key));
      end loop;
      Gtk.Widget.Queue_Draw (Gtk.Widget.Gtk_Widget(Gtk.Drawing_Area.Gtk_Drawing_Area (Get_Object (Builder, "drawing_area"))));
   end Create_Tree;

   function N_parent return Unbounded_String is 
      Line_Entry : Integer; 
      Tree : Tree_Global.My_Tree.Binary_Tree;
      Cles : Tree_Global.My_Tree.Cle_Array;
      message : Unbounded_String;
      New_Line_Char : Character := ASCII.LF;
   begin 
      Tree := Tree_Global.Get_Tree;
      Put_Line ("Entrez le numéro de votre choix :");
      Put_Line ("   0 : Obtenir l’ensemble des individus qui n’ont qu’un parent connu.");
      Put_Line ("   1 : Obtenir l’ensemble des individus dont les deux parents sont connus.");
      Put_Line ("   2 : Obtenir l’ensemble des individus dont les deux parents sont inconnus.");
      Get(Line_Entry);
      Cles := Tree_Global.search_N_Parent (Tree, Line_Entry);
      message := To_Unbounded_String("Il y a " & Interfaces.Unsigned_32'Image(Cles(1)) & " noeuds avec " & Integer'Image(Line_Entry) &" ancêtres");
      for i in 2..32 loop
         if Cles(i) /= 2147483647 then
            message := message & New_Line_Char & " - " & To_Unbounded_String(Binary_To_String(Cles(i))) & " : " & Tree_Global.Get_Nom (Cles(i)) & " " & Tree_Global.Get_Prenom (Cles(i));
         end if;
      end loop;
      return message;
   end N_parent;

   procedure Reset_Tree (Builder : access Gtkada_Builder_Record'Class) is 
   begin 
      Tree_Global.Reset;
      Gtk.Widget.Queue_Draw (Gtk.Widget.Gtk_Widget(Gtk.Drawing_Area.Gtk_Drawing_Area (Get_Object (Builder, "drawing_area"))));
   end Reset_Tree;

   procedure Empty_Tree (Builder : access Gtkada_Builder_Record'Class) is 
   Tree : Tree_Global.My_Tree.Binary_Tree;
   begin 
      Tree_Global.Empty;
      Tree_Global.Reset_Affiche;
      Gtk.Widget.Queue_Draw (Gtk.Widget.Gtk_Widget(Gtk.Drawing_Area.Gtk_Drawing_Area (Get_Object (Builder, "drawing_area"))));
   end Empty_Tree;

   procedure All_unknonw_Parents (Builder : access Gtkada_Builder_Record'Class) is 
   begin 
   null;
   end All_unknonw_Parents;
   
end tree_functions;
