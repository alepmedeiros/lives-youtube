object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Cadastro Usuario'
  ClientHeight = 306
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 381
    Height = 306
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 104
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel2: TPanel
      Left = 0
      Top = 248
      Width = 381
      Height = 58
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      TabOrder = 0
      object Button1: TButton
        Left = 3
        Top = 3
        Width = 94
        Height = 52
        Align = alLeft
        Caption = 'Salvar'
        TabOrder = 0
        ExplicitHeight = 60
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 381
      Height = 248
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 72
      ExplicitTop = 104
      ExplicitWidth = 185
      ExplicitHeight = 41
      object Edit1: TEdit
        Left = 16
        Top = 32
        Width = 329
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 16
        Top = 114
        Width = 329
        Height = 21
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 16
        Top = 75
        Width = 329
        Height = 21
        TabOrder = 2
      end
    end
  end
end
