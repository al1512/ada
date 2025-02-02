with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Interfaces; use Interfaces;

package utils is 

function Binary_To_String (Value : Interfaces.Unsigned_32) return String;
function Unbounded_String_To_Unsigned_32(Binary_String : Unbounded_String) return Unsigned_32;
function Bool_to_str(Bool : Boolean) return String;
end utils;