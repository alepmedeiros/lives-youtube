program DelphiIniciante;

uses
  Vcl.Forms,
  uprincipal in 'uprincipal.pas' {frmPrinciapal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrinciapal, frmPrinciapal);
  Application.Run;
end.
