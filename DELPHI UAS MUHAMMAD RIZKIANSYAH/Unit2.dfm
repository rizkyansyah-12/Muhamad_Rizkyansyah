object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 836
  Top = 139
  Height = 177
  Width = 244
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\asus\Downloads\libmysql (1).dll'
    Left = 32
    Top = 24
  end
  object Zkustomer: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 104
    Top = 24
  end
  object Dskustomer: TDataSource
    DataSet = Zkustomer
    Left = 104
    Top = 72
  end
end
