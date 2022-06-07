program aula08_polimorfismo_abstract;

uses
  Vcl.Forms,
  Unit7 in 'Unit7.pas' {Form7},
  pessoa in 'pessoa.pas',
  cliente in 'cliente.pas',
  usuario in 'usuario.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
