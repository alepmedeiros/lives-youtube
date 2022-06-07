unit Unit3;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  pessoa;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  pessoa: TPessoa;
begin
  pessoa:= TPessoa.Create;
  try
    pessoa.Nome:= 'Joao';
    pessoa.DataNascimento := '25/12/1980';
    ShowMessage(pessoa.Nome + ' - ' + pessoa.Idade.CalculaIdade(pessoa.DataNascimento).ToString);
  finally
    pessoa.Free;
  end;
end;

end.
