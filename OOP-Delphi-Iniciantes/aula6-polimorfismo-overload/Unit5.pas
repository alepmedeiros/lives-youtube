unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  Form5: TForm5;

implementation

uses
  pessoa, cliente;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
  Pessoa: TPEssoa;
  Cliente: TCliente;
begin
  Memo1.Clear;
  Pessoa:= TPEssoa.Create;
  Cliente:= TCliente.Create;
  try
    pessoa.Nome := 'Alessandro';
    pessoa.DataNascimento:= '15/10/2000';
    pessoa.Email := 'alessandro@gmail.com';

    Memo1.Lines.Add('Nome: ' + pessoa.Nome);
    Memo1.Lines.Add('DataNascimento: ' + pessoa.DataNascimento);
    Memo1.Lines.Add('Email: ' + pessoa.Email);
    Memo1.Lines.Add('Idade: ' + pessoa.Idade.ToString);
    Memo1.Lines.Add('Receber int: ' + Cliente.Receber(1));
    Memo1.Lines.Add('Receber Curr : ' + Cliente.Receber(10.50));
    Memo1.Lines.Add('ValorCredito: ' + CurrToStr(Cliente.ValorCredito));
  finally
    pessoa.free;
    cliente.free;
  end;
end;

end.
