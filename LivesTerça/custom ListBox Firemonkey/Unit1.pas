unit Unit1;

interface

uses
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Types,
  System.UITypes,
  System.Rtti,
  FMX.Forms,
  FMX.Dialogs,
  FMX.Types,
  FMX.Layouts,
  FMX.Styles,
  FMX.StdCtrls,
  FMX.ListBox,
  FMX.Objects,
  FMX.Controls,
  FMX.Edit,
  FMX.Effects,
  FMX.Graphics,
  FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button2: TButton;
    InfoLabel: TLabel;
    Button3: TButton;
    CheckBox1: TCheckBox;
    Resources1: TStyleBook;
    OpenDialog1: TOpenDialog;
    Image1: TImage;
    Image2: TImage;
    Button1: TButton;
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure DoVisibleChange(Sender: TObject);
    procedure DoInfoClick(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

function LocalizarItemPrincipal(Obj: TFmxObject; ParentClass: TClass): TFmxObject;
begin
  Result := nil;
  if Assigned(Obj.Parent) then
    if Obj.Parent.ClassType = ParentClass then
      Result := Obj.Parent
    else
      Result := LocalizarItemPrincipal(Obj.Parent, ParentClass);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  lItem: TListBoxItem;
  I: Integer;
begin
  OpenDialog1.Filter := TBitmapCodecManager.GetFilterString;
  if OpenDialog1.Execute then
  begin
    for I := 0 to Pred(OpenDialog1.Files.Count) do
    begin
      lItem := TListBoxItem.Create(nil);
      lItem.Parent := ListBox1;
      lItem.TagString := OpenDialog1.Files[I];
      lItem.StyleLookup := 'CustomItem';
      lItem.Text := OpenDialog1.Files[I];
      lItem.StylesData['icon'] := OpenDialog1.Files[I];
      lItem.StylesData['resolution'] := '1024x768 px';
      lItem.StylesData['depth'] := '32 bit';
      lItem.StylesData['visible'] := True;
      lItem.StylesData['visible.OnChange'] := TValue.From<TNotifyEvent>(DoVisibleChange);
      lItem.StylesData['info.OnClick'] := TValue.From<TNotifyEvent>(DoInfoClick);
    end;
    Caption := ListBox1.Count.ToString + ' Items';
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  lItem: TListBoxItem;
begin
  lItem := TListBoxItem.Create(nil);
  lItem.Parent := ListBox1;
  lItem.StyleLookup := 'CustomItem';
  lItem.Text := 'Item ' + lItem.Index.ToString;

  if Odd(lItem.Index) then
    lItem.ItemData.Bitmap := Image1.Bitmap
  else
    lItem.ItemData.Bitmap := Image2.Bitmap;

  lItem.StylesData['resolution'] := '1024x768 px';
  lItem.StylesData['depth'] := '32 bit';
  lItem.StylesData['visible'] := True;
  lItem.StylesData['visible.OnChange'] := TValue.From<TNotifyEvent>(DoVisibleChange);
  lItem.StylesData['info.OnClick'] := TValue.From<TNotifyEvent>(DoInfoClick);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  I: Integer;
begin
  ListBox1.BeginUpdate;
  for I := 1 to 1000 do
    Button2Click(Sender);
  ListBox1.EndUpdate;

  Caption := ListBox1.Count.ToString + ' Items';
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
  ListBox1.AllowDrag := CheckBox1.IsChecked;
end;

procedure TForm1.DoInfoClick(Sender: TObject);
var
  lItem : TListBoxItem;
begin
  lItem := TListBoxItem(LocalizarItemPrincipal(Sender as TFMXObject, TListBoxItem));
  if Assigned(lItem) then
    InfoLabel.Text := 'O botão info foi clicado ' + lItem.Index.ToString +
      ' listbox item';
end;

procedure TForm1.DoVisibleChange(Sender: TObject);
var
  lItem : TListBoxItem;
begin
  lItem := TListBoxItem(LocalizarItemPrincipal(Sender as TFMXObject, TListBoxItem));
  if Assigned(lItem) then
    InfoLabel.Text := 'Checkox mudado ' + lItem.Index.ToString +
      ' listbox item para ' + BoolToStr(lItem.StylesData['visible'].AsBoolean, true);
end;

end.
