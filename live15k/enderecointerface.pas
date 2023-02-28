unit enderecointerface;

interface

uses
  interfaces;

type
  TEnderecoInterface<T: IInterface> = class(TInterfacedObject, iEndereco<T>)
  private
    [weak]
    FParent: T;
    FLogradouro: String;
    FNumero: String;
    FComplemento: String;
    FBairro: String;
    FCidade: String;
    FEstado: String;
  public
    constructor Create(Parent: T);
    destructor Destroy; override;
    class function New(Parent: T): iEndereco<T>;
    function Logradouro(Value: String): iEndereco<T>; overload;
    function Logradouro: String; overload;
    function Numero(Value: String): iEndereco<T>; overload;
    function Numero: String; overload;
    function Complemento(Value: String): iEndereco<T>; overload;
    function Complemento: String; overload;
    function Bairro(Value: String): iEndereco<T>; overload;
    function Bairro: String; overload;
    function Cidade(Value: String): iEndereco<T>; overload;
    function Cidade: String; overload;
    function Estado(Value: String): iEndereco<T>; overload;
    function Estado: String; overload;
    function &End: T;
  end;

implementation

{ TMyClass }

function TEnderecoInterface<T>.Bairro(Value: String): iEndereco<T>;
begin
  Result := Self;
  FBairro := Value;
end;

function TEnderecoInterface<T>.Bairro: String;
begin
  Result := FBairro;
end;

function TEnderecoInterface<T>.Cidade(Value: String): iEndereco<T>;
begin
  Result := Self;
  FCidade := Value;
end;

function TEnderecoInterface<T>.Cidade: String;
begin
  Result := FCidade;
end;

function TEnderecoInterface<T>.Complemento: String;
begin
  Result := FComplemento;
end;

function TEnderecoInterface<T>.Complemento(Value: String): iEndereco<T>;
begin
  Result := Self;
  FComplemento := Value;
end;

function TEnderecoInterface<T>.&End: T;
begin
  Result := FParent;
end;

constructor TEnderecoInterface<T>.Create(Parent: T);
begin
  FParent := Parent;
end;

destructor TEnderecoInterface<T>.Destroy;
begin

  inherited;
end;

function TEnderecoInterface<T>.Estado: String;
begin
  Result := FEstado;
end;

function TEnderecoInterface<T>.Estado(Value: String): iEndereco<T>;
begin
  Result := Self;
  FEstado := Value;
end;

function TEnderecoInterface<T>.Logradouro: String;
begin
  Result := FLogradouro;
end;

function TEnderecoInterface<T>.Logradouro(Value: String): iEndereco<T>;
begin
  Result := Self;
  FLogradouro := VAlue;
end;

class function TEnderecoInterface<T>.New(Parent: T): iEndereco<T>;
begin
  Result := Self.Create(Parent);
end;

function TEnderecoInterface<T>.Numero(Value: String): iEndereco<T>;
begin
  Result := Self;
  FNumero := Value;
end;

function TEnderecoInterface<T>.Numero: String;
begin
  Result := FNumero;
end;

end.
