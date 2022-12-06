object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 475
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 89
    Height = 33
    Caption = 'case..of'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 113
    Top = 8
    Width = 75
    Height = 33
    Caption = 'for..do'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 210
    Top = 8
    Width = 75
    Height = 33
    Caption = 'while..do'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 299
    Top = 8
    Width = 105
    Height = 33
    Caption = 'repeat..until'
    TabOrder = 3
    OnClick = Button4Click
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 56
    Width = 396
    Height = 17
    Max = 10000
    TabOrder = 4
  end
  object Memo1: TMemo
    Left = 8
    Top = 79
    Width = 396
    Height = 388
    TabOrder = 5
  end
end
