unit main;

// Textmodifier is a demo project
//

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus,
  modlib, StrUtils;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);

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



end.


git commit -m 'Added nodoublespace Underscore'  // time 15min
