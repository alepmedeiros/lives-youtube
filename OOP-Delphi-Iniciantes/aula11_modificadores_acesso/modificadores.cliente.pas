unit modificadores.cliente;

interface

uses
  modificadores.pessoa;

type
  TCliente = class(TPessoa)
  private
    FCPF: String;
  public
    property CPF: String read FCPF write FCPF;

    function DadosCompleto : String;
  end;

implementation

{ TCliente }

function TCliente.DadosCompleto: String;
begin

end;

end.
