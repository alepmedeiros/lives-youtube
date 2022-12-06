unit model.telefone;

interface

uses
  model.enums;

type
  TTelefone = class
  private
    FNumero: String;
    FTipo: TTipoTElefone;
  public
    property Numero: String read FNumero write FNumero;
    property Tipo: TTipoTElefone read FTipo write FTipo;

    class function New: TTelefone;
  end;

implementation

{ TTelefone }

class function TTelefone.New: TTelefone;
begin
  Result := Self.Create;
end;

end.
