unit pessoa;

interface

uses
  system.SysUtils;

type
  TPessoa = class
  private
    FNome: String;
    FDataNascimento: String;
    FDados: String;
    FNomeClass: String;
  public
    property Nome: String read FNome write FNome;
    property DataNascimento: String read FDataNascimento write FDataNascimento;
    property Dados: String read FDados write FDados;
    property NomeClass: String read FNomeClass write FNomeClass;
    function Idade : Integer;
    function RetornaDados : String; virtual;
    function Contrato : String; virtual; abstract;
  end;

implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  Result := Trunc((now - StrToDate(FDataNascimento)) / 365.25);
end;

function TPessoa.RetornaDados: String;
begin
  NomeClass := 'TPessoa';
  Dados := 'Nome: ' + FNome +
            ', Data Nascimento: ' + FDataNascimento +
            ', Idade: ' + Self.Idade.ToString;
end;

end.
