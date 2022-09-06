unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.StdCtrls,
  modificadores.pessoa;

type
  TForm9 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{
  modificadores de acesso:
  Private
  Public
  Protected
  Published
  Strict private
  Strict protected
}

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
var
  lPessoa: TPessoa;
  lAmigo: TClienteAmigo;
begin
  lPessoa:= TPessoa.Create;
  lAmigo:= TClienteAmigo.Create;
  try
    lAmigo.Nome := 'Alessandro';
    lAmigo.SobreNome := 'Medeiros';

    ShowMessage(lAmigo.NomeCompleto);
  finally
    lPessoa.Free;
  end;
end;

end.
