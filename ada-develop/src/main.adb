-- main.adb
with Tree_Global;
with json_handler;
with Interface_package; use Interface_package;
--with test_essai; use test_essai;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Interfaces;
with GNATCOLL.JSON;

procedure Main is
begin
   Tree_Global.Initialiser;
   --Interface_package.Display_Main_Menu;
   Interface_package.main_GUI;

end Main;