unit utils;

interface

uses
  System.SysUtils;

type
  TUtils = class
    function CalculaIdade(Value: String) : Integer;
  end;

implementation


{ TUtils }

function TUtils.CalculaIdade(Value: String): Integer;
begin
  Result := Trunc((now - StrToDate(Value)) / 365.25);
end;

end.
