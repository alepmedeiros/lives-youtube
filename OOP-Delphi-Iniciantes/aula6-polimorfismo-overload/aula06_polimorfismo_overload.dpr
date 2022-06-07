program aula06_polimorfismo_overload;

uses
  Vcl.Forms,
  Unit5 in 'Unit5.pas' {Form5},
  cliente in 'cliente.pas',
  pessoa in 'pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
