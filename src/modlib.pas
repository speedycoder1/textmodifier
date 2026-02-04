{text modification library }
unit modlib;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

function RandomCase(s:string): string;
function Hack(s:string): string;
function Novowel(s:string): string;


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

function Hack(s:string): string;

  var
  ch , chout:char;
  buf: String;
//  'abcdefghijklmnopqrstuvwxyz'

begin
  if s='' then exit('');
  buf:='';
  for ch in s do
   begin
     case ch of
        'I','i',     'l','L' :
         chout:='1';
     'e','E' :
        chout:='3';
     'o','O' :
        chout:='0';
     's','z','S','Z' :
        chout:='5';

     else
       chout:=ch;
     end;
     buf:=buf+chout;
   end;
  exit(buf);
end;

function Novowel(s:string): string;
var
ch , chout:char;
buf: String;
begin
  if s='' then exit('');
  buf:='';
  for ch in s do
   begin
     if not(lowercase(ch) in ['a','e','i','o','u']) then buf:=buf+ch;
   end;
  exit(buf);
end;

end.

