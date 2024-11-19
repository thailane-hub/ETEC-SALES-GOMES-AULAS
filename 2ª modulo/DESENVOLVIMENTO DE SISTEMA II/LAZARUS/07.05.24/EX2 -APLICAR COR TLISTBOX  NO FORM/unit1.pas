unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    //procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ListBox1Click(Sender: TObject);
var
   cor: string;  // VARIAVEL COR
begin
     cor := ListBox1.Items.Strings[ListBox1.itemIndex];

     // ESTA FORMA DE RESOLVER
     if cor = 'VERMELHO' then
     begin
       form1.color:= clred;
     end;

     // OU ESTA FORMA DE RESOLVER
     // PARA DEIXAR UM ITEM PREDEFINIDO (TEXTO) NO TLISTBOX SELECIONA A PROPRIEDADE ITEMS ...
     case cor of
     'AZUL': form1.color:= clblue;
     'AMARELO': form1.color:= clyellow;
     'CINZA': form1.color:= clgray;
     'AZUL CLARO': form1.color:= claqua;
     'MARRON': form1.color:= clmaroon;
     'PRETO': form1.color:= clblack;
     'ROSA': form1.color:= clfuchsia;
     'ROXO': form1.color:= clpurple;
     'VERDE': form1.color:= clgreen;
     end;

end;

//procedure TForm1.Button1Click(Sender: TObject);
//        var
//        cor: string;
//begin
//       cor := ListBox1.Items.Strings[ListBox1.itemIndex];
//
//     if cor = 'VERMELHO' then
//     begin
//       form1.color:= clred;
//       end;
//end;

end.

