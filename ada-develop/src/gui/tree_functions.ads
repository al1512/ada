
with Gtkada.Builder; use Gtkada.Builder;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;



package tree_functions is
   procedure Add_node (Builder : access Gtkada_Builder_Record'Class);
   procedure Supp_node (Builder : access Gtkada_Builder_Record'Class);
   function Get_known_parents return Unbounded_String;
   function Get_gen_n_parents return Unbounded_String;
   procedure Specific_tree (Builder : access Gtkada_Builder_Record'Class);
   procedure Create_Tree (Builder : access Gtkada_Builder_Record'Class);
   function N_parent return Unbounded_String;
   procedure Reset_Tree (Builder : access Gtkada_Builder_Record'Class);
   procedure Empty_Tree (Builder : access Gtkada_Builder_Record'Class);
   procedure All_unknonw_Parents (Builder : access Gtkada_Builder_Record'Class);
end tree_functions;

