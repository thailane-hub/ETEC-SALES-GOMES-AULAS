unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
  valor1: real;
  valor2:real;
  resultado:real;

implementation


{$R *.lfm}

{ TForm1 }


   procedure TForm1.Edit1Change(Sender: TObject);
begin
  valor1:=StrtoFloat(Edit1.text);
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  valor2:=StrtoFloat(Edit2.text);
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
  resultado:=valor1/(valor2*valor2);

end;






end.

