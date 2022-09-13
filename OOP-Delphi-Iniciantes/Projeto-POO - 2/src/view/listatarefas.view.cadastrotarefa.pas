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
  listatarefas.model.tarefas;

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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    FTarefas: TObjectList<TTarefas>;
    constructor Create(AOwner: TComponent; aTarefa: TObjectList<TTarefas>);
  end;

var
  frmCadastroTarefas: TfrmCadastroTarefas;

implementation

{$R *.dfm}

{ TfrmCadastroTarefas }

procedure TfrmCadastroTarefas.Button1Click(Sender: TObject);
var
  lTarefa: TTarefas;
begin
  lTarefa:= TTarefas.Create;
  lTarefa.Codigo := FTarefas.Count+1;
  lTarefa.IdUsuario := 1;
  lTarefa.Titulo := edtTitulo.Text;
  lTarefa.Descricao := MemoDescricao.Text;
  lTarefa.DataCriacao := Now;
  FTarefas.Add(lTarefa);
  edtTitulo.Clear;
  MemoDescricao.Clear;
end;

procedure TfrmCadastroTarefas.Button2Click(Sender: TObject);
begin
close;
end;

constructor TfrmCadastroTarefas.Create(AOwner: TComponent;
  aTarefa: TObjectList<TTarefas>);
begin
  inherited Create(AOwner);
  FTarefas := aTarefa;
end;

end.
