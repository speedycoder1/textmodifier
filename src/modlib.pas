{text modification library }
unit modlib;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, StrUtils;

function RandomCase(s:string): string;
function Hack(s:string): string;
function Novowel(s:string): string;
function Rip(s:string): string;
function CountWordLength(s:string): string;
function Embrace(s:string;pre,post:string): string;
function ReplaceText(s:string;replaceby:Tstringlist): string;
function RepeatText(s:string;repeatby:Tstringlist): string;


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

function Rip(s:string): string;
var
ch , chout:char;
buf: String;
begin
  if s='' then exit('');
  buf:='';
  for ch in s do
   begin
    if ch in [''''] then buf:=buf+ch else buf:=buf+ch+' ';
   end;
  exit(buf);
end;

// replaces with the word length
function countwordlength(s:string): string;

var
 chout:char;
 w:string;
buf: String;
begin
  if s='' then exit('');
  buf:='';
  for w in s.split('  ') do
     buf:=buf+format(' %d ',[length(w)] );
  exit(buf);
end;

function Embrace(s:string;pre,post:string): string;

var
 chout:char;
 w:string;
buf: String;
begin
  if s='' then exit('');
  buf:='';
  for w in s.split(chr($0a)) do
     buf:=buf+pre+w+post+chr($0a);
  exit(buf);
end;

function ReplaceText(s:string;replaceby:Tstringlist): string;
var
buf, old, new_, line: String;
 i: Integer;
begin
  if s='' then exit('');
  for i:=0 to replaceby.count-1 do
   begin
     line:=trim(replaceby[i]);
     if (line='') or (pos('=',line)<0) then continue;
     old:=line.split('=')[0];
     new_:=line.split('=')[1];
     s:=replacestr(s,old,new_ );
   end;
  exit(s);

end;

function RepeatText(s:string;repeatby:Tstringlist): string;
var
  i: Integer;
begin
   result:=s;
   for i:=1 to strtoint(repeatby[0]) do result:=result+s;


end;


end.



