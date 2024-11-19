unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ListBox1: TListBox;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PopupMenu1: TPopupMenu;
    RadioButton1: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ExibirMensagem();
    procedure MenuItem3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;


implementation

{$R *.lfm}

procedure TForm1.ExibirMensagem();
begin
     ShowMessage('Olá');
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
    ShowMessage('Deseja realmente sair do programa?');
end;

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
    ExibirMensagem();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
      ShowMessage('Olá 2');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.setFocus();
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Listbox1.Items.Add('Olá');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Listbox1.DeleteSelected;
end;


end.

