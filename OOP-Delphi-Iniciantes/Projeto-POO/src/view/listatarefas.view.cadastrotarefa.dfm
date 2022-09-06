object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Cadastrar Tarefa'
  ClientHeight = 316
  ClientWidth = 399
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
    Width = 399
    Height = 316
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 104
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel2: TPanel
      Left = 0
      Top = 258
      Width = 399
      Height = 58
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      TabOrder = 0
      ExplicitTop = 248
      ExplicitWidth = 381
      object Button1: TButton
        Left = 3
        Top = 3
        Width = 94
        Height = 52
        Align = alLeft
        Caption = 'Salvar'
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 399
      Height = 258
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 381
      ExplicitHeight = 248
      object Edit1: TEdit
        Left = 16
        Top = 32
        Width = 353
        Height = 21
        TabOrder = 0
      end
      object Memo1: TMemo
        Left = 16
        Top = 80
        Width = 353
        Height = 145
        TabOrder = 1
      end
    end
  end
end
