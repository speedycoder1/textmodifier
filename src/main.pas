unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  s: TCaption;
  ch , chout:char;
  buf: String;
begin
  buf:='';
  s:=memo1.text;
  for ch in s do
   begin
     if random(100)<50 then chout:=lowercase(ch) else chout:=upcase(ch);
     buf:=buf+chout;
   end;
  memo1.texT:=buf;
end;

end.

