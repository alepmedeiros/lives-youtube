unit Unit4;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  pessoa,
  cliente;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  pessoa1: TPessoa;
  pessoa2: TCliente;
begin
  Memo1.Clear;
  pessoa1 := TPessoa.Create;
  pessoa2 := TCliente.Create;
  try
    pessoa1.Nome := 'Alessandro';
    pessoa1.DataNascimento := '10/05/1996';
    pessoa1.Email := 'alemedeiros@bsd.com.br';

    pessoa2.Nome := 'Vicente';
    pessoa2.DataNascimento := '05/03/1990';
    pessoa2.Email := 'vicente@gmail.com';
    pessoa2.ValorCredito := 2000;

    Memo1.Lines.Add('Pessoa: ');
    Memo1.Lines.Add('Nome: ' + pessoa1.Nome);
    Memo1.Lines.Add('Data de nascimento: ' + pessoa1.DataNascimento);
    Memo1.Lines.Add('Idade: ' + pessoa1.Idade.ToString);
    Memo1.Lines.Add('Email: ' + pessoa1.Email);
    Memo1.Lines.Add('======================');
    Memo1.Lines.Add('Cliente: ');
    Memo1.Lines.Add('Nome: ' + pessoa2.Nome);
    Memo1.Lines.Add('Data de nascimento: ' + pessoa2.DataNascimento);
    Memo1.Lines.Add('Idade: ' + pessoa2.Idade.ToString);
    Memo1.Lines.Add('Valor de credito: ' + CurrToStr(pessoa2.ValorCredito));
    Memo1.Lines.Add('Email: ' + pessoa2.Email);
    Memo1.Lines.Add('======================');
  finally
    pessoa1.Free;
    pessoa2.Free;
  end;
end;

end.
