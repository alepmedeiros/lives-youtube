unit usuario;

interface

uses
  pessoa;

type
  TUsuario = class(TPessoa)
  private
  public
    function Contrato : String; override;
  end;

implementation

{ TUsuario }

function TUsuario.Contrato: String;
begin
  Result := 'TUSuario contrato';
end;

end.
