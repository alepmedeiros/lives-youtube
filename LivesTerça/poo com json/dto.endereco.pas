unit dto.endereco;

interface

uses
  dto.interfaces,
  model.endereco;

type
  TEnderecoDTO = class(TInterfacedObject, iEndereco)
  private
    FCliente: iCliente;
    FEndereco: TEndereco;
  public
    constructor Create(Cliente: iCliente);
    destructor Destroy; override;
    class function New(Cliente: iCliente): iEndereco;
    function Logradouro(Value: String): iEndereco; overload;
    function Logradouro: String; overload;
    function Numero(Value: String): iEndereco; overload;
    function Numero: String; overload;
    function Complemento(Value: String): iEndereco; overload;
    function Complemento: String; overload;
    function Bairro(Value: String): iEndereco; overload;
    function Bairro: String; overload;
    function Cidade(Value: String): iEndereco; overload;
    function Cidade: String; overload;
    function Estado(Value: String): iEndereco; overload;
    function Estado: String; overload;
    function Cep(Value: String): iEndereco; overload;
    function Cep: String; overload;
    function Build: iCliente;
  end;

implementation

function TEnderecoDTO.Bairro: String;
begin
  Result := FEndereco.Bairro;
end;

function TEnderecoDTO.Bairro(Value: String): iEndereco;
begin
  Result := Self;
  FEndereco.Bairro := Value;
end;

function TEnderecoDTO.Build: iCliente;
begin
  FCliente.This.Endereco := FEndereco;
  Result := FCliente;
end;

function TEnderecoDTO.Cep(Value: String): iEndereco;
begin
  Result := Self;
  FEndereco.Cep := Value;
end;

function TEnderecoDTO.Cep: String;
begin
  Result := FEndereco.Cep;
end;

function TEnderecoDTO.Cidade(Value: String): iEndereco;
begin
  Result := Self;
  FEndereco.Cidade := Value;
end;

function TEnderecoDTO.Cidade: String;
begin
  Result := FEndereco.Cidade;
end;

function TEnderecoDTO.Complemento: String;
begin
  Result := FEndereco.Complemento;
end;

function TEnderecoDTO.Complemento(Value: String): iEndereco;
begin
  Result := Self;
  FEndereco.Complemento := Value;
end;

constructor TEnderecoDTO.Create(Cliente: iCliente);
begin
  FCliente := Cliente;
  FEndereco := TEndereco.new;
end;

destructor TEnderecoDTO.Destroy;
begin
  FEndereco.Free;
  inherited;
end;

function TEnderecoDTO.Estado(Value: String): iEndereco;
begin
  Result := Self;
  FEndereco.Estado := Value;
end;

function TEnderecoDTO.Estado: String;
begin
  Result := FEndereco.Estado;
end;

function TEnderecoDTO.Logradouro: String;
begin
  Result := FEndereco.Logradouro;
end;

function TEnderecoDTO.Logradouro(Value: String): iEndereco;
begin
  Result := Self;
  FEndereco.Logradouro := Value;
end;

class function TEnderecoDTO.New(Cliente: iCliente): iEndereco;
begin
  Result := Self.Create(Cliente);
end;

function TEnderecoDTO.Numero(Value: String): iEndereco;
begin
  Result := Self;
  FEndereco.Numero := Value;
end;

function TEnderecoDTO.Numero: String;
begin
  Result := FEndereco.Numero;
end;

end.
