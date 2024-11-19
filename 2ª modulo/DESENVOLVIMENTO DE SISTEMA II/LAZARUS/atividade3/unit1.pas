unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    confirmar: TLabel;
    Image1: TImage;
    bnt6: TImage;
    bnt7: TImage;
    bnt8: TImage;
    bnt9: TImage;
    bnt0: TImage;
    branco: TImage;
    corrige: TImage;
    confirma: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    bnt1: TImage;
    bnt2: TImage;
    bnt3: TImage;
    bnt4: TImage;
    bnt5: TImage;
    Image5: TImage;
    Image6: TImage;
    Label1: TLabel;
    procedure bnt0Click(Sender: TObject);
    procedure bnt1Click(Sender: TObject);
    procedure bnt2Click(Sender: TObject);
    procedure bnt3Click(Sender: TObject);
    procedure bnt4Click(Sender: TObject);
    procedure bnt5Click(Sender: TObject);
    procedure bnt6Click(Sender: TObject);
    procedure bnt7Click(Sender: TObject);
    procedure bnt8Click(Sender: TObject);
    procedure bnt9Click(Sender: TObject);
    procedure confirmaClick(Sender: TObject);
    procedure corrigeClick(Sender: TObject);
    procedure entrada(numero:string);
    procedure FormCreate(Sender: TObject);
    procedure confirmarClick(Sender: TObject);
    procedure limpar();
    procedure inicializar ();
    procedure verificar ();

  private

  public

  end;

var
  Form1: TForm1;
  valor1:string;

  candidato : array [1..3] of record
            nome: string;
            number1:string;
  end;

implementation

{$R *.lfm}

{ TForm1 }
procedure Tform1.verificar();
var i : integer;
begin
  for i:=1 to 3 do
  begin
    if valor1 =  candidato[i].number1 then
    begin
       label1.caption:= candidato[i].nome;
        if valor1 = '13' then
           image3.visible:=true;
    end;
      if valor1 =  candidato[i].number1 then
    begin
       label1.caption:= candidato[i].nome;
        if valor1 = '18' then
           image5.visible:=true;
    end;
        if valor1 =  candidato[i].number1 then
    begin
       label1.caption:= candidato[i].nome;
        if valor1 = '22' then
           image6.visible:=true;
    end;
  end;

end;

procedure TForm1.inicializar();
begin
  candidato[1].nome := 'Luiz Inacio Lula da Silva';
  candidato[1].number1 := '13';

  candidato[2].nome := 'Jair Messias Bolsonario';
  candidato[2].number1 := '22';

  candidato[3].nome := 'Marina Silva';
  candidato[3].number1 := '18';
end;

procedure  TForm1.limpar();
begin
    valor1 := '';
    label1.caption := '';
end;

procedure TForm1.entrada(numero:string);
begin
      valor1:= valor1 + numero;
      Label1.Caption := valor1;
      Form1.verificar();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
           Form1.inicializar();
end;

procedure TForm1.confirmarClick(Sender: TObject);
begin

end;

procedure TForm1.bnt1Click(Sender: TObject);
begin
  Form1.entrada('1');
end;

procedure TForm1.bnt0Click(Sender: TObject);
begin
    Form1.entrada('0');
end;

procedure TForm1.bnt2Click(Sender: TObject);
begin
  Form1.entrada('2');
end;

procedure TForm1.bnt3Click(Sender: TObject);
begin
    Form1.entrada('3');
end;

procedure TForm1.bnt4Click(Sender: TObject);
begin
    Form1.entrada('4');
end;

procedure TForm1.bnt5Click(Sender: TObject);
begin
    Form1.entrada('5');
end;

procedure TForm1.bnt6Click(Sender: TObject);
begin
    Form1.entrada('6');
end;

procedure TForm1.bnt7Click(Sender: TObject);
begin
    Form1.entrada('7');
end;

procedure TForm1.bnt8Click(Sender: TObject);
begin
    Form1.entrada('8');
end;

procedure TForm1.bnt9Click(Sender: TObject);
begin
    Form1.entrada('9');
end;

procedure TForm1.confirmaClick(Sender: TObject);
begin
     image3.visible:=false;
     image5.visible:=false;
     image6.visible:=false;
     label1.visible:= false;
     confirmar.caption:= 'Votoção Feita com Sucesso';
end;

procedure TForm1.corrigeClick(Sender: TObject);
begin
  Form1.limpar();
  image3.visible:=false;
  image5.visible:=false;
  image6.visible:=false;
   confirmar.caption:= '';
end;



end.

