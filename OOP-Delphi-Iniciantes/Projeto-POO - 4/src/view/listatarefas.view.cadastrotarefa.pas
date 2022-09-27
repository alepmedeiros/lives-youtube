unit listatarefas.view.cadastrotarefa;

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
  System.Generics.Collections,
  listatarefas.model.tarefas, listatarefas.model.usuario,
  listatarefas.dao.tarefas;

type
  TfrmCadastroTarefas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    edtTitulo: TEdit;
    Label1: TLabel;
    Panel5: TPanel;
    MemoDescricao: TMemo;
    Label2: TLabel;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FDAO: TTarefasDAO;
    FTarefa: TTarefas;
    FUsuario: TUsuario;

    procedure EmEdicao(aTarefa: TTarefas);
    procedure Novo;
    procedure Editar;
  public
    constructor Create(AOwner: TComponent;
      aUsuario: TUsuario; aDao: TTarefasDAO; aTarefas: TTarefas = nil);
  end;

var
  frmCadastroTarefas: TfrmCadastroTarefas;

implementation

{$R *.dfm}

{ TfrmCadastroTarefas }

procedure TfrmCadastroTarefas.Button1Click(Sender: TObject);
begin
  if not Assigned(FTarefa) then
    Novo
  else
    Editar;
end;

procedure TfrmCadastroTarefas.Button2Click(Sender: TObject);
begin
  close;
end;

constructor TfrmCadastroTarefas.Create(AOwner: TComponent;
      aUsuario: TUsuario; aDao: TTarefasDAO; aTarefas: TTarefas = nil);
begin
  inherited Create(AOwner);
  EmEdicao(aTarefas);
  FUsuario := aUsuario;
  FDAO := aDAO;
end;

procedure TfrmCadastroTarefas.Editar;
begin
  try
    FTarefa.Titulo := edtTitulo.Text;
    FTarefa.Descricao := MemoDescricao.Text;
    FDAO.Alterar(FTarefa);
  finally
    edtTitulo.Clear;
    MemoDescricao.Clear;
  end;
end;

procedure TfrmCadastroTarefas.EmEdicao(aTarefa: TTarefas);
begin
  if not Assigned(aTarefa) then
    Exit;

  FTarefa := aTarefa;
  edtTitulo.Text := FTarefa.Titulo;
  MemoDescricao.Lines.Add(FTarefa.Descricao);
end;

procedure TfrmCadastroTarefas.Novo;
var
  lTarefa: TTarefas;
begin
  if not Assigned(FTarefa) then
    FTarefa := TTarefas.Create;
  try
    FTarefa.IdUsuario := FUsuario.Id;
    FTarefa.Titulo := edtTitulo.Text;
    FTarefa.Descricao := MemoDescricao.Text;
    FDAO.Inserir(FTarefa);
  finally
    FTarefa.DisposeOf;
    edtTitulo.Clear;
    MemoDescricao.Clear;
  end;
end;

end.
