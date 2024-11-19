unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    ListBox1: TListBox;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    PopupMenu1: TPopupMenu;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
     if (MessageDlg('Deseja sair do programa ?', mtInformation, [mbYes, mbNo],0) = mrYes ) then
     begin
          close;
     end;
  end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    Label1.Caption:= 'Hello World';
    Label1.Font.Color:= clRed;
    Button1.Enabled:= false;
    Button1.Visible:= false;
    Edit1.Text:= 'Texto';
    Edit1.Setfocus;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     Listbox1.Items.Add(Edit2.Text);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     Listbox1.DeleteSelected;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
           if (MessageDlg('Deseja sair do programa ?', mtInformation, [mbYes, mbNo],0) = mrYes ) then
     begin
          close;
     end;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
       if (MessageDlg('Deseja sair do programa ?', mtInformation, [mbYes, mbNo],0) = mrYes ) then
     begin
          close;
     end;
end;


end.

