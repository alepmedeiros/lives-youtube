unit listatarefas.dao.usuario;

interface

uses
  listatarefas.model.usuario,
  listatarefas.model.conexao, System.SysUtils, Vcl.Dialogs;

type
  TDAOUsuario = class
  private
    FConn: TDMConexao;
    function PreencheObjeto: TUsuario;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Inserir(Value: TUsuario);
    procedure Apagar(Value: TUsuario);
    function Alterar(Value: TUsuario): TUsuario;
    function LoginUsuario(aEmil, aSenha: String): TUsuario;
  end;

implementation

{ TDAOUsuario }

function TDAOUsuario.Alterar(Value: TUsuario): TUsuario;
begin
  FConn.StartTransaction;
  try
    FConn.SQL('UPDATE usuario SET nome=:nome, email=:email, senha=:senha WHERE id=:id');
    FConn.Params('nome', Value.Nome);
    FConn.Params('email', Value.Email);
    FConn.Params('senha', Value.Senha);
    FConn.Params('id', Value.Id);
    FConn.ExecSQL;
    FConn.Commit;
    Showmessage('Registro atualizado com sucesso!');
  except
    FConn.Rollback;
    raise Exception.Create('Erro ao tentar alterar o registro');
  end;
end;

procedure TDAOUsuario.Apagar(Value: TUsuario);
begin
  FConn.StartTransaction;
  try
    FConn.SQL('delete from usuario where id=:id');
    FConn.Params('id', Value.Id);
    FConn.ExecSQL;
    FConn.Commit;
    ShowMessage('registro apagado com sucesso!');
  except
    FConn.Rollback;
    raise Exception.Create('Erro ao tentar excluir o registro');
  end;
end;

constructor TDAOUsuario.Create;
begin
  FConn:= TDMConexao.Create(nil);
end;

destructor TDAOUsuario.Destroy;
begin
  FConn.Free;
  inherited;
end;

procedure TDAOUsuario.Inserir(Value: TUsuario);
begin
  FConn.StartTransaction;
  try
    FConn.SQL('INSERT INTO usuario (nome, email, senha) VALUES (:nome, :email, :senha)');
    FConn.Params('nome', Value.Nome);
    FConn.Params('email', Value.Email);
    FConn.Params('senha', Value.Senha);
    FConn.ExecSQL;
    FConn.Commit;
    ShowMessage('registro salvo com sucesso!');
  except
    FConn.Rollback;
    raise Exception.Create('Erro ao tentar excluir o registro');
  end;
end;

function TDAOUsuario.LoginUsuario(aEmil, aSenha: String): TUsuario;
begin
  FConn.SQL('select * from usuario where email=:email and senha=:senha');
  FConn.Params('email', aEmil);
  FConn.Params('senha', aSenha);
  FConn.Open;

  if FConn.DataSet.IsEmpty then
  begin
    ShowMessage('Login inválido');
    Exit;
  end;

  Result := PreencheObjeto;
end;

function TDAOUsuario.PreencheObjeto: TUsuario;
begin
  Result := TUsuario.Create;
  FConn.DataSet.First;
  while not FConn.DataSet.Eof do
  begin
    Result.Id := FConn.DataSet.FieldByName('id').AsInteger;
    Result.Nome := FConn.DataSet.FieldByName('nome').AsString;
    Result.Email := FConn.DataSet.FieldByName('email').AsString;
    Result.Senha := FConn.DataSet.FieldByName('senha').AsString;
    FConn.DataSet.Next;
  end;
end;

end.
