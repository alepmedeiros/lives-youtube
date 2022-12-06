unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.RegularExpressions,
  System.TypInfo,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TValidacao = (EMAIL, TELEFONE, DATA, CPF);

  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Button1: TButton;
    edtValidacao: TEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    edtPalavra: TEdit;
    Panel6: TPanel;
    Label2: TLabel;
    edtSubstituir: TEdit;
    Button2: TButton;
    Panel7: TPanel;
    Label3: TLabel;
    MemoTexto: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FIncremental: Integer;
    procedure ValidarExpressoes(aValidar: TValidacao; Value: String);
    function Susbstituir(const aMatch: TMatch): String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

const
  CTEMAIL = '^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-z])*@([0-9a-zA-z][-\w]*[0-9a-zA-z]\.)+[a-zA-z]{2,9})$';
  CTTELEFONE = '^\(\d{2}\)\ \d{5}\-\d{4}$';
  CTDATA = '^(0[1-9]|[12][0-9]|3[01])[/ /.](0[1-9]|1[012])[/ /.](19|20)\d\d$';
  CTCPF = '^\d{3}\.\d{3}\.\d{3}\-?\d{2}$';


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ValidarExpressoes(TValidacao(ComboBox1.ItemIndex), edtValidacao.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  lReg: TRegEx;
  lValidador: TMatchEvaluator;
begin
  FIncremental := 0;
  if ((edtPalavra.Text = '') or (edtSubstituir.Text = '')) then
    ShowMessage('Informe as palavras')
  else
  begin
    lReg.Create(edtPalavra.Text);
    lValidador := Susbstituir;
    MemoTexto.Text := lReg.Replace(MemoTexto.Text, lValidador);
    if FIncremental > 0 then
      ShowMessage('Quantidade de ocorrencias' + FIncremental.ToString)
    else
      ShowMessage('nao tem ocorrencias');
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  ComboBox1.Clear;
  for I := Ord(Low(TValidacao)) to Ord(High(TValidacao)) do
    ComboBox1.Items.Add(GetEnumName(TypeInfo(TValidacao), I));
end;

function TForm1.Susbstituir(const aMatch: TMatch): String;
begin
  inc(FIncremental);
  Result := edtSubstituir.Text;
end;

procedure TForm1.ValidarExpressoes(aValidar: TValidacao; Value: String);
begin
  case aValidar of
    EMAIL: begin
      if not TRegEx.IsMatch(Value, CTEMAIL) then
      begin
        ShowMessage('E-mail invalido');
        exit;
      end;
      ShowMessage('E-mail valido');
    end;
    TELEFONE: begin
      if not TRegEx.IsMatch(Value, CTTELEFONE) then
      begin
        ShowMessage('Telefone invalido');
        exit;
      end;
      ShowMessage('Telefone valido');
    end;
    DATA: begin
      if not TRegEx.IsMatch(Value, CTDATA) then
      begin
        ShowMessage('Data invalido');
        exit;
      end;
      ShowMessage('Data valido');
    end;
    CPF: begin
      if not TRegEx.IsMatch(Value, CTCPF) then
      begin
        ShowMessage('CPF invalido');
        exit;
      end;
      ShowMessage('CPF valido');
    end;
  end;
end;

end.
