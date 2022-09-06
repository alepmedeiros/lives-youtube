unit modificadores.pessoa;

interface

type
  TPessoa = class
  strict private
    FSegredo: String;

  strict protected
    FSoClasse: String;

  private
    FNome: String;
    FSobreNome: String;

  protected
    FDados: String;


  public
    property Nome: String read FNome write FNome;
    property SobreNome: String read FSobreNome write FSobreNome;

    function SomentePessoa : String;
  end;

type
  TClienteAmigo = class(TPessoa)
  private
    FCPF: String;
  public
    property CPF: String read FCPF write FCPF;

    function NomeCompleto : String;
  end;

  TTeste = class
  private
    FPessoa: TPessoa;
  public
    function visualizar:String;
  end;

implementation

{ TClienteAmigo }

function TClienteAmigo.NomeCompleto: String;
begin
  Result := Self.Nome+' - '+Self.SobreNome;
end;

{ TTeste }

function TTeste.visualizar: String;
begin

end;

{ TPessoa }

function TPessoa.SomentePessoa: String;
begin

end;

end.
