unit pessoa;

interface

uses
  System.Json,
  System.Generics.Collections,
  endereco,
  GBJSON.Interfaces;

type
  TPessoa = class
  private
    FNome: String;
    FEmail: String;
    FEndereco: TObjectList<TEndereco>;
  public
    property Nome: String read FNome write FNome;
    property Email: String read FEmail write FEmail;
    property Endereco: TObjectList<TEndereco> read FEndereco write FEndereco;

    constructor Create;
    destructor Destroy; override;
    class function New: TPessoa;
    function ToJSON: TJSONObject;
  end;

  TPessoaHelper = class helper for TPessoa
    function ToString: String; overload;
  end;

implementation

constructor TPessoa.Create;
begin
  FEndereco:= TObjectList<TEndereco>.Create;
end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

class function TPessoa.New: TPessoa;
begin
  Result := Self.Create;
end;

function TPessoa.ToJSON: TJSONObject;
begin
  TGBJSONConfig.GetInstance.CaseDefinition(TCaseDefinition.cdLower);
  Result := TGBJSONDefault.Deserializer<TPessoa>.ObjectToJsonObject(Self);
end;

{ TPessoaHelper }

function TPessoaHelper.ToString: String;
var
  lEndereco: TEndereco;
begin
  Result := 'Nome: ' + Self.FNome + 'Email: ' + Self.Email;
  for lEndereco in Self.Endereco do
  begin
    Result := Result + 'Logradouro: ' + lEndereco.Logradouro;
    Result := Result + 'Numero: ' + lEndereco.Numero;
    Result := Result + 'Complemento: ' + lEndereco.Complemento;
    Result := Result + 'Bairro: ' + lEndereco.Bairro;
    Result := Result + 'Cidade: ' + lEndereco.Cidade;
    Result := Result + 'Estado: ' + lEndereco.Estado;
  end;
end;

end.
