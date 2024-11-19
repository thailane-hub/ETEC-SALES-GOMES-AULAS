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
    Label1: TLabel;
    resultadoimc: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText5: TStaticText;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure resultadoimcClick(Sender: TObject);



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

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.Image4Click(Sender: TObject);
begin

end;

procedure TForm1.Image6Click(Sender: TObject);
begin
      valor1:= StrToFloat(Edit1.text);
      valor2:= StrToFloat(Edit2.text);
   resultado:= valor1/(valor2*valor2);
   resultadoimc.caption := FloatToStr(resultado);
   resultadoimc.Visible:= true;

    if (resultado >= 18.5) and (resultado <= 35) then
    showMessage('Parabéns! Seu IMC está ótimo!')
   else
    showMessage('Seu IMC está fora da faixa ideal.')

end;

procedure TForm1.resultadoimcClick(Sender: TObject);
begin

end;








end.

