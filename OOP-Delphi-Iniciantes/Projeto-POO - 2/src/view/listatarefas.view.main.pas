unit listatarefas.view.main;

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
  Vcl.ExtCtrls,
  listatarefas.view.login,
  listatarefas.model.usuario,
  listatarefas.model.tarefas,
  Vcl.ComCtrls,
  listatarefas.view.cadastrotarefa,
  System.Generics.Collections;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel5: TPanel;
    Edit1: TEdit;
    Button4: TButton;
    Panel6: TPanel;
    ListView1: TListView;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    function ValidaUsuario(aEmail, aSenha: String): Boolean;
    procedure PreencheListView(aTarefas: TObjectList<TTarefas>);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
var
  lCadastroTarefa: TFrmCadastroTarefas;
  lTarefas: TObjectList<TTarefas>;
begin
  lTarefas:= TObjectList<TTarefas>.Create;
  lCadastroTarefa := TFrmCadastroTarefas.Create(Self, lTarefas);
  try
    lCadastroTarefa.ShowModal;
    PreencheListView(lTarefas);
  finally
    FreeAndNil(lCadastroTarefa);
    lTarefas.Free;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  lLogin: TFrmLogin;
begin
  lLogin := TFrmLogin.Create(nil);
  try
    lLogin.ShowModal;
    if not ValidaUsuario(lLogin.edtemail.Text, lLogin.edtSenha.Text) then
    begin
      ShowMessage('Usuario e senha invalido');
      Application.Terminate;
    end;
  finally
    lLogin.Free;
  end;
end;

procedure TfrmMain.PreencheListView(aTarefas: TObjectList<TTarefas>);
var
  lItem: TListItem;
  lTarefa: TTarefas;
begin
  if not Assigned(aTarefas) then
    Exit;
  ListView1.Clear;
  for lTarefa in aTarefas do
  begin
    lItem := ListView1.Items.Add;
    lItem.Caption := lTarefa.Codigo.ToString;
    lItem.SubItems.Add(lTarefa.Titulo);
    lItem.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:mm', lTarefa.DataCriacao));
    lItem.Data := lTarefa;
  end;
end;

function TfrmMain.ValidaUsuario(aEmail, aSenha: String): Boolean;
var
  lUsuario: TUsuario;
begin
  lUsuario := TUsuario.Create;
  try
    lUsuario.Email := 'email@email.com';
    lUsuario.Senha := '123';

    Result := ((lUsuario.Email = aEmail) and (lUsuario.Senha = aSenha));
  finally
    lUsuario.Free;
  end;
end;

end.
