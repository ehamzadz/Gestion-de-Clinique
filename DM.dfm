object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 80
    Top = 104
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=GC_DB'
      'User_Name=hamza'
      'Password=Hamza7911-/*'
      'Server=127.0.0.1,1433'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnection1AfterConnect
    Left = 80
    Top = 48
  end
  object table_records: TFDTable
    IndexFieldNames = 'id_rc'
    Connection = FDConnection1
    TableName = 'GC_DB.dbo.records'
    Left = 80
    Top = 160
  end
  object table_users: TFDTable
    IndexFieldNames = 'user'
    Connection = FDConnection1
    TableName = 'GC_DB.dbo.users'
    Left = 80
    Top = 216
  end
  object table_tickets: TFDTable
    Active = True
    IndexFieldNames = 'num'
    Connection = FDConnection1
    TableName = 'tickets'
    Left = 80
    Top = 272
  end
  object table_patients: TFDTable
    Active = True
    IndexFieldNames = 'barcode'
    Connection = FDConnection1
    TableName = 'GC_DB.dbo.patients'
    Left = 552
    Top = 168
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
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from patients order by created_at DESC')
    Left = 552
    Top = 224
  end
  object qry_commune: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from commune order by id asc')
    Left = 264
    Top = 216
  end
  object UniQuery1: TUniQuery
    Left = 424
    Top = 184
  end
  object UniConnection1: TUniConnection
    Left = 424
    Top = 104
  end
  object FDConnection3: TFDConnection
    Params.Strings = (
      'Database=F:\Projects\Gestion-de-Clinique\Win32\Debug\db.mdb'
      'DriverID=MSAcc')
    LoginPrompt = False
    AfterConnect = FDConnection1AfterConnect
    Left = 176
    Top = 48
  end
end
