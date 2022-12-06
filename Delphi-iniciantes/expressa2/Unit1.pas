unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  System.TypInfo;

type
  TExpressao = (SOMA, SUBTRACAO, MULTIPLCACAO, DIVISAO);

  TExpressaoHelper = record helper for TExpressao
    function Calculo(Value1, Value2: Double): Double;
  end;

  TForm1 = class(TForm)
    edtexpressao: TEdit;
    edtResultado: TEdit;
    btnUm: TButton;
    btnDois: TButton;
    btnTres: TButton;
    btnQuatro: TButton;
    btnCinco: TButton;
    btnSeis: TButton;
    btnSete: TButton;
    btnOito: TButton;
    btnNove: TButton;
    btnZero: TButton;
    btnBackspace: TButton;
    btnVirgula: TButton;
    btnSomar: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    btnIgual: TButton;
    btnDividir: TButton;
    btnLimpar: TButton;
    procedure btnLimparClick(Sender: TObject);
    procedure btnUmClick(Sender: TObject);
    procedure btnDoisClick(Sender: TObject);
    procedure btnTresClick(Sender: TObject);
    procedure btnQuatroClick(Sender: TObject);
    procedure btnCincoClick(Sender: TObject);
    procedure btnSeisClick(Sender: TObject);
    procedure btnSeteClick(Sender: TObject);
    procedure btnOitoClick(Sender: TObject);
    procedure btnNoveClick(Sender: TObject);
    procedure btnZeroClick(Sender: TObject);
    procedure btnVirgulaClick(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnBackspaceClick(Sender: TObject);
  private
    FValor1: Double;
    FValor2: Double;
    FResultado: Double;
    FExpressao: TExpressao;
    procedure LimparExpressoes;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

procedure TForm1.btnBackspaceClick(Sender: TObject);
begin
  if not VarIsEmpty(edtResultado.Text) then
    edtResultado.Text := Copy(edtResultado.Text, 1,Length(edtResultado.Text)-1);
end;

procedure TForm1.btnCincoClick(Sender: TObject);
begin
  edtResultado.Text := edtResultado.Text+'5';
end;

procedure TForm1.btnDividirClick(Sender: TObject);
begin
  FValor1 := StrToFloat(edtResultado.Text);
  edtexpressao.Text := FValor1.ToString + '/';
  FExpressao := SOMA;
  FExpressao := DIVISAO;
end;

procedure TForm1.btnDoisClick(Sender: TObject);
begin
  edtResultado.Text := edtResultado.Text+'2';
end;

procedure TForm1.btnIgualClick(Sender: TObject);
var
  lResult: Double;
begin
  edtexpressao.Text := edtexpressao.Text + edtResultado.Text + '=';
  lResult := FExpressao.Calculo(FValor1, StrToFloat(edtResultado.Text));
  edtResultado.Text := lResult.ToString;
end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  LimparExpressoes;
end;

procedure TForm1.btnMultiplicarClick(Sender: TObject);
begin
  FValor1 := StrToFloat(edtResultado.Text);
  edtexpressao.Text := FValor1.ToString + '*';
  FExpressao := MULTIPLCACAO;
end;

procedure TForm1.btnNoveClick(Sender: TObject);
begin
  edtResultado.Text := edtResultado.Text+'9';
end;

procedure TForm1.btnOitoClick(Sender: TObject);
begin
  edtResultado.Text := edtResultado.Text+'8';
end;

procedure TForm1.btnQuatroClick(Sender: TObject);
begin
  edtResultado.Text := edtResultado.Text+'4';
end;

procedure TForm1.btnSeisClick(Sender: TObject);
begin
  edtResultado.Text := edtResultado.Text+'6';
end;

procedure TForm1.btnSeteClick(Sender: TObject);
begin
  edtResultado.Text := edtResultado.Text+'7';
end;

procedure TForm1.btnSomarClick(Sender: TObject);
begin
  FValor1 := StrToFloat(edtResultado.Text);
  edtexpressao.Text := FValor1.ToString + '+';
  FExpressao := SOMA;
end;

procedure TForm1.btnSubtrairClick(Sender: TObject);
begin
  FValor1 := StrToFloat(edtResultado.Text);
  edtexpressao.Text := FValor1.ToString + '-';
  FExpressao := SUBTRACAO;
end;

procedure TForm1.btnTresClick(Sender: TObject);
begin
  edtResultado.Text := edtResultado.Text+'3';
end;

procedure TForm1.btnUmClick(Sender: TObject);
begin
  edtResultado.Text := edtResultado.Text+'1';
end;

procedure TForm1.btnVirgulaClick(Sender: TObject);
begin
  edtResultado.Text := edtResultado.Text+',';
end;

procedure TForm1.btnZeroClick(Sender: TObject);
begin
  edtResultado.Text := edtResultado.Text+'0';
end;

procedure TForm1.LimparExpressoes;
var
  I: Integer;
begin
  for I := 0 to Pred(ComponentCount) do
    if Components[I] is TEdit then
      TEdit(Components[I]).Text := '';
end;

{ TExpressaoHelper }

function TExpressaoHelper.Calculo(Value1, Value2: Double): Double;
begin
  case Self of
    SOMA: Result := Value1 + Value2;
    SUBTRACAO: Result := Value1 - Value2;
    MULTIPLCACAO: Result := Value1 * Value2;
    DIVISAO: Result := Value1 / Value2;
  end;
end;

end.
