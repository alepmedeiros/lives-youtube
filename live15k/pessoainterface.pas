unit pessoainterface;

interface

uses
  interfaces, enderecointerface, titpopessoa;

type
  TPessoaInterface = class(TInterfacedObject, iPessoa)
  private
    FNome: String;
    FEmail: String;
    FEndereco: iEndereco<iPessoa>;
    FTipoPessoa: iTipoPessoa;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iPessoa;
    function Nome(Value: String): iPessoa; overload;
    function Nome: String; overload;
    function Email(Value: String): iPessoa; overload;
    function Email: String; overload;
    function Endereco: iEndereco<iPessoa>;
    function Tipo: iTipoPessoa;
  end;

implementation

{ TMyClass }

constructor TPessoaInterface.Create;
begin
  FEndereco:= TEnderecoInterface<iPessoa>.New(Self);
  FTipoPessoa:= TTipoPessoa.New(Self);
end;

destructor TPessoaInterface.Destroy;
begin

  inherited;
end;

function TPessoaInterface.Email(Value: String): iPessoa;
begin
  Result := Self;
  FEmail := Value;
end;

function TPessoaInterface.Email: String;
begin
  Result := FEmail;
end;

function TPessoaInterface.Endereco: iEndereco<iPessoa>;
begin
  Result := FEndereco;
end;

class function TPessoaInterface.New: iPessoa;
begin
  Result := Self.Create;
end;

function TPessoaInterface.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TPessoaInterface.Nome: String;
begin
  Result := FNome
end;

function TPessoaInterface.Tipo: iTipoPessoa;
begin
  Result := FTipoPessoa;
end;

end.
