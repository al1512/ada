with Gtkada.Builder; use Gtkada.Builder;
with Ada.Text_IO;          use Ada.Text_IO;
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Gtk.handlers;
with gtk.drawing_area;

package Interface_package is

   procedure main_GUI;
   function Window_Delete (Builder : access Gtkada_Builder_Record'Class) return Boolean;
   package Event_Cb is new Gtk.Handlers.Return_Callback (
      Gtk.Drawing_Area.Gtk_Drawing_Area_Record,
      Boolean);
end Interface_package;
