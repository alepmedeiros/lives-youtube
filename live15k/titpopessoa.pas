unit titpopessoa;

interface

uses
  interfaces,
  pessoajuridicaI,
  pessoafisicai;

type
  TTipoPessoa = class(TInterfacedObject, iTipoPessoa)
  private
    FPessoa: iPessoa;
    FFisica: iPessoaFisica;
    FJuridica: iPessoaJuridica;
  public
    constructor Create(Pessoa: iPessoa);
    destructor Destroy; override;
    class function New(Pessoa: iPessoa): iTipoPessoa;
    function Juridica: iPessoaJuridica;
    function Fisica: iPessoaFisica;
  end;

implementation

{ TMyClass }

constructor TTipoPessoa.Create(Pessoa: iPessoa);
begin
  FPessoa := Pessoa;
end;

destructor TTipoPessoa.Destroy;
begin

  inherited;
end;

function TTipoPessoa.Fisica: iPessoaFisica;
begin
  if not Assigned(FFisica) then
    FFisica := TPessoaFisicai.New(FPessoa);
  Result := FFisica;
end;

function TTipoPessoa.Juridica: iPessoaJuridica;
begin
  if not Assigned(FJuridica) then
    FJuridica := TPessoaJuridicai.New(FPessoa);
  Result := FJuridica;
end;

class function TTipoPessoa.New(Pessoa: iPessoa): iTipoPessoa;
begin
  Result := Self.Create(Pessoa);
end;

end.
