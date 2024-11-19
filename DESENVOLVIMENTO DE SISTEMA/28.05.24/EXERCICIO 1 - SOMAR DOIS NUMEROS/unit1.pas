unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  valor1,valor2: real;
  resultado:real;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Edit1Change(Sender: TObject);
begin
  valor1:= StrToFloat(Edit1.text);
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  valor2:= StrToFloat(Edit2.text);
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
    resultado:= valor1 + valor2;
    MessageDlg('Resultado: ' + FloatToStr(resultado), mtConfirmation, [mbOK], 0);
end;


end.

