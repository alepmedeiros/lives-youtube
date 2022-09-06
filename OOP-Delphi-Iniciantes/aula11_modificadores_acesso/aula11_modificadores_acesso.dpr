program aula11_modificadores_acesso;

uses
  Vcl.Forms,
  Unit9 in 'Unit9.pas' {Form9},
  modificadores.pessoa in 'modificadores.pessoa.pas',
  modificadores.cliente in 'modificadores.cliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
