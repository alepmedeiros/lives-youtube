unit view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, controller;

type
  TForm1 = class(TForm)
    PanelContainer: TPanel;
    PanelButton: TPanel;
    btnJsonLista: TButton;
    btnListaJson: TButton;
    btnJsonObject: TButton;
    btnObjectJson: TButton;
    PanelJson: TPanel;
    PanelObject: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    MemoJSON: TMemo;
    MemoObject: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnObjectJsonClick(Sender: TObject);
    procedure btnJsonObjectClick(Sender: TObject);
    procedure btnListaJsonClick(Sender: TObject);
    procedure btnJsonListaClick(Sender: TObject);
  private
    procedure Responsive;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnJsonListaClick(Sender: TObject);
begin
  MemoObject.Clear;

  MemoObject.Lines.Add(TController.New
    .Cliente(MemoJSON.Text).ToLista);
end;

procedure TForm1.btnJsonObjectClick(Sender: TObject);
begin
  MemoObject.Lines
    .Add(TController.New.Cliente(MemoJSON.Text).ToString);
end;

procedure TForm1.btnListaJsonClick(Sender: TObject);
begin
  MemoJSON.Clear;

  MemoJSON.Lines.Add(
   TController.New.Cliente
      .Nome('Alessandro')
      .SobreNome('Medeiros')
      .Tipo('fisica')
      .Endereco
        .Logradouro('Rua dos testes')
        .Numero('123')
        .Complemento('321')
        .Bairro('Centro')
        .Cidade('Cabo frio')
        .Estado('RJ')
        .Cep('12345678')
      .Build
      .Telefone
        .Numero('2134567890')
        .Tipo('FIXO')
      .Build
      .Telefone
        .Numero('21989890076')
        .Tipo('CELULAR')
      .BUild
    .Build
    .Nome('Joao')
      .SobreNome('Medeiros')
      .Tipo('juridica')
      .Endereco
        .Logradouro('Rua outros')
        .Numero('321')
        .Bairro('Centro')
        .Cidade('Cabo frio')
        .Estado('RJ')
        .Cep('321654')
      .Build
      .Telefone
        .Numero('2195555555')
        .Tipo('CELULAR')
      .BUild
    .Build
    .Nome('Kelvin')
      .SobreNome('Medeiros')
      .Tipo('fisica')
      .Endereco
        .Logradouro('Rua dos testes')
        .Numero('123')
        .Complemento('321')
        .Bairro('Centro')
        .Cidade('Cabo frio')
        .Estado('RJ')
        .Cep('12345678')
      .Build
      .Telefone
        .Numero('2134567890')
        .Tipo('FIXO')
      .Build
      .Telefone
        .Numero('2132156894')
        .Tipo('trabalho')
      .BUild
    .Build.ToJSONArray.ToString);
end;

procedure TForm1.btnObjectJsonClick(Sender: TObject);
begin
  MemoJSON.Lines.Add(
    TController.New.Cliente
      .Nome('Alessandro')
      .SobreNome('Medeiros')
      .Tipo('fisica')
      .Endereco
        .Logradouro('Rua dos testes')
        .Numero('123')
        .Complemento('321')
        .Bairro('Centro')
        .Cidade('Cabo frio')
        .Estado('RJ')
        .Cep('12345678')
      .Build
      .Telefone
        .Numero('2134567890')
        .Tipo('FIXO')
      .Build
      .Telefone
        .Numero('21989890076')
        .Tipo('CELULAR')
      .BUild
    .Build
    .ToJSON.ToString);
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  Responsive;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Responsive;
end;

procedure TForm1.Responsive;
begin
  PanelJson.Width := Round(PanelContainer.Width / 2);

  btnObjectJson.Width := Round((PanelButton.Width/4)-5);
  btnJsonObject.Width := Round((PanelButton.Width/4)-5);
  btnListaJson.Width := Round((PanelButton.Width/4)-5);
  btnJsonLista.Width := Round((PanelButton.Width/4)-5);
end;

end.
