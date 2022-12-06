object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 89
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 24
  object Label1: TLabel
    Left = 234
    Top = 9
    Width = 15
    Height = 24
    Caption = '='
  end
  object edtexpressao1: TEdit
    Left = 4
    Top = 7
    Width = 110
    Height = 30
    Alignment = taRightJustify
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object edtexpressao2: TEdit
    Left = 120
    Top = 8
    Width = 110
    Height = 30
    Alignment = taRightJustify
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object edtResultado: TEdit
    Left = 252
    Top = 7
    Width = 110
    Height = 30
    Alignment = taRightJustify
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object btnSomar: TButton
    Left = 4
    Top = 42
    Width = 70
    Height = 40
    Caption = '+'
    TabOrder = 3
    OnClick = btnSomarClick
  end
  object btnSubtrair: TButton
    Left = 74
    Top = 42
    Width = 70
    Height = 40
    Caption = '-'
    TabOrder = 4
    OnClick = btnSubtrairClick
  end
  object btnMultiplicar: TButton
    Left = 145
    Top = 42
    Width = 70
    Height = 40
    Caption = '*'
    TabOrder = 5
    OnClick = btnMultiplicarClick
  end
  object btnDividir: TButton
    Left = 216
    Top = 42
    Width = 70
    Height = 40
    Caption = '/'
    TabOrder = 6
    OnClick = btnDividirClick
  end
end
