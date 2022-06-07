unit contabancaria;

interface


type
  TContaBancaria = class
  private
    FNome: String;
    FSaldo: Double;
    function GetSalfo: Double;
  public
    property Nome: String read FNome write FNome;
    property Saldo: Double read GetSalfo;
    procedure Depositar(Value: Double);
    procedure Sacar(Value: Double);
  end;

implementation

{ TContaBancaria }

procedure TContaBancaria.Depositar(Value: Double);
begin
  FSaldo := FSaldo + Value + (Value * 0.10);
end;

function TContaBancaria.GetSalfo: Double;
begin
  Result := FSaldo;
end;

procedure TContaBancaria.Sacar(Value: Double);
begin
  FSaldo := FSaldo - VAlue;
end;

end.
