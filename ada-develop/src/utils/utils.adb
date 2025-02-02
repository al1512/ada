with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Interfaces; use Interfaces;


package body utils is 

   function Binary_To_String (Value : Interfaces.Unsigned_32) return String is
      -- Une chaîne pour stocker la représentation binaire (32 bits max)
      Result : String (1 .. 8) := (others => '0');
      Index  : Natural := 8; -- Index pour remplir la chaîne de droite à gauche
      Temp   : Interfaces.Unsigned_32 := Value;
      begin
         if Temp =  0 then 
            return "00000000";
         end if;
         while Temp > 0 and then Index > 0 loop
            if Temp mod 2 = 1 then
               Result (Index) := '1';
            end if;
            Temp := Temp / 2;
            Index := Index - 1;
         end loop;
         
      -- Retourner seulement la partie utile de la chaîne
      return Result;
   end Binary_To_String;

   function Unbounded_String_To_Unsigned_32(Binary_String : Unbounded_String) return Unsigned_32 is
      Result : Unsigned_32 := 0;
   begin
      -- Vérifier que la chaîne est valide (contient uniquement '0' et '1')
      for I in 1 .. Length(Binary_String) loop
         case Element(Binary_String, I) is
            when '1' =>
               Result := Result * 2 + 1;
            when '0' =>
               Result := Result * 2;
            when others =>
               raise Constraint_Error with "Invalid binary string: " & To_String(Binary_String);
         end case;
      end loop;

      return Result;
   end Unbounded_String_To_Unsigned_32;

   function Bool_to_str(Bool : Boolean) return String is
   begin
      if Bool then
         return "True";
      else 
         return "False";
      end if;
   end Bool_to_str;
end utils;