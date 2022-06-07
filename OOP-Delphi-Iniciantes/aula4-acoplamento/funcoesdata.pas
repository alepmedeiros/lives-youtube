unit funcoesdata;

interface

uses
  System.SysUtils;

type
  TFuncoesData = class
    function CalculaIdade(Value: String) : Integer;
  end;

implementation

{ TFuncoesData }

function TFuncoesData.CalculaIdade(Value: String): Integer;
begin
  Result := Trunc((now - StrToDate(Value)) / 365.25);
end;

end.
