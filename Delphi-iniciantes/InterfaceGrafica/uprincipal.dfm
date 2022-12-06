object frmPrinciapal: TfrmPrinciapal
  Left = 0
  Top = 0
  Caption = 'Live Delphi Iniciante'
  ClientHeight = 259
  ClientWidth = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 21
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 579
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 505
    object Edit1: TEdit
      Left = 0
      Top = 0
      Width = 481
      Height = 33
      Align = alClient
      TabOrder = 0
      OnChange = Edit1Change
      OnClick = Edit1Click
      ExplicitLeft = 48
      ExplicitTop = 40
      ExplicitWidth = 121
      ExplicitHeight = 29
    end
    object Button1: TButton
      Left = 481
      Top = 0
      Width = 98
      Height = 33
      Align = alRight
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button1Click
      ExplicitLeft = 520
      ExplicitTop = 1
      ExplicitHeight = 183
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 33
    Width = 451
    Height = 226
    Align = alClient
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 112
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object Panel2: TPanel
    Left = 451
    Top = 33
    Width = 128
    Height = 226
    Align = alRight
    Caption = 'Panel2'
    TabOrder = 2
    ExplicitLeft = 520
    ExplicitTop = 0
    ExplicitHeight = 259
    object Button2: TButton
      Left = 1
      Top = 1
      Width = 126
      Height = 40
      Align = alTop
      Caption = 'Informacao'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 1
      Top = 41
      Width = 126
      Height = 40
      Align = alTop
      Caption = 'Erro'
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 1
      Top = 81
      Width = 126
      Height = 40
      Align = alTop
      Caption = 'Alerta'
      TabOrder = 2
      OnClick = Button4Click
      ExplicitLeft = 56
      ExplicitTop = 136
      ExplicitWidth = 75
    end
    object Button5: TButton
      Left = 1
      Top = 121
      Width = 126
      Height = 40
      Align = alTop
      Caption = 'Interacao'
      TabOrder = 3
      OnClick = Button5Click
      ExplicitLeft = 48
      ExplicitTop = 176
      ExplicitWidth = 75
    end
  end
end
