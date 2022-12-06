unit controller;

interface

uses
  dto.interfaces,
  dto.cliente;

type
  TController = class(TInterfacedObject, iController)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iController;
    function cliente: iCliente; overload;
    function Cliente(Value: String): iCliente; overload;
  end;

implementation

function TController.cliente: iCliente;
begin
  Result := TClienteDTO.New;
end;

function TController.cliente(Value: String): iCliente;
begin
  Result := TClienteDTO.New(Value);
end;

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin

  inherited;
end;

class function TController.New: iController;
begin
  Result := Self.Create;
end;

end.
