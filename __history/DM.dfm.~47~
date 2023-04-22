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
      'Database=F:\Projects\Gestion-de-Clinique\Win32\Debug\db.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnection1AfterConnect
    Left = 80
    Top = 48
  end
  object table_records: TFDTable
    IndexFieldNames = 'id_rc'
    Connection = FDConnection1
    TableName = 'records'
    Left = 80
    Top = 160
  end
  object table_users: TFDTable
    IndexFieldNames = 'user'
    Connection = FDConnection1
    TableName = 'users'
    Left = 80
    Top = 216
  end
  object table_tickets: TFDTable
    IndexFieldNames = 'num'
    Connection = FDConnection1
    TableName = 'tickets'
    Left = 80
    Top = 272
  end
  object table_patients: TFDTable
    IndexFieldNames = 'CDEP'
    Connection = FDConnection1
    TableName = 'patients'
    Left = 80
    Top = 328
  end
  object FDConnection2: TFDConnection
    Params.Strings = (
      'Database=D:\db.mdb'
      'DriverID=MSAcc')
    LoginPrompt = False
    Left = 264
    Top = 48
  end
  object qry_patients: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from patients order by CDEP DESC')
    Left = 264
    Top = 160
  end
  object qry_commune: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from commune order by id asc')
    Left = 392
    Top = 256
  end
end
