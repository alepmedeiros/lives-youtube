object DMConexao: TDMConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\MyRepository\lives-youtube\OOP-Delphi-Iniciantes\Pro' +
        'jeto-POO - 2\bd\SimpleProject.sdb'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 136
    Top = 24
  end
end
