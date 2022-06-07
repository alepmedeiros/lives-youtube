unit view.principal;

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
  Vcl.StdCtrls,
  pessoa;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  {
    Abstração
    Encapsulamento
    Herança
    Polimorfismo
  }

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  pessoa: TPessoa;
begin
  pessoa:= TPessoa.Create;
  try
    pessoa.Id := 1;
    pessoa.Nome := 'Alessandro';
    pessoa.Tipo := 'F';
    pessoa.Email := 'alessandro@gmail.com';
    ShowMessage(pessoa.Id.ToString+' - '+pessoa.Nome+' - '+pessoa.Tipo+' - '+pessoa.Email);
  finally
    pessoa.Free;
  end;
end;


end.
