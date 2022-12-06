object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio 01'
  ClientHeight = 136
  ClientWidth = 418
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
    Left = 32
    Top = 32
    Width = 46
    Height = 19
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 32
    Top = 79
    Width = 102
    Height = 49
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 328
    Top = 24
  end
end
