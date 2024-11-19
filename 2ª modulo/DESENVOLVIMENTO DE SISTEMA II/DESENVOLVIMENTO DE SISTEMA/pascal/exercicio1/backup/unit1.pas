unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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


  if(Form1.Color = Clred)then
  begin
  Form1.Color := Cldefault;
  Form1.Caption := 0;
  Button2.Enabled := true;
  Button3.Enabled := true;
  Button4.Enabled := true;
  Button5.Enabled := true;
  end

  else
  begin
  Form1.Color := Clred;
  Form1.Caption := 'Vermelho';
  Button2.Enabled := false;
  Button3.Enabled := false;
  Button4.Enabled := false;
  Button5.Enabled := false;
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Color := Clblue;
    Form1.Caption := 'Azul';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    Form1.Color := Clyellow;
    Form1.Caption := 'Amarelo';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    Form1.Color := Clgreen;
    Form1.Caption := 'Verde';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    Form1.Color := Clpurple;
    Form1.Caption := 'Roxo';
end;

end.

