unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
begin
  case MessageDlg('Deseja sair realmente do sistema?',mtConfirmation,
    mbYesNoCancel, 0) of
    6: begin
      ShowMessage('Blz, vou fechar');
      close;
    end;
    7: ShowMessage('blz, vamos continuar');
    else
      ShowMessage('blz, vamos seguir');
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  I: char;
begin
//  for I := 0 to 10000 do
//  begin
//    ProgressBar1.Position := I;
//    Application.ProcessMessages;
//  end;
//  for I := 10000 downto 0 do
//    ProgressBar1.Position := I;

  for I := 'G' downto 'A' do
    Memo1.Lines.Add('letra = ' + i);
end;

procedure TForm2.Button3Click(Sender: TObject);
var
  I: Integer;
begin
  I := 1;
//  while I <= 10 do
//  begin
//    Memo1.Lines.Add('I é = ' + I.ToString);
//    inc(I);
//  end;

  Memo1.Lines.Add('--------------------------');

  while (sqr(I) <= 99) do
  begin
    Memo1.Lines.Add('sqr(I) é = ' + I.ToString);
    inc(I);
  end;
end;

procedure TForm2.Button4Click(Sender: TObject);
var
  I: Integer;
  lexit: Boolean;
begin
  i:= 1;
//  lexit := false;
//  repeat
//    inc(I);
//
//    if sqr(I) > 99 then
//    begin
//      lexit := true;
//      Memo1.Lines.Add('srq(I) = ' + sqr(I).tostring);
//    end;
//
//    Memo1.Lines.Add('I = ' + I.ToString);
//  until lexit;

  repeat
    Inc(I);
    Memo1.Lines.Add('I = ' + i.ToString);
  until ((sqr(I) > 99) or (sqrt(I) > 2.5));
end;

end.
