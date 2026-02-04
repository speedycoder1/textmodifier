unit main;

// Textmodifier is a demo project
//

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  modlib, inputparametersform, StrUtils;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  if memo1.SelText='' then memo1.SelectAll;
  memo1.SelText:=RandomCase(memo1.SelText);
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
   if memo1.SelText='' then memo1.SelectAll;
  memo1.SelText:=ReverseString(memo1.SelText);
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  if memo1.SelText='' then memo1.SelectAll;
  ipar_form.ShowModal;
  ipar_form.label1.caption:='Replace text by using old=new.';
  memo1.SelText:=modlib.ReplaceText(memo1.seltext,Tstringlist(ipar_form.Memo1.lines));
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  if memo1.SelText='' then memo1.SelectAll;
   ipar_form.ShowModal;
  ipar_form.label1.caption:='Repeat text <number> times';
  memo1.SelText:=modlib.repeattext(memo1.seltext,Tstringlist(ipar_form.Memo1.lines));

//  memo1.SelText:=repeattext(memo1.SelText);
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  if memo1.SelText='' then memo1.SelectAll;
  memo1.SelText:=Hack(memo1.SelText);
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  if memo1.SelText='' then memo1.SelectAll;
  memo1.SelText:=Novowel(memo1.SelText);
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  if memo1.SelText='' then memo1.SelectAll;
  memo1.SelText:=Rip(memo1.SelText);
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  if memo1.SelText='' then memo1.SelectAll;
  memo1.SelText:=replacestr(memo1.SelText,' ','_');
end;

// no double space
procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  if memo1.SelText='' then memo1.SelectAll;
  memo1.SelText:=strutils.DelSpace1(memo1.SelText);
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  if memo1.SelText='' then memo1.SelectAll;
  memo1.SelText:=CountWordLength(memo1.SelText);
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
    if memo1.SelText='' then memo1.SelectAll;
  memo1.SelText:=Embrace(memo1.SelText,'add(''',''')');

end;




end.

https://onlinetexttools.com/


git commit -m 'Added countwordlength embrace reverse replacetext repeattext'  // time 15min



