object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Tarefas'
  ClientHeight = 333
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 412
    Height = 333
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 412
      Height = 35
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Lista de Tarefas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 0
      Top = 35
      Width = 412
      Height = 298
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel4: TPanel
        Left = 0
        Top = 236
        Width = 412
        Height = 62
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
          Width = 75
          Height = 56
          Align = alLeft
          Caption = 'Novo'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 78
          Top = 3
          Width = 75
          Height = 56
          Align = alLeft
          Caption = 'Editar'
          TabOrder = 1
        end
        object Button3: TButton
          Left = 334
          Top = 3
          Width = 75
          Height = 56
          Align = alRight
          Caption = 'Cancelar'
          TabOrder = 2
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 412
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        Padding.Left = 2
        Padding.Top = 2
        Padding.Right = 2
        Padding.Bottom = 2
        TabOrder = 1
        object Edit1: TEdit
          Left = 2
          Top = 2
          Width = 327
          Height = 26
          Align = alLeft
          BevelInner = bvNone
          BevelOuter = bvNone
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          ExplicitHeight = 25
        end
        object Button4: TButton
          Left = 335
          Top = 2
          Width = 75
          Height = 26
          Align = alRight
          Caption = 'Pesquisar'
          TabOrder = 1
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 30
        Width = 412
        Height = 206
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 2
        object ListView1: TListView
          Left = 3
          Top = 3
          Width = 406
          Height = 200
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          Columns = <
            item
              Caption = 'Id'
            end
            item
              Caption = 'Titulo'
              Width = 200
            end
            item
              Caption = 'Data/Hora'
              Width = 150
            end>
          Ctl3D = False
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
    end
  end
end
