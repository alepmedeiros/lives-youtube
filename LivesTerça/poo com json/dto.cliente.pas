unit dto.cliente;

interface

uses
  System.SysUtils,
  System.Classes,
  System.JSON,
  System.Generics.Collections,
  GBJSON.Interfaces,
  GBJSON.Helper,
  dto.Interfaces,
  model.cliente,
  dto.telefone,
  dto.endereco,
  model.enums, model.telefone;

type
  TClienteDTO = class(TInterfacedObject, iCliente)
  private
    FJSON: String;
    FCliente: TCliente;
    FEndereco: iEndereco;
    FLista: TObjectList<TCliente>;
  public
    constructor Create; overload;
    constructor Create(JSON: String); overload;
    destructor Destroy; override;
    class function New: iCliente; overload;
    class function New(JSON: String): iCLiente; overload;
    function Nome(Value: String): iCliente; overload;
    function Nome: String; overload;
    function SobreNome(Value: String): iCliente; overload;
    function SobreNome: String; overload;
    function Tipo(Value: String): iCliente; overload;
    function Tipo: String; overload;
    function endereco: iEndereco;
    function telefone: iTelefone;
    function This: TCliente;
    function ToJSON: TJSONObject;
    function ToString: String;
    function ToJSONArray: TJSONArray;
    function ToLista: String;
    function Build: iCliente;
  end;

implementation

function TClienteDTO.Build: iCliente;
begin
  Result := Self;
  FLista.Add(FCliente);
  FCliente := TCliente.New;
end;

constructor TClienteDTO.Create;
begin
  TGBJSONConfig.GetInstance.CaseDefinition(TCaseDefinition.cdLower);
  FCliente := TCliente.New;
  FLista := TObjectList<TCliente>.Create;
end;

constructor TClienteDTO.Create(JSON: String);
begin
  FJSON:= JSON;
  TGBJSONConfig.GetInstance.CaseDefinition(TCaseDefinition.cdLower);
  FCLiente := TCliente.New;
end;

destructor TClienteDTO.Destroy;
begin
  FCliente.Free;
  FLista.Free;
  inherited;
end;

function TClienteDTO.endereco: iEndereco;
begin
  if not Assigned(FEndereco) then
    FEndereco := TEnderecoDTO.New(Self);
  Result := FEndereco;
end;

class function TClienteDTO.New: iCliente;
begin
  Result := Self.Create;
end;

function TClienteDTO.Nome(Value: String): iCliente;
begin
  Result := Self;
  FCliente.Nome := Value;
end;

class function TClienteDTO.New(JSON: String): iCLiente;
begin
  Result := Self.Create(JSON);
end;

function TClienteDTO.Nome: String;
begin
  Result := FCliente.Nome;
end;

function TClienteDTO.SobreNome(Value: String): iCliente;
begin
  Result := Self;
  FCliente.SobreNome := Value;
end;

function TClienteDTO.SobreNome: String;
begin
  Result := FCliente.SobreNome;
end;

function TClienteDTO.telefone: iTelefone;
begin
  Result := TTelefoneDTO.New(Self);
end;

function TClienteDTO.This: TCliente;
begin
  Result := FCliente;
end;

function TClienteDTO.Tipo(Value: String): iCliente;
var
  lTipo: TTipoPessoa;
begin
  Result := Self;
  FCliente.Tipo := lTipo.ToEnum(Value);
end;

function TClienteDTO.Tipo: String;
begin
  Result := FCliente.Tipo.ToString;
end;

function TClienteDTO.ToJSON: TJSONObject;
begin
  Result := FCliente.ToJSONObject;
end;

function TClienteDTO.ToJSONArray: TJSONArray;
begin
  Result := TGBJSONDefault.Deserializer<TCliente>
    .ListToJSONArray(FLista);
end;

function TClienteDTO.ToLista: String;
var
  lCLientes: TStringList;
  lCliente: TCliente;
  lLista: TObjectList<TCliente>;
  lTelefone: TTelefone;
begin
  lLista := TGBJSONDefault.Serializer<TCliente>
    .JsonStringToList(FJSON);

 lCLientes := TStringList.Create;
 try
   for lCliente in lLista do
   begin
      lCLientes.Add(lCliente.Nome);
      lCLientes.Add(lCliente.SobreNome);
      lCLientes.Add(lCliente.Tipo.ToString);
      lCLientes.Add(lCliente.Endereco.Logradouro);
      lCLientes.Add(lCliente.Endereco.Numero);
      lCLientes.Add(lCliente.endereco.Complemento);
      lCLientes.Add(lCliente.Endereco.Bairro);
      lCLientes.Add(lCliente.Endereco.Cidade);
      lCLientes.Add(lCliente.endereco.Estado);
      lCLientes.Add(lCliente.endereco.Cep);

      for lTelefone in lCliente.Telefone do
      begin
        lCLientes.Add(lTelefone.Numero);
        lCLientes.Add(lTelefone.Tipo.ToString);
      end;
      lCLientes.Add('');
   end;

   Result :=lCLientes.Text;
 finally
   lCLientes.Free;
 end;
end;

function TClienteDTO.ToString: String;
var
  lCliente: TStringList;
  lTelefone: TTelefone;
begin
  FCliente.fromJSONString(FJSON);
  lCliente := TStringList.Create;
  lCliente.Add(FCliente.Nome);
  lCliente.Add(FCliente.SobreNome);
  lCliente.Add(FCliente.Endereco.Logradouro);
  lCliente.Add(FCliente.Endereco.Numero);
  lCliente.Add(FCliente.Endereco.Complemento);
  lCliente.Add(FCliente.Endereco.Bairro);
  lCliente.Add(FCliente.Endereco.Cidade);
  lCliente.Add(FCliente.Endereco.Estado);
  lCliente.Add(FCliente.Endereco.Cep);
  lCliente.Add('Telefone:');
  for lTelefone in FCliente.Telefone do
  begin
    lCliente.Add(lTelefone.Numero);
    lCliente.Add(lTelefone.Tipo.ToString);
  end;

  Result := lCliente.text;
  lCliente.Free;
end;

end.
