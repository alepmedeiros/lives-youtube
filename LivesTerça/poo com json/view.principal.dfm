object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Orienta'#231#227'o a Objectos com JSON'
  ClientHeight = 454
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object PanelContainer: TPanel
    Left = 0
    Top = 0
    Width = 652
    Height = 454
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 112
    ExplicitWidth = 185
    ExplicitHeight = 41
    object PanelButton: TPanel
      Left = 0
      Top = 0
      Width = 652
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 0
      ExplicitWidth = 628
      object btnJsonLista: TButton
        Left = 485
        Top = 5
        Width = 160
        Height = 47
        Align = alLeft
        Caption = 'JSONArray para Lista'
        TabOrder = 0
        OnClick = btnJsonListaClick
      end
      object btnListaJson: TButton
        Left = 325
        Top = 5
        Width = 160
        Height = 47
        Align = alLeft
        Caption = 'Lista para JSONArray'
        TabOrder = 1
        OnClick = btnListaJsonClick
      end
      object btnJsonObject: TButton
        Left = 165
        Top = 5
        Width = 160
        Height = 47
        Align = alLeft
        Caption = 'JSON para Object'
        TabOrder = 2
        OnClick = btnJsonObjectClick
      end
      object btnObjectJson: TButton
        Left = 5
        Top = 5
        Width = 160
        Height = 47
        Align = alLeft
        Caption = 'Object para Json'
        TabOrder = 3
        OnClick = btnObjectJsonClick
      end
    end
    object PanelJson: TPanel
      Left = 0
      Top = 57
      Width = 325
      Height = 397
      Align = alLeft
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 1
      object Panel1: TPanel
        Left = 5
        Top = 5
        Width = 315
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Caption = 'JSON'
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 279
      end
      object MemoJSON: TMemo
        Left = 5
        Top = 40
        Width = 315
        Height = 352
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 1
        ExplicitLeft = 0
        ExplicitTop = 35
        ExplicitWidth = 279
        ExplicitHeight = 299
      end
    end
    object PanelObject: TPanel
      Left = 325
      Top = 57
      Width = 327
      Height = 397
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      TabOrder = 2
      ExplicitLeft = 279
      ExplicitTop = 58
      ExplicitWidth = 297
      ExplicitHeight = 334
      object Panel2: TPanel
        Left = 5
        Top = 5
        Width = 317
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Object'
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 297
      end
      object MemoObject: TMemo
        Left = 5
        Top = 40
        Width = 317
        Height = 352
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 1
        ExplicitLeft = 0
        ExplicitTop = 35
        ExplicitWidth = 297
        ExplicitHeight = 299
      end
    end
  end
end
