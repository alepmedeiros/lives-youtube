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
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  r: string;
begin
  r := InputBox('Informacao', 'Informe seu nome: ', '');
  ShowMessage(r);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  MessageDlg('Erro na operacao', mtError,[mbOK],0);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  MessageDlg('Alerta na operacao', mtWarning,[mbOK],0);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  Retorno: Integer;
begin
  Retorno := MessageDlg('Deseja realmente sair da sistema?', mtInformation,[mbYes, mbNo],0);
  ShowMessage(Retorno.ToString);
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Retorno: Integer;
begin
  Retorno := MessageDlg('Deseja realmente sair da sistema?', mtConfirmation,[mbYes, mbNo],0);
  ShowMessage(Retorno.ToString);
end;

end.
