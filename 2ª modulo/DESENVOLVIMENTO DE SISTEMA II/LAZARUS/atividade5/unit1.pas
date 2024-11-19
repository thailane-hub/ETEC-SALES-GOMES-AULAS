unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, CheckLst, ExtCtrls,
  ActnList, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
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
     ListBox1.Items.Add(Edit1.text);
     Edit1.text:='';
end;

procedure TForm1.Button2Click(Sender: TObject);

   begin
     if ListBox1.ItemIndex < 0 then
     begin
     MessageDlg('Nenhum Item Selecionado',mtWarning,[mbok],0);
     exit;
     end;

     ListBox2.Items.Add( ListBox1.Items.Strings[ListBox1.ItemIndex] );
     ListBox1.Items.Delete(ListBox1.ItemIndex);

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     if ListBox2.ItemIndex < 0 then
     begin
     MessageDlg('Nenhum Item Selecionado',mtWarning,[mbok],0);
     exit;
     end;

     ListBox3.Items.Add( ListBox2.Items.Strings[ListBox2.ItemIndex] );
     ListBox2.Items.Delete(ListBox2.ItemIndex);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
     if ListBox3.ItemIndex < 0 then
     begin
     MessageDlg('Nenhum Item Selecionado',mtWarning,[mbok],0);
     exit;
     end;

     ListBox2.Items.Add( ListBox3.Items.Strings[ListBox3.ItemIndex] );
     ListBox3.Items.Delete(ListBox3.ItemIndex);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     if ListBox2.ItemIndex < 0 then
     begin
     MessageDlg('Nenhum Item Selecionado',mtWarning,[mbok],0);
     exit;
     end;

     ListBox1.Items.Add( ListBox2.Items.Strings[ListBox2.ItemIndex] );
     ListBox2.Items.Delete(ListBox2.ItemIndex);
end;


procedure TForm1.Button6Click(Sender: TObject);
begin
        ListBox3.Items.Delete(ListBox3.ItemIndex);
     MessageDlg('Tarefa Finalizada com Sucesso',mtInformation,[mbok],0);

end;

end.

