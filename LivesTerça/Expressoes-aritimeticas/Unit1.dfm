object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 124
  ClientWidth = 435
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
    Left = 272
    Top = 35
    Width = 15
    Height = 24
    Caption = '='
  end
  object Edit1: TEdit
    Left = 16
    Top = 32
    Width = 121
    Height = 30
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 143
    Top = 32
    Width = 121
    Height = 30
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 296
    Top = 32
    Width = 121
    Height = 30
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 68
    Width = 50
    Height = 40
    Caption = '+'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 72
    Top = 68
    Width = 50
    Height = 40
    Caption = '-'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 128
    Top = 68
    Width = 50
    Height = 40
    Caption = '*'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 184
    Top = 68
    Width = 50
    Height = 40
    Caption = '/'
    TabOrder = 6
    OnClick = Button4Click
  end
end
