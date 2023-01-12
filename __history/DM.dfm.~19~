object DataModule1: TDataModule1
  Height = 480
  Width = 640
  PixelsPerInch = 96
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 80
    Top = 104
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\db.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 48
  end
  object table_records: TFDTable
    Active = True
    IndexFieldNames = 'id_rc'
    Connection = FDConnection1
    TableName = 'records'
    Left = 80
    Top = 160
  end
  object table_users: TFDTable
    Active = True
    IndexFieldNames = 'user'
    Connection = FDConnection1
    TableName = 'users'
    Left = 80
    Top = 216
  end
  object table_counter: TFDTable
    Active = True
    IndexFieldNames = 'num'
    Connection = FDConnection1
    TableName = '[counter]'
    Left = 80
    Top = 272
  end
end
