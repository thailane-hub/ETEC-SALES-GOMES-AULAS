unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,StrUtils;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure verificar();
  private

  public

  end;

var
  Form1: TForm1;
  x,n,y,z: integer;
  v1,v2,v3: string;
  n1,n2,n3: string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.verificar();
begin
       if (Edit4.text = '') or (Edit5.text = '') then
       begin
              if Edit6.text = ''then
              begin
                     MessageDlg('Prencha todos os Campos',mtConfirmation,[mbOk],0);
              end;

                  Edit7.text := '';
       end;


end;




procedure TForm1.Button1Click(Sender: TObject);
var valor : array[0..2] of string;
begin

       n:= random(30);
       y:= random(30);
       z:= random(30);

       valor[0]:= IntToStr(n);
       valor[1]:= IntToStr(y);
       valor[2]:= IntToStr(z);

       verificar();

       Edit7.text := valor[0] +' '+valor[1]+' '+Valor[2];

       if AnsiMatchStr(Edit4.text,valor) and AnsiMatchStr(Edit5.text,valor) then
       begin
           if  AnsiMatchStr(Edit6.text,valor) then
           begin
           ShowMessage('Parabens você ganhou !!!');
           Edit4.text:='';
           Edit5.text:='';
           Edit6.text:='';
           Edit7.text:='';
           end;
              sleep(2000);
       end;
end;


end.

