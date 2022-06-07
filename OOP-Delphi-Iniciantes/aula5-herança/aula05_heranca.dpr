program aula05_heranca;

uses
  Vcl.Forms,
  Unit4 in 'Unit4.pas' {Form4},
  pessoa in 'pessoa.pas',
  cliente in 'cliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
