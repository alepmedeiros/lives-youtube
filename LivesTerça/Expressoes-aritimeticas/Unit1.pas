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
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit3.Clear;
  Edit3.Text := Somar(StrToFloat(Edit1.Text),StrToFloat(Edit2.Text));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit3.Clear;
  Edit3.Text := Subtrair(StrToFloat(Edit1.Text),StrToFloat(Edit2.Text));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Edit3.Clear;
  Edit3.Text := Multiplicar(StrToFloat(Edit1.Text),StrToFloat(Edit2.Text));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Edit3.Clear;
  Edit3.Text := Dividir(StrToFloat(Edit1.Text),StrToFloat(Edit2.Text));
end;

function TForm1.Dividir(Value1, Value2: Double): String;
var
  lRes: Double;
begin
  lRes := Value1 / Value2;
  Result := lRes.ToString;
end;

function TForm1.Multiplicar(Value1, Value2: Double): String;
var
  lRes: Double;
begin
  lRes := Value1 * Value2;
  Result := lRes.ToString;
end;

function TForm1.Somar(Value1, Value2: Double): String;
var
  lRes: Double;
begin
  lRes := Value1 + Value2;
  Result := lRes.ToString;
end;

function TForm1.Subtrair(Value1, Value2: Double): String;
var
  lRes: Double;
begin
  lRes := Value1 - Value2;
  Result := lRes.ToString;
end;

{
  OR = OU
  AND = E
  NOT = NÃO
  = igual
  <> DIFERENTE
  < Menor que
  <= Menor  ou igual
  > Maior que
  >= Maior ou igual
}


end.
