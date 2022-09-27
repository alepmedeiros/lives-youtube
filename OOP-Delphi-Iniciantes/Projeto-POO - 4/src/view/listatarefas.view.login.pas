unit listatarefas.view.login;

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
  Vcl.ExtCtrls, listatarefas.view.cadastrousuario;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    edtemail: TEdit;
    Panel4: TPanel;
    Label2: TLabel;
    edtSenha: TEdit;
    Panel5: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.Button1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmLogin.Button2Click(Sender: TObject);
var
  lCadastroUsuario: TfrmCadastroUsuario;
begin
  lCadastroUsuario:= TfrmCadastroUsuario.Create(nil);
  try
    lCadastroUsuario.ShowModal;
  finally
    FreeAndNil(lCadastroUsuario);
  end;
end;

end.
