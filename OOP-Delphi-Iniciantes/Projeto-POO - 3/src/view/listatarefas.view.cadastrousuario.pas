unit listatarefas.view.cadastrousuario;

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
  Vcl.ExtCtrls, listatarefas.model.usuario, listatarefas.dao.usuario;

type
  TfrmCadastroUsuario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    edtNome: TEdit;
    Label1: TLabel;
    Panel5: TPanel;
    edtemail: TEdit;
    Label2: TLabel;
    Panel6: TPanel;
    edtSenha: TEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FDAO: TDAOUsuario;
    procedure Salvar;
  public

  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

{$R *.dfm}

procedure TfrmCadastroUsuario.Button1Click(Sender: TObject);
begin
  Salvar;
  ModalResult := mrok;
end;

procedure TfrmCadastroUsuario.FormCreate(Sender: TObject);
begin
  FDAO:= TDAOUsuario.Create;
end;

procedure TfrmCadastroUsuario.FormDestroy(Sender: TObject);
begin
  FDAO.Free;
end;

procedure TfrmCadastroUsuario.Salvar;
var
  lUsuario: TUsuario;
begin
  lUsuario:= TUsuario.Create;
  try
    lUsuario.Nome := edtNome.Text;
    lUsuario.Email := edtemail.Text;
    lUsuario.Senha := edtSenha.Text;
    FDAO.Inserir(lUsuario);
    edtNome.Clear;
    edtemail.Clear;
    edtSenha.Clear;
  finally
    lUsuario.Free;
  end;
end;

end.
