unit cliente;

interface

uses
  pessoa;

type
  TCliente = class(TPessoa)
  private
  public
    ValorCredito: Currency;
  end;

implementation

end.
