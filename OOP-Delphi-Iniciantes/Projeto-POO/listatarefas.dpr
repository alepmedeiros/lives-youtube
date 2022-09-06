program listatarefas;

uses
  Vcl.Forms,
  listatarefas.view.main in 'src\view\listatarefas.view.main.pas' {Form1},
  listatarefas.model.usuario in 'src\model\listatarefas.model.usuario.pas',
  listatarefas.model.tarefas in 'src\model\listatarefas.model.tarefas.pas',
  listatarefas.view.cadastrousuario in 'src\view\listatarefas.view.cadastrousuario.pas' {Form2},
  listatarefas.view.cadastrotarefa in 'src\view\listatarefas.view.cadastrotarefa.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
