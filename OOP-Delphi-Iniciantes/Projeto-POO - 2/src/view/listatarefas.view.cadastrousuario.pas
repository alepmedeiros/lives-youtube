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
  Vcl.ExtCtrls, listatarefas.model.usuario;

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
    { Private declarations }
  public
    FUsuario: TUsuario;
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

{$R *.dfm}

procedure TfrmCadastroUsuario.Button1Click(Sender: TObject);
begin
  FUsuario.Id := 1;
  FUsuario.Nome := edtNome.Text;
  FUsuario.Email := edtemail.Text;
  FUsuario.Senha := edtSenha.Text;
  ModalResult := mrok;
end;

procedure TfrmCadastroUsuario.FormCreate(Sender: TObject);
begin
  FUsuario:= TUsuario.Create;
end;

procedure TfrmCadastroUsuario.FormDestroy(Sender: TObject);
begin
  FUsuario.Free;
end;

end.
