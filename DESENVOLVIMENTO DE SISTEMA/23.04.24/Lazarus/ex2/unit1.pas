unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnVermelho: TButton;
    btnAzul: TButton;
    btnVerde: TButton;
    btnAmarelo: TButton;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    procedure btnAzulClick(Sender: TObject);
    procedure btnVerdeClick(Sender: TObject);
    procedure btnVermelhoClick(Sender: TObject);
    procedure btnAmareloClick(Sender: TObject);
    procedure btnVermelhoMouseEnter(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnVermelhoClick(Sender: TObject);
begin
  Form1.Color:=  clRed;
end;

procedure TForm1.btnAmareloClick(Sender: TObject);
begin
    Form1.Color := clYellow;
end;

procedure TForm1.btnVermelhoMouseEnter(Sender: TObject);
begin
   Panel1.Caption := 'Vermelho';
end;

procedure TForm1.btnAzulClick(Sender: TObject);
begin
  Form1.Color := clBlue;
end;

procedure TForm1.btnVerdeClick(Sender: TObject);
begin
  Form1.Color := clGreen;
end;

end.

