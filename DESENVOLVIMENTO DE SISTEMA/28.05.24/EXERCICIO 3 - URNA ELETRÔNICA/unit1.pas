unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ActnList;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnbranco: TImage;
    mito: TImage;
    Image1: TImage;
    btn8: TImage;
    btn7: TImage;
    btn0: TImage;
    btncorrige: TImage;
    btnconfirma: TImage;
    Image2: TImage;
    btn1: TImage;
    btn2: TImage;
    btn3: TImage;
    btn6: TImage;
    btn5: TImage;
    btn4: TImage;
    btn9: TImage;
    lula: TImage;
    Label1: TLabel;
    Label2: TLabel;
    daciolo: TImage;
    dilma: TImage;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btncorrigeClick(Sender: TObject);
    procedure Entrada(n1: string);
    procedure FormCreate(Sender: TObject);
    procedure btnconfirmaClick(Sender: TObject);
    procedure btnbrancoClick(Sender: TObject);



    procedure limpar();
    procedure inicializar();
    procedure verificar();
  private

  public

  end;

var
  Form1: TForm1;
  valor1: string;

  candidato : array [1..4] of record
             nome: string;
             numero: string;
  end;

implementation

{$R *.lfm}


{ TForm1 }

procedure TForm1.inicializar();
begin

      candidato[1].nome := 'Dilma';
      candidato[1].numero := '31';

      candidato[2].nome := 'Cabo Daciolo';
      candidato[2].numero := '15';

      candidato[3].nome := 'Mito';
      candidato[3].numero := '22';

      candidato[4].nome := 'Lulinha';
      candidato[4].numero := '13';

end;

procedure Tform1.verificar();
var i : integer;
  begin
        for i:= 1 to 4 do
        begin
          if valor1 = candidato[i].numero then
          begin
             if valor1 = '13' then
             lula.visible := true;
             label2.caption := candidato[i].nome;
             label1.caption := '';

             if valor1 = '15' then
             daciolo.visible := true;
             label2.caption := candidato[i].nome;
             label1.caption := '';

             if valor1 = '22' then
             mito.visible := true;
             label2.caption := candidato[i].nome;
             label1.caption := '';

             if valor1 = '31' then
             dilma.visible := true;
             label2.caption := candidato[i].nome;
             label1.caption := '';

          end;
        end;
  end;


procedure TForm1.limpar();
begin
     valor1:= '';
     label1.caption:= '';
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

procedure TForm1.btn4Click(Sender: TObject);
begin
     Form1.Entrada('4');
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
     Form1.Entrada('5');
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
     Form1.Entrada('6');
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
     Form1.Entrada('7');
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
     Form1.Entrada('8');
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
     Form1.Entrada('9');
end;

procedure TForm1.btn0Click(Sender: TObject);
begin
     Form1.Entrada('0');
end;

procedure TForm1.Entrada(n1: string);

begin
     valor1:= valor1 + n1;
     Label1.Caption :=  valor1;
     Form1.verificar();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.inicializar();
end;

procedure TForm1.btnconfirmaClick(Sender: TObject);
begin

             lula.visible := false;
             daciolo.visible := false;
             mito.visible := false;
             dilma.visible := false;
             label2.caption := 'VOTO CONFIRMADO';
             label1.caption := '';

end;

procedure TForm1.btnbrancoClick(Sender: TObject);
begin
      label2.caption := 'VOTO NULO';
end;


procedure TForm1.btncorrigeClick(Sender: TObject);
begin
    limpar();
    Label1.caption := '';
                   lula.visible := false;
                   daciolo.visible := false;
                   mito.visible := false;
                   dilma.visible := false;
                   label2.caption := 'VOTAÇÃO - ESCOLHA SEU CANDIDATO';
end;

end.

