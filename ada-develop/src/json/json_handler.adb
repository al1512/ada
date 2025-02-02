with GNATCOLL.JSON; use GNATCOLL.JSON;
with Ada.Strings.Unbounded;  use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Streams.Stream_IO; use Ada.Streams.Stream_IO;

package body JSON_Handler is

   function Load_JSON_Data(File_Path : String) return Person_List is
      File      : Ada.Text_IO.File_Type;
      File_Content : Unbounded_String;
      JSON_Data : JSON_Value;
      People    : JSON_Array;
      Person    : JSON_Value;
      Result    : Person_List(1 .. 100);  -- Taille maximale de 100 personnes
      Index     : Natural := 0;
   begin
      -- Ouvrir le fichier JSON
      Ada.Text_IO.Open(File, Ada.Text_IO.In_File, File_Path);

      -- Lire le contenu du fichier
      while not Ada.Text_IO.End_Of_File(File) loop
         Append(File_Content, Ada.Text_IO.Get_Line(File));
      end loop;

      -- Fermer le fichier
      Ada.Text_IO.Close(File);

      -- Parser le contenu JSON
      JSON_Data := Read(To_String(File_Content));

      -- Extraire le tableau "Noeud"
      People := Get(JSON_Data, "Noeud");
      -- Parcourir les personnes
      for I in 1 .. Length(People) loop
         Person := Get(People, I);
         Index := Index + 1;
         Result(Index) := (
            FirstName => Get(Person, "firstName"),
            LastName  => Get(Person, "lastName"),
            Key       => Get(Person, "Key"),
            Birthdate => Get(Person, "Birthdate")
         );
         --Put_Line (To_String(Result(Index).Key));
         --Put_Line (To_String(Result(Index).LastName));
         --Put_Line (To_String(Result(Index).FirstName));
         --Put_Line (To_String(Result(Index).Birthdate));
      end loop;

      -- Retourner la liste des personnes
      return Result;  -- Retourne uniquement les éléments remplis
   end Load_JSON_Data;

end JSON_Handler;