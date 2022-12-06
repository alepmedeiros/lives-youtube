program POOJSON;

uses
  Vcl.Forms,
  view.principal in 'view.principal.pas' {Form1},
  model.cliente in 'model.cliente.pas',
  model.endereco in 'model.endereco.pas',
  model.telefone in 'model.telefone.pas',
  model.enums in 'model.enums.pas',
  dto.interfaces in 'dto.interfaces.pas',
  dto.cliente in 'dto.cliente.pas',
  dto.telefone in 'dto.telefone.pas',
  dto.endereco in 'dto.endereco.pas',
  controller in 'controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
