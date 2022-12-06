unit dto.telefone;

interface

uses
  dto.interfaces, model.telefone, model.enums;

type
  TTelefoneDTO = class(TInterfacedObject, iTelefone)
    private
      FCliente : iCliente;
      FTelefone: TTelefone;
    public
      constructor Create(Cliente: iCliente);
      destructor Destroy; override;
      class function New(Cliente: iCliente) : iTelefone;
      function Numero(Value: String): iTelefone; overload;
      function Numero: String; overload;
      function Tipo(Value: String): iTelefone; overload;
      function Tipo: String; overload;
      function Build: iCliente;
  end;

implementation

function TTelefoneDTO.Build: iCliente;
begin
  FCliente.This.Telefone.Add(FTelefone);
  Result := FCliente;
end;

constructor TTelefoneDTO.Create(Cliente: iCliente);
begin
  FCliente := Cliente;
  FTelefone := TTelefone.New;
end;

destructor TTelefoneDTO.Destroy;
begin
  FTelefone.Free;
  inherited;
end;

class function TTelefoneDTO.New(Cliente: iCliente) : iTelefone;
begin
  Result := Self.Create(Cliente);
end;

function TTelefoneDTO.Numero: String;
begin
  Result := FTelefone.Numero;
end;

function TTelefoneDTO.Numero(Value: String): iTelefone;
begin
  Result := Self;
  FTelefone.Numero := Value;
end;

function TTelefoneDTO.Tipo(Value: String): iTelefone;
var
  lTipo: TTipoTElefone;
begin
  Result := Self;
  FTelefone.Tipo := lTipo.ToEnum(Value);
end;

function TTelefoneDTO.Tipo: String;
begin
  Result := FTelefone.Tipo.ToString;
end;

end.
