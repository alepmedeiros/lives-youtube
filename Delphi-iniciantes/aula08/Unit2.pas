unit Unit2;

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
  TfrmSegundoForm = class(TForm)
    lblTexto: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSegundoForm: TfrmSegundoForm;
  VarGlobal: String;

implementation

{$R *.dfm}

procedure TfrmSegundoForm.Button1Click(Sender: TObject);
begin
  VarGlobal := Edit1.Text;
  close;
end;

procedure TfrmSegundoForm.FormCreate(Sender: TObject);
begin
 VarGlobal := 'Texto primeiro global';
end;

end.
