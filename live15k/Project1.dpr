program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  pessoa in 'pessoa.pas',
  endereco in 'endereco.pas',
  pessoafisica in 'pessoafisica.pas',
  pessoajuridica in 'pessoajuridica.pas',
  interfaces in 'interfaces.pas',
  pessoainterface in 'pessoainterface.pas',
  enderecointerface in 'enderecointerface.pas',
  pessoajuridicaI in 'pessoajuridicaI.pas',
  pessoafisicai in 'pessoafisicai.pas',
  titpopessoa in 'titpopessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
