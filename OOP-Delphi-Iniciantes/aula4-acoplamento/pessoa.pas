unit pessoa;

interface

uses
  utils;

type
  TPessoa = class
  private
  public
    Nome: String;
    DataNascimento : String;
    Idade: TUtils;
    constructor Create;
  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin
  Idade:= TUtils.Create;
end;

end.
