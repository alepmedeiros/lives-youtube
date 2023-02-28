unit pessoajuridicaI;

interface

uses
  interfaces;

type
  TPessoaJuridicaI = class(TInterfacedObject, iPessoaJuridica)
  private
    FCNPJ: String;
    FPessoa: iPessoa;
  public
    constructor Create(Pessoa: iPessoa);
    destructor Destroy; override;
    class function New(Pessoa: iPessoa): iPessoaJuridica;
    function CNPJ(Value: String): iPessoaJuridica; overload;
    function CNPJ: String; overload;
    function &End: iPessoa;
  end;

implementation

{ TMyClass }

function TPessoaJuridicaI.&End: iPessoa;
begin
  Result := FPessoa;
end;

function TPessoaJuridicaI.CNPJ: String;
begin
  Result := FCNPJ;
end;

function TPessoaJuridicaI.CNPJ(Value: String): iPessoaJuridica;
begin
  Result := Self;
  FCNPJ := Value;
end;

constructor TPessoaJuridicaI.Create(Pessoa: iPessoa);
begin
  FPessoa := Pessoa;
end;

destructor TPessoaJuridicaI.Destroy;
begin

  inherited;
end;

class function TPessoaJuridicaI.New(Pessoa: iPessoa): iPessoaJuridica;
begin
  Result := Self.Create(Pessoa);
end;

end.
