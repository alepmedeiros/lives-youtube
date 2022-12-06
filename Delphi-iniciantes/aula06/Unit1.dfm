object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 293
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 403
    Height = 19
    Align = alTop
    Caption = 'Label1'
    ExplicitLeft = 16
    ExplicitTop = 23
    ExplicitWidth = 46
  end
  object Button1: TButton
    Left = 224
    Top = 58
    Width = 90
    Height = 37
    Caption = 'FormatCurr'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 0
    Top = 25
    Width = 409
    Height = 27
    Align = alTop
    TabOrder = 1
    Text = 'Edit1'
    ExplicitLeft = 8
    ExplicitTop = 48
    ExplicitWidth = 297
  end
  object Button2: TButton
    Left = 321
    Top = 60
    Width = 81
    Height = 35
    Caption = 'If..MSG'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 104
    Width = 393
    Height = 181
    TabOrder = 3
  end
  object Button3: TButton
    Left = 8
    Top = 58
    Width = 75
    Height = 40
    Caption = 'If...Else'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 89
    Top = 58
    Width = 80
    Height = 40
    Caption = 'Try...exe'
    TabOrder = 5
    OnClick = Button4Click
  end
end
