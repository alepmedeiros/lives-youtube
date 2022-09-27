unit listatarefas.dao.tarefas;

interface

uses
  System.Generics.Collections,
  listatarefas.model.conexao,
  listatarefas.model.tarefas, System.SysUtils, Vcl.Dialogs;

type
  TTarefasDAO = class
  private
    FConexao: TDMConexao;

    function PreencheLista: TObjectList<TTarefas>;
    function PreencheObjeto: TTarefas;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Inserir(aTarefa: TTarefas);
    procedure Apagar(aId: Integer);
    function Alterar(aTarefa: TTarefas): TTarefas;
    function ListarTarefas(aUsuario: Integer): TObjectList<TTarefas>;
    function BuscarTarefa(aId: Integer): TTarefas;
  end;

implementation

{ TTarefasDAO }

function TTarefasDAO.Alterar(aTarefa: TTarefas): TTarefas;
begin
  FConexao.StartTransaction;
  try
    FConexao.SQL('UPDATE tarefas SET titulo=:titulo, descricao=:descricao WHERE id=:id');
    FConexao.Params('titulo', aTarefa.Titulo);
    FConexao.Params('descricao', aTarefa.Descricao);
    FConexao.Params('id', aTarefa.Codigo);
    FConexao.ExecSQL;
    FConexao.Commit;

    showmessage('Tarefa atualizada com sucesso');
  except
    FConexao.Rollback;
    raise Exception.Create('Erro ao tentar atualizar a tarefa');
  end;
end;

procedure TTarefasDAO.Apagar(aId: Integer);
begin
  FConexao.StartTransaction;
  try
    FConexao.SQL('delete from tarefas where id=:id');
    FConexao.Params('id', aId);
    FConexao.ExecSQL;
    FConexao.Commit;

    showmessage('Tarefa exclida com sucesso');
  except
    FConexao.Rollback;
    raise Exception.Create('Erro ao tentar excluir a tarefa');
  end;
end;

function TTarefasDAO.BuscarTarefa(aId: Integer): TTarefas;
begin
  FConexao.SQL('select * from tarefas where id=:id');
  FConexao.Params('id', aId);
  FConexao.Open;

  if not FConexao.DataSet.IsEmpty then
    Result := PreencheObjeto;
end;

constructor TTarefasDAO.Create;
begin
  FConexao := TDMConexao.Create(nil);
end;

destructor TTarefasDAO.Destroy;
begin
  FConexao.DisposeOf;
  inherited;
end;

procedure TTarefasDAO.Inserir(aTarefa: TTarefas);
begin
  FConexao.StartTransaction;
  try
    FConexao.SQL('INSERT INTO tarefas '+
                 '(idusuario, titulo, descricao) VALUES '+
                 '(:idusuario, :titulo, :descricao)');
    FConexao.Params('idusuario', aTarefa.IdUsuario);
    FConexao.Params('titulo', aTarefa.Titulo);
    FConexao.Params('descricao', aTarefa.Descricao);
    FConexao.ExecSQL;
    FConexao.Commit;

    showmessage('Tarefa cadastrada com sucesso');
  except
    FConexao.Rollback;
    raise Exception.Create('Erro ao tentar cadastrar a tarefa');
  end;
end;

function TTarefasDAO.ListarTarefas(aUsuario: Integer): TObjectList<TTarefas>;
begin
  FConexao.SQL('select * from tarefas where idusuario=:id');
  FConexao.Params('id', aUsuario);
  FConexao.Open;

  if not FConexao.DataSet.IsEmpty then
    Result := PreencheLista;
end;

function TTarefasDAO.PreencheLista: TObjectList<TTarefas>;
var
  lTarefa: TTarefas;
begin
  Result := TObjectList<TTarefas>.Create;

  FConexao.DataSet.First;
  while not FConexao.DataSet.Eof do
  begin
    lTarefa := TTarefas.Create;
    lTarefa.Codigo := FConexao.DataSet.FieldByName('id').AsInteger;
    lTarefa.IdUsuario := FConexao.DataSet.FieldByName('idusuario').AsInteger;
    lTarefa.Titulo := FConexao.DataSet.FieldByName('titulo').AsString;
    lTarefa.Descricao := FConexao.DataSet.FieldByName('descricao').AsString;
    lTarefa.DataCriacao := FConexao.DataSet.FieldByName('datacriacao').AsDateTime;
    Result.Add(lTarefa);
    FConexao.DataSet.Next;
  end;
end;

function TTarefasDAO.PreencheObjeto: TTarefas;
begin
  Result := TTarefas.Create;
  Result.Codigo := FConexao.DataSet.FieldByName('id').AsInteger;
  Result.IdUsuario := FConexao.DataSet.FieldByName('idusuario').AsInteger;
  Result.Titulo := FConexao.DataSet.FieldByName('titulo').AsString;
  Result.Descricao := FConexao.DataSet.FieldByName('descricao').AsString;
  Result.DataCriacao := FConexao.DataSet.FieldByName('datacriacao').AsDateTime;
end;

end.
