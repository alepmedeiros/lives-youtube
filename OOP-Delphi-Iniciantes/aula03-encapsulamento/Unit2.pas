unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, contabancaria;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  lConta,lConta2: TContaBancaria;
begin
  lConta:= TContaBancaria.Create;
  lConta2:= TContaBancaria.Create;
  try
    lConta.Nome := 'Danilo';
    lConta.Depositar(50);


    lConta2.Nome := 'Samuel';
    lConta2.Depositar(150);
    lConta2.Sacar(15);

    Memo1.Lines.Add(lConta.Nome);
    Memo1.Lines.Add(lConta.Saldo.ToString);

    Memo1.Lines.Add(lConta2.Nome);
    Memo1.Lines.Add(lConta2.Saldo.ToString);
  finally
    lConta.DisposeOf;
    lConta2.DisposeOf;
  end;
end;

end.
