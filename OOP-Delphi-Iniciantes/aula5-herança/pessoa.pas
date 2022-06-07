unit pessoa;

interface

uses
  System.SysUtils;

type
  TPessoa = class
  private
  public
    Nome: String;
    DataNascimento: String;
    Email: String;
    function Idade: Integer;
  end;

implementation

{ TPessoa }

function TPessoa.Idade: Integer;
begin
  result := Trunc((now - StrToDate(DataNascimento)) / 365.25);
end;

end.
