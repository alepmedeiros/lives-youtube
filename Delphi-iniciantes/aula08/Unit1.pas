unit Unit1;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Unit2;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    Button1: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
var
  lForm02: TfrmSegundoForm;
begin
  lForm02:= TfrmSegundoForm.Create(nil);
  ShowMessage(VarGlobal);
  lForm02.ShowModal;
  ShowMessage(lForm02.Edit1.Text);

  ShowMessage('Alterado: ' + VarGlobal);
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  Label1.Caption := DateTimeToStr(Now);
end;

end.
