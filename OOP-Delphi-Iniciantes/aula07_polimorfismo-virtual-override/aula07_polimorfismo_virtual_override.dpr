program aula07_polimorfismo_virtual_override;

uses
  Vcl.Forms,
  Unit6 in 'Unit6.pas' {Form6},
  pessoa in 'pessoa.pas',
  clientevirtual in 'clientevirtual.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
