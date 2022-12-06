unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPessoa = record
    Nome: String;
    SobreNome: String;
  end;

  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel4: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FPessoa: Array[0..9] of TPessoa;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  lv1: Array[1..3] of integer;
  lv2: Integer;
  lv3: Array of integer;
  I: Integer;
  lnome: String;
const
  diaSemana: Array[1..7] of string = ('domingo', 'segunda','terca','quarta','quinta','sexta','sabado');
begin
  Memo1
    .Lines
      .Add(FPessoa[StrToInt(Edit1.Text)].Nome + ' ' +
          FPessoa[StrToInt(Edit1.Text)].SobreNome);

//  lnome := 'ALESSANDRO';
//  for I := 1 to Length(lnome) do
//    Memo1.Lines.Add(lnome[i]);
//  for I := 1 to 7 do
//    Memo1.Lines.Add(diasemana[i]);

//  lv1[1] := 10;
//  lv1[2] := 11;
//  lv1[3] := 20;
//
//  lv2 := 0;
//  for I := 1 to 3 do
//    lv2 := lv2+lv1[I];
//  Memo1.Lines.Add('Array static');
//  Memo1.Lines.Add(lv2.ToString);

//  SetLength(lv3, 4);
//
//  lv3[0] := 10;
//  lv3[1] := 20;
//  lv3[2] := 30;
//  lv3[3] := 40;
//
//  Memo1.Lines.Add('');
//  Memo1.Lines.Add('Array dinamica');
//  for I := 0 to Length(lv3) do
//  begin
//    if i = 4 then
//    begin
//      SetLength(lv3, Length(lv3)+1);
//      lv3[i] := 50;
//    end;
//    Memo1.Lines.Add(lv3[i].ToString);
//  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  lPessoa: TPessoa;
begin
  lPessoa.Nome := Edit2.Text;
  lPessoa.SobreNome := Edit3.Text;
  FPessoa[StrToInt(Edit1.Text)] := lPessoa;
end;

end.
