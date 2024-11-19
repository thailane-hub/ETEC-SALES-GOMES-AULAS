unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    btn6: TImage;
    btn5: TImage;
    btn4: TImage;
    btnSub: TImage;
    btn1: TImage;
    btn2: TImage;
    btn3: TImage;
    btnSum: TImage;
    Image18: TImage;
    btnDot: TImage;
    btnAC: TImage;
    btnEqual: TImage;
    btnBackspace: TImage;
    btnPorcentage: TImage;
    btnDivider: TImage;
    btn7: TImage;
    btn8: TImage;
    btn9: TImage;
    btnMultiply: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btnACClick(Sender: TObject);
    procedure btnDividerClick(Sender: TObject);
    procedure btnEqualClick(Sender: TObject);
    procedure btnMultiplyClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure btnSumClick(Sender: TObject);
    procedure Entrada(n1: string);
    procedure btn7Click(Sender: TObject);
    procedure btnPorcentageClick(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Limpar();
  private

  public

  end;

var
  Form1: TForm1;
  valor1: string;
  valor2: string;
  resultado: real;
  operador: string;
  passo: string;
  historico: string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Limpar();
begin
  valor1 := '';
  valor2 := '';
  operador := '';
  historico := '';
end;

procedure TForm1.Entrada(n1: string);
begin

  if (operador <> '+') and (operador <> '-') and (operador <> 'x') and (operador <> '/') then
  begin
       valor1 := valor1 + n1;
       historico := historico + n1;
       Label1.Caption:= valor1;
       Label2.Caption := historico;
  end
  else
  begin
       valor2 := valor2 + n1;
       historico := historico + n1;
       Label1.Caption:= valor2;
       Label2.Caption := historico;
  end;


end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  Form1.Entrada('8');
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  Form1.Entrada('6');
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  Form1.Entrada('5');
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  Form1.Entrada('4');
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  Form1.Entrada('1');
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Form1.Entrada('2');
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  Form1.Entrada('3');
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  Form1.Entrada('9');
end;

procedure TForm1.btnACClick(Sender: TObject);
begin
  Form1.Limpar();
  Label1.Caption := '0';
  Label2.Caption := '';
end;

procedure TForm1.btnDividerClick(Sender: TObject);
begin
  operador := '/';
  historico := historico + operador;
  Label2.Caption := historico;
end;

procedure TForm1.btnEqualClick(Sender: TObject);
begin
  if operador = '+' then
     resultado := StrToFloat(valor1) + StrToFloat(valor2);

  if operador = '-' then
     resultado := StrToFloat(valor1) - StrToFloat(valor2);

  if operador = 'x' then
     resultado := StrToFloat(valor1) * StrToFloat(valor2);

  if operador = '/' then
     resultado := StrToFloat(valor1) / StrToFloat(valor2);

  Label1.Caption:= FloatToStr(resultado);

  Form1.limpar();
end;

procedure TForm1.btnMultiplyClick(Sender: TObject);
begin
  operador := 'x';
  historico := historico + operador;
  Label2.Caption := historico;
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
  operador := '-';
  historico := historico + operador;
  Label2.Caption := historico;
end;

procedure TForm1.btnSumClick(Sender: TObject);
begin
  operador := '+';
  historico := historico + operador;
  Label2.Caption := historico;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  Form1.Entrada('7');
end;

procedure TForm1.btnPorcentageClick(Sender: TObject);
begin
 if operador = '+' then
     resultado := StrToFloat(valor1) + (StrToFloat(valor1)*(StrToFloat(valor2)/100));

  if operador = '-' then
     resultado := StrToFloat(valor1) - StrToFloat(valor2);

  if operador = 'x' then
     resultado := StrToFloat(valor1) * StrToFloat(valor2);

  if operador = '/' then
     resultado := StrToFloat(valor1) / StrToFloat(valor2);

  Label1.Caption:= FloatToStr(resultado);

  Form1.limpar();
end;

procedure TForm1.Image18Click(Sender: TObject);
begin
  Form1.Entrada('0');
end;


end.

