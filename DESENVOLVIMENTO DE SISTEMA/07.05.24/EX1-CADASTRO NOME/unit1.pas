unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Remover: TButton;
    Cadastrar: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ListBox1: TListBox;
    procedure CadastrarClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RemoverClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.RemoverClick(Sender: TObject);
begin
     Listbox1.DeleteSelected;
end;

procedure TForm1.CadastrarClick(Sender: TObject);
begin
     Listbox1.Items.add(Edit1.text+' '+Edit2.text)
end;

end.

