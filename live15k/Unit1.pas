unit Unit1;

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
  Vcl.StdCtrls,
  endereco,
  interfaces,
  pessoainterface,
  pessoa,
  System.JSON,
  Rest.Json;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  pessoajuridica,
  pessoafisica;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  lJuridica: TPessoaJuridica;
  lFisica: TPessoaFisica;
  lEndereco: TEndereco;
  lResult: String;
begin
  lJuridica := TPessoaJuridica.New;
  lFisica := TPessoaFisica.New;

  lJuridica.Cnpj := '12.345.678/0001-99';
  lJuridica.Nome := 'Empresa';
  lJuridica.Email := 'empresa@email.com';

  lEndereco := TEndereco.New;

  lEndereco.Logradouro := 'rua teste';
  lEndereco.Numero := '321';
  lEndereco.Complemento := '56';
  lEndereco.Bairro := 'Bairro teste';
  lEndereco.Cidade := 'Cidade Teste';
  lEndereco.Estado := 'TE';

  lJuridica.endereco.Add(lEndereco);

  lResult := 'Nome: ' + lJuridica.Nome + ' Email: ' + lJuridica.Email;
  for lEndereco in lJuridica.endereco do
  begin
    lResult := lResult + ' Logradouro: ' + lEndereco.Logradouro;
    lResult := lResult + ' Numero: ' + lEndereco.Numero;
    lResult := lResult + ' Complemento: ' + lEndereco.Complemento;
    lResult := lResult + ' Bairro: ' + lEndereco.Bairro;
    lResult := lResult + ' Cidade: ' + lEndereco.Cidade;
    lResult := lResult + ' Estado: ' + lEndereco.Estado;
  end;

  Memo1.Lines.Add(lResult);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  lPessoa: iPessoa;
begin
  lPessoa := TPessoainterface.New.Nome('Alessandro')
    .Email('alessandro@email.com').endereco.Logradouro('Rua teste')
    .Numero('123').Complemento('32').Bairro('Teste').Cidade('Dos Testes')
    .Estado('TE').&End.Tipo.Fisica.CPF('123.456.789-10').&End;
  Memo1.Lines.Add(lPessoa.Nome);
  Memo1.Lines.Add(lPessoa.Email);
  Memo1.Lines.Add(lPessoa.endereco.Logradouro);
  Memo1.Lines.Add(lPessoa.endereco.Numero);
  Memo1.Lines.Add(lPessoa.endereco.Complemento);
  Memo1.Lines.Add(lPessoa.endereco.Bairro);
  Memo1.Lines.Add(lPessoa.endereco.Cidade);
  Memo1.Lines.Add(lPessoa.endereco.Estado);
  Memo1.Lines.Add(lPessoa.Tipo.Fisica.CPF);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  lPessoa: TPessoa;
  lEndereco: TEndereco;
begin
  lPessoa := TPessoa.New;
  lPessoa.Nome := 'Alessandro';
  lPessoa.Email := 'email@email.com';

  lEndereco := TEndereco.New;

  lEndereco.Logradouro := 'rua teste';
  lEndereco.Numero := '321';
  lEndereco.Complemento := '56';
  lEndereco.Bairro := 'Bairro teste';
  lEndereco.Cidade := 'Cidade Teste';
  lEndereco.Estado := 'TE';

  lPessoa.endereco.Add(lEndereco);

  lEndereco := TEndereco.New;

  lEndereco.Logradouro := 'Segundo enderecp';
  lEndereco.Numero := '321';
  lEndereco.Complemento := '56';
  lEndereco.Bairro := 'Bairro teste';
  lEndereco.Cidade := 'Cidade Teste';
  lEndereco.Estado := 'TE';

  lPessoa.Endereco.Add(lEndereco);

  Memo1.Lines.Add(TJSON.Format(lPessoa.ToJSON));
end;

end.
