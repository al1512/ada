with GNATCOLL.JSON; use GNATCOLL.JSON;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;


package JSON_Handler is

   -- Type pour représenter une personne
   type Person is record
      FirstName : Unbounded_String;
      LastName  : Unbounded_String;
      Key       : Unbounded_String;
      Birthdate : Unbounded_String;
   end record;

   -- Type pour représenter une liste de personnes
   type Person_List is array (Positive range <>) of Person;

   -- Fonction pour charger les données JSON
   function Load_JSON_Data(File_Path : String) return Person_List;

end JSON_Handler;