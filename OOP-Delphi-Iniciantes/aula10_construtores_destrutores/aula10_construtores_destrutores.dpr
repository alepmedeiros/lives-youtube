program aula10_construtores_destrutores;

uses
  Vcl.Forms,
  Unit8 in 'Unit8.pas' {Form8},
  cliente in 'cliente.pas',
  pessoa in 'pessoa.pas',
  endereco in 'endereco.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := true;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
