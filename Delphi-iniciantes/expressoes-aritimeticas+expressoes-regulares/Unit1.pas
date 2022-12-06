unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtexpressao1: TEdit;
    edtexpressao2: TEdit;
    edtResultado: TEdit;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    Label1: TLabel;
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
  private
    function Somar(Value1, Value2: Double): String;
    function Subtrair(Value1, Value2: Double): String;
    function Multiplicar(Value1, Value2: Double): String;
    function Dividir(Value1, Value2: Double): String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }


procedure TForm1.btnDividirClick(Sender: TObject);
begin
  edtResultado.Clear;
  edtResultado.Text := Dividir(StrToFloat(edtexpressao1.Text), StrToFloat(edtexpressao2.Text));
end;

procedure TForm1.btnMultiplicarClick(Sender: TObject);
begin
  edtResultado.Clear;
  edtResultado.Text := Multiplicar(StrToFloat(edtexpressao1.Text), StrToFloat(edtexpressao2.Text));
end;

procedure TForm1.btnSomarClick(Sender: TObject);
begin
  edtResultado.Clear;
  edtResultado.Text := Somar(StrToFloat(edtexpressao1.Text), StrToFloat(edtexpressao2.Text));
end;

procedure TForm1.btnSubtrairClick(Sender: TObject);
begin
  edtResultado.Clear;
  edtResultado.Text := Subtrair(StrToFloat(edtexpressao1.Text), StrToFloat(edtexpressao2.Text));
end;

function TForm1.Dividir(Value1, Value2: Double): String;
var
  lResultado: Double;
begin
  lResultado := Value1 / Value2;
  Result := lResultado.ToString;
end;

function TForm1.Multiplicar(Value1, Value2: Double): String;
var
  lResultado: Double;
begin
  lResultado := Value1 * Value2;
  Result := lResultado.ToString;
end;

function TForm1.Somar(Value1, Value2: Double): String;
var
  lResultado: Double;
begin
  lResultado := Value1 + Value2;
  Result := lResultado.ToString;
end;

function TForm1.Subtrair(Value1, Value2: Double): String;
var
  lRes: Double;
begin
  lRes := Value1 - Value2;
  Result := lRes.ToString;
end;

end.
