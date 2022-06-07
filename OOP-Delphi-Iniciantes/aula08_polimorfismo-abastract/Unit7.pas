unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, usuario;

type
  TForm7 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses
  pessoa, cliente;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var
  pessoa: TPessoa;
  cliente: TCliente;
  user: TUsuario;
begin
  Memo1.Clear;
  Memo2.Clear;

  pessoa:= TPessoa.Create;
  cliente:= TCliente.Create;

  user:= TUsuario.Create;
  try
    pessoa.Nome := 'Alessandro';
    pessoa.DataNascimento := '15/05/1992';

    cliente.Nome := 'Joao';
    cliente.CPF := '12345678910';
    cliente.DataNascimento := '20/01/1970';

    Memo1.Lines.Add('============Pessoa==============');
    Memo1.Lines.Add('Nome: ' + pessoa.Nome);
    Memo1.Lines.Add('Data Nascimento: ' + pessoa.DataNascimento);
    Memo1.Lines.Add('Idade: ' + pessoa.Idade.ToString);
    Memo1.Lines.Add('================================');
    Memo1.Lines.Add('');
    Memo1.Lines.Add('============Cliente==============');
    Memo1.Lines.Add('Nome: ' + cliente.Nome);
    Memo1.Lines.Add('Data Nascimento: ' + cliente.DataNascimento);
    Memo1.Lines.Add('Idade: ' + cliente.Idade.ToString);
    Memo1.Lines.Add('CPF: ' + cliente.cpf);
    Memo1.Lines.Add('Contrato: ' + Cliente.Contrato);
    Memo1.Lines.Add('=================================');

    Memo1.Lines.Add('usuario: ' + user.Contrato );

//    Memo2.Lines.Add('============Pessoa==============');
//    Memo2.Lines.Add(pessoa.RetornaDados);
//    Memo2.Lines.Add('================================');
    Memo2.Lines.Add('============Cliente==============');
    Memo2.Lines.Add(cliente.RetornaDados);
    Memo2.Lines.Add('=================================');
  finally
    cliente.Free;
    pessoa.Free;
  end;
end;

end.
