program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmPrincipal},
  Unit2 in 'Unit2.pas' {frmSegundoForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmSegundoForm, frmSegundoForm);
  Application.Run;
end.
