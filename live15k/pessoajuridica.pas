unit pessoajuridica;

interface

uses
  pessoa;

type
  TPessoaJuridica = class(TPessoa)
  private
    FCNPJ: String;
  public
    property CNPJ: String read FCNPJ write FCNPJ;

    class function New: TPessoaJuridica;
  end;

implementation

class function TPessoaJuridica.New: TPessoaJuridica;
begin
  Result := Self.Create;
end;

end.
