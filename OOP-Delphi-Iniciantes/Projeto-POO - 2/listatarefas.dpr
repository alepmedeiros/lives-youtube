program listatarefas;

uses
  Vcl.Forms,
  listatarefas.view.main in 'src\view\listatarefas.view.main.pas' {frmMain},
  listatarefas.model.usuario in 'src\model\listatarefas.model.usuario.pas',
  listatarefas.model.tarefas in 'src\model\listatarefas.model.tarefas.pas',
  listatarefas.view.cadastrousuario in 'src\view\listatarefas.view.cadastrousuario.pas' {frmCadastroUsuario},
  listatarefas.view.cadastrotarefa in 'src\view\listatarefas.view.cadastrotarefa.pas' {frmCadastroTarefas},
  listatarefas.view.login in 'src\view\listatarefas.view.login.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
