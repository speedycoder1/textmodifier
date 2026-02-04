{text modification library }
unit modlib;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

function RandomCase(s:string): string;

implementation
function RandomCase(s:string): string;

  var
  ch , chout:char;
  buf: String;
begin
  if s='' then exit('');
  buf:='';
  for ch in s do
   begin
     if random(100)<50 then chout:=lowercase(ch) else chout:=upcase(ch);
     buf:=buf+chout;
   end;
  exit(buf);
end;

end.

