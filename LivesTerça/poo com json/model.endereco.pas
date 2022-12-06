unit model.endereco;

interface

type
  TEndereco = class
  private
    FLogradouro: String;
    FNumero: String;
    FComplemento: String;
    FBairro: String;
    FCidade: String;
    FEstado: String;
    FCep: String;
  public
    property Logradouro: String read FLogradouro write FLogradouro;
    property Numero: String read FNumero write FNumero;
    property Complemento: String read FComplemento write FComplemento;
    property Bairro: String read FBairro write FBairro;
    property Cidade: String read FCidade write FCidade;
    property Estado: String read FEstado write FEstado;
    property Cep: String read FCep write FCep;

    class function New: TEndereco;
  end;

implementation

{ TEndereco }

class function TEndereco.New: TEndereco;
begin
  Result := Self.Create;
end;

end.
