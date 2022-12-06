unit uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrinciapal = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Panel2: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrinciapal: TfrmPrinciapal;

implementation

{$R *.dfm}

procedure TfrmPrinciapal.Button1Click(Sender: TObject);
var
  lRetorno: String;
begin
  lRetorno := InputBox('Input Form Iniciante', 'Me diga seu nome?', '');
  ShowMessage('Seu nome é: ' + lRetorno);
end;

procedure TfrmPrinciapal.Button2Click(Sender: TObject);
begin
  MessageDlg('Estamos ao vivo', mtInformation, [mbOK], 0);
end;

procedure TfrmPrinciapal.Button3Click(Sender: TObject);
begin
  MessageDlg('Erro, Temos codigos duplicados', TMsgDlgType.mtError, [mbOK], 0);
end;

procedure TfrmPrinciapal.Button4Click(Sender: TObject);
begin
  MessageDlg('Cuidado com o que vocês está fazendo, estou de olho', TMsgDlgType.mtWarning, [mbOK], 0);
end;

procedure TfrmPrinciapal.Button5Click(Sender: TObject);
var
  lRetorno: Integer;
begin
  lRetorno := MessageDlg('Deseja sair realmente do sistema?', TMsgDlgType.mtConfirmation,
    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
  ShowMessage(lRetorno.ToString);
end;

procedure TfrmPrinciapal.Edit1Change(Sender: TObject);
begin
  Memo1.Lines.Add(Edit1.Text);
end;

procedure TfrmPrinciapal.Edit1Click(Sender: TObject);
begin
//  ShowMessage('Show de bola, estou no evento click');
end;


end.
