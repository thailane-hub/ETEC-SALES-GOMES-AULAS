unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
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
  valor1: integer;
  valor2: integer;
  resultado:integer;
begin
  valor1:= StrToInt(Edit1.Text);
  valor2:= StrToInt(Edit2.Text);
  resultado := valor1 + valor2;
  ShowMessage(IntToStr(resultado));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Enabled := false;
  Button1.Enabled := false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit1.Enabled := true;
  Button1.Enabled := true;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Form2.show();
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

end.

