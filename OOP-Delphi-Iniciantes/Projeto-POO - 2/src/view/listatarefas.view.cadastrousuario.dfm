object frmCadastroUsuario: TfrmCadastroUsuario
  Left = 0
  Top = 0
  Caption = 'Cadastro Usuario'
  ClientHeight = 232
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 381
    Height = 232
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 306
    object Panel2: TPanel
      Left = 0
      Top = 174
      Width = 381
      Height = 58
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      TabOrder = 0
      ExplicitTop = 248
      object Button1: TButton
        Left = 3
        Top = 3
        Width = 94
        Height = 52
        Align = alLeft
        Caption = 'Salvar'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 381
      Height = 174
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      TabOrder = 1
      ExplicitHeight = 248
      object Panel4: TPanel
        Left = 10
        Top = 10
        Width = 361
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 361
          Height = 19
          Align = alTop
          Caption = 'Nome'
          ExplicitWidth = 42
        end
        object edtNome: TEdit
          Left = 0
          Top = 23
          Width = 361
          Height = 27
          Align = alBottom
          TabOrder = 0
          ExplicitLeft = 16
          ExplicitWidth = 329
        end
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 63
        Width = 361
        Height = 50
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 361
          Height = 19
          Align = alTop
          Caption = 'E-mail'
          ExplicitWidth = 45
        end
        object edtemail: TEdit
          Left = 0
          Top = 23
          Width = 361
          Height = 27
          Align = alBottom
          TabOrder = 0
          ExplicitLeft = 10
          ExplicitWidth = 329
        end
      end
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 116
        Width = 361
        Height = 50
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitTop = 113
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 361
          Height = 19
          Align = alTop
          Caption = 'Senha'
          ExplicitWidth = 43
        end
        object edtSenha: TEdit
          Left = 0
          Top = 23
          Width = 361
          Height = 27
          Align = alBottom
          PasswordChar = '*'
          TabOrder = 0
        end
      end
    end
  end
end
