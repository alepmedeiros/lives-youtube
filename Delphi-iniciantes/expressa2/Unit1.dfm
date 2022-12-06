object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 276
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 24
  object edtexpressao: TEdit
    Left = 5
    Top = 2
    Width = 284
    Height = 30
    Alignment = taRightJustify
    BorderStyle = bsNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object edtResultado: TEdit
    Left = 5
    Top = 32
    Width = 285
    Height = 30
    Alignment = taRightJustify
    BorderStyle = bsNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object btnUm: TButton
    Left = 4
    Top = 191
    Width = 70
    Height = 40
    Caption = '1'
    TabOrder = 2
    OnClick = btnUmClick
  end
  object btnDois: TButton
    Left = 76
    Top = 191
    Width = 70
    Height = 40
    Caption = '2'
    TabOrder = 3
    OnClick = btnDoisClick
  end
  object btnTres: TButton
    Left = 147
    Top = 191
    Width = 70
    Height = 40
    Caption = '3'
    TabOrder = 4
    OnClick = btnTresClick
  end
  object btnQuatro: TButton
    Left = 4
    Top = 150
    Width = 70
    Height = 40
    Caption = '4'
    TabOrder = 5
    OnClick = btnQuatroClick
  end
  object btnCinco: TButton
    Left = 76
    Top = 150
    Width = 70
    Height = 40
    Caption = '5'
    TabOrder = 6
    OnClick = btnCincoClick
  end
  object btnSeis: TButton
    Left = 148
    Top = 150
    Width = 70
    Height = 40
    Caption = '6'
    TabOrder = 7
    OnClick = btnSeisClick
  end
  object btnSete: TButton
    Left = 4
    Top = 109
    Width = 70
    Height = 40
    Caption = '7'
    TabOrder = 8
    OnClick = btnSeteClick
  end
  object btnOito: TButton
    Left = 76
    Top = 109
    Width = 70
    Height = 40
    Caption = '8'
    TabOrder = 9
    OnClick = btnOitoClick
  end
  object btnNove: TButton
    Left = 148
    Top = 109
    Width = 70
    Height = 40
    Caption = '9'
    TabOrder = 10
    OnClick = btnNoveClick
  end
  object btnZero: TButton
    Left = 76
    Top = 232
    Width = 70
    Height = 40
    Caption = '0'
    TabOrder = 11
    OnClick = btnZeroClick
  end
  object btnBackspace: TButton
    Left = 148
    Top = 232
    Width = 70
    Height = 40
    Caption = 'Back'
    TabOrder = 12
    OnClick = btnBackspaceClick
  end
  object btnVirgula: TButton
    Left = 4
    Top = 232
    Width = 70
    Height = 40
    Caption = ','
    TabOrder = 13
    OnClick = btnVirgulaClick
  end
  object btnSomar: TButton
    Left = 219
    Top = 191
    Width = 70
    Height = 40
    Caption = '+'
    TabOrder = 14
    OnClick = btnSomarClick
  end
  object btnSubtrair: TButton
    Left = 220
    Top = 150
    Width = 70
    Height = 40
    Caption = '-'
    TabOrder = 15
    OnClick = btnSubtrairClick
  end
  object btnMultiplicar: TButton
    Left = 220
    Top = 109
    Width = 70
    Height = 40
    Caption = '*'
    TabOrder = 16
    OnClick = btnMultiplicarClick
  end
  object btnIgual: TButton
    Left = 219
    Top = 232
    Width = 70
    Height = 40
    Caption = '='
    TabOrder = 17
    OnClick = btnIgualClick
  end
  object btnDividir: TButton
    Left = 220
    Top = 67
    Width = 70
    Height = 40
    Caption = '/'
    TabOrder = 18
    OnClick = btnDividirClick
  end
  object btnLimpar: TButton
    Left = 4
    Top = 67
    Width = 214
    Height = 40
    Caption = 'C'
    TabOrder = 19
    OnClick = btnLimparClick
  end
end
