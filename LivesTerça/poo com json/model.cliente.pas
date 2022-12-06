unit model.cliente;

interface

uses
  System.Generics.Collections,
  model.endereco,
  model.telefone,
  model.enums;

type
  TCliente = class
  private
    FNome: String;
    FSobreNome: String;
    FEndereco: TEndereco;
    FTelefone: TObjectList<TTelefone>;
    FTipo: TTipoPessoa;
  public
    property Nome: String read FNome write FNome;
    property SobreNome: String read FSobreNome write FSobreNome;
    property Endereco: TEndereco read FEndereco write FEndereco;
    property Telefone: TObjectList<TTelefone> read FTelefone write FTelefone;
    property Tipo: TTipoPessoa read FTipo write FTipo;

    constructor Create;
    destructor Destroy; override;
    class function New: TCliente;
  end;

implementation

{ TCliente }

constructor TCliente.Create;
begin
  FEndereco:= TEndereco.New;
  FTelefone:= TObjectList<TTelefone>.Create;
end;

destructor TCliente.Destroy;
begin
  Ftelefone.Free;
  FEndereco.Free;
  inherited;
end;

class function TCliente.New: TCliente;
begin
  Result := Self.Create;
end;

end.
