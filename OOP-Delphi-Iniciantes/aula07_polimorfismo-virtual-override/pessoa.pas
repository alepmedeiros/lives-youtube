unit pessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
  private
    FNome: String;
    FDataNascimento: String;
  public
    property Nome: String read FNome write FNome;
    property DataNascimento: String read FDataNascimento write FDataNascimento;
    function Idade : Integer;
    function RetornaDados : String; virtual;
  end;

implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  Result := Trunc((now - StrToDate(FDataNascimento)) / 365.25);
end;

function TPessoa.RetornaDados: String;
begin
  Result := 'Nome: ' + FNome +
            ', Data Nascimento: ' + FDataNascimento +
            ', Idade: ' + Self.Idade.ToString;
end;

end.
