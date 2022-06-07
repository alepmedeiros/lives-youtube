program Aula04_acoplamento;

uses
  Vcl.Forms,
  Unit3 in 'Unit3.pas' {Form3},
  funcoesdata in 'funcoesdata.pas',
  utils in 'utils.pas',
  pessoa in 'pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
