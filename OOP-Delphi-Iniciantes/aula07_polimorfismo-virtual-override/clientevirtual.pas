unit clientevirtual;

interface

uses
  System.SysUtils,
  pessoa;

type
  TCliente = class(TPessoa)
  private
    FCPF: String;
  public
    property CPF: String read FCPF write FCPF;
    function RetornaDados : String; override;
  end;

implementation

{ TCliente }

function TCliente.RetornaDados: String;
begin
  Result := 'Nome: ' + Self.Nome +
            ', Data Nascimento: ' + Self.DataNascimento +
            ', Idade: ' + Self.Idade.ToString +
            ', CPF: ' + FCPF;
end;

end.
