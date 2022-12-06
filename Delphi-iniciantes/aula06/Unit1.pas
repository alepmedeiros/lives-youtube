unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  lPreco: Currency;
begin
//  lPreco := 26.56;
//  Label1.Caption := CurrToStr(lPreco);
  lPreco := StrToCurr(edit1.Text);
  Label1.Caption := FormatCurr('"R$ "#,##0.00',lPreco);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  lRetorno: Integer;
begin
   lRetorno := MessageDlg('Deseja sair realmente do sistema?', TMsgDlgType.mtConfirmation,
    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
   if lretorno = 6 then
    close
   else if 1000 = 500 then
        ShowMessage('Maior')
   else
    ShowMessage('Continue...');
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  lnumber: Integer;
  lText: String;
begin
  lnumber := 78 * StrToInt(Edit1.text);
  if lnumber > 400 then
  begin
    Memo1.Lines.Add('lNumber é maior que 400');
    Memo1.Lines.Add('lNumber é igual = ' + lNumber.ToString);
  end
  else
  begin
    Memo1.Lines.Add('lNumber não é maior que 400');
    Memo1.Lines.Add('lNumber é igual = ' + lNumber.ToString);
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  lNumber: Integer;
  lhora: TDateTime;
begin
  lhora := now;
  ShowMessage(FormatDateTime('dd/mm/yyyy hh:mm:ss', lhora));
//  try
//    if TryStrToInt(Edit1.Text,lNumber) then
//    begin
//      ShowMessage('Agora tá legal');
//      exit;
//    end
//    else
//      ShowMessage('Error');

//    lNumber := StrToInt(Edit1.Text);
//    ShowMessage('Sucesso');
//  except
//    ShowMessage('Error');
//  end;
end;

end.
