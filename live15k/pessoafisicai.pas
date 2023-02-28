unit pessoafisicai;

interface

uses
  System.SysUtils,
  System.RegularExpressions,
  interfaces;

type
  TPessoaFisicaI = class(TInterfacedObject, iPessoaFisica)
  private
    FCPF: String;
    FPessoa: iPessoa;
  public
    constructor Create(Pessoa: iPessoa);
    destructor Destroy; override;
    class function New(Pessoa: iPessoa): iPessoaFisica;
    function CPF(Value: String): iPessoaFisica; overload;
    function CPF: String; overload;
    function &End: iPessoa;
  end;

implementation

{ TMyClass }

function TPessoaFisicaI.&End: iPessoa;
begin
  Result := FPessoa;
end;

function TPessoaFisicaI.CPF: String;
begin
  Result := FCPF;
end;

function TPessoaFisicaI.CPF(Value: String): iPessoaFisica;
begin
  Result := Self;
  if not TRegEx.IsMatch(Value, '^\d{3}\.\d{3}\.\d{3}\-?\d{2}$') then
  begin
    raise Exception.Create('CPF invalido');
    exit;
  end;
  FCPF := VAlue;
end;

constructor TPessoaFisicaI.Create(Pessoa: iPessoa);
begin
  FPessoa := Pessoa;
end;

destructor TPessoaFisicaI.Destroy;
begin

  inherited;
end;

class function TPessoaFisicaI.New(Pessoa: iPessoa): iPessoaFisica;
begin
  Result := Self.Create(Pessoa);
end;

end.
