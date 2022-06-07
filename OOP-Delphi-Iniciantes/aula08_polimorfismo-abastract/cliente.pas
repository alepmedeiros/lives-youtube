unit cliente;

interface

uses
  system.SysUtils,
  pessoa;

type
  TCliente = class(TPessoa)
  private
    FCPF: String;
  public
    property CPF: String read FCPF write FCPF;
    function RetornaDados : String; override;
    function Contrato : String; override;
  end;

implementation

{ TCliente }

function TCliente.Contrato: String;
begin
  Result := 'TCliente Contrato';
end;

function TCliente.RetornaDados: String;
begin
  inherited;
  Result := Dados + ', CPF: ' + FCPF + ' sou filha da classe ' + NomeClass;
end;

end.
