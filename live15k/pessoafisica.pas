unit pessoafisica;

interface

uses
  pessoa;

type
  TPessoaFisica = class(TPessoa)
  private
    FCPF: String;
  public
    property CPF: String read FCPF write FCPF;

    class function New: TPessoaFisica;
  end;

implementation

class function TPessoaFisica.New: TPessoaFisica;
begin
  Result := Self.Create;
end;

end.
