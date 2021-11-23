object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 203
  Top = 143
  Height = 690
  Width = 1120
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Database2.mdb;Persi' +
      'st Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 136
  end
  object ADOTStaff: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Staff'
    Left = 168
    Top = 112
  end
  object DataSourceStaff: TDataSource
    DataSet = ADOTStaff
    Left = 288
    Top = 112
  end
  object ADOQueryBusyness: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Busyness.ID, Staff.FIO, Services.Title'
      
        'FROM Staff INNER JOIN (Services INNER JOIN Busyness ON Services.' +
        'ID = Busyness.service) ON Staff.ID = Busyness.staff')
    Left = 168
    Top = 200
  end
  object DataSourceBusyness: TDataSource
    DataSet = ADOQueryBusyness
    Left = 288
    Top = 200
  end
  object ADOQWork: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 168
    Top = 280
  end
  object DataSourceWork: TDataSource
    DataSet = ADOQWork
    Left = 288
    Top = 280
  end
  object ADOQServices: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID, Title, UnitPrice, Description'
      '  FROM Services ORDER BY ID')
    Left = 168
    Top = 48
  end
  object DataSourceQServices: TDataSource
    DataSet = ADOQServices
    Left = 288
    Top = 48
  end
  object ADOQOrder: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Order.ID AS ID , Services.Title, Order.'#1050#1110#1083#1100#1082#1110#1089#1090#1100'_'#1087#1086#1089#1083#1091#1075', ' +
        'Check.ID AS Check_id, Order.'#1042#1072#1088#1090#1110#1089#1090#1100
      
        'FROM [Check] INNER JOIN (Staff INNER JOIN (Services INNER JOIN (' +
        'Busyness INNER JOIN [Order] ON Busyness.ID = Order.'#1055#1086#1089#1083#1091#1075#1072') ON S' +
        'ervices.ID = Busyness.service) ON Staff.ID = Busyness.staff) ON ' +
        'Check.ID = Order.'#1050#1086#1076'_'#1095#1077#1082#1072
      'ORDER BY Order.ID')
    Left = 168
    Top = 360
  end
  object DataSourceOrder: TDataSource
    DataSet = ADOQOrder
    Left = 288
    Top = 360
  end
  object ADOQCheck: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Check.ID, Check.DateTime, Check.FinalSUM'
      'FROM [Check]'
      'ORDER BY Check.ID;')
    Left = 168
    Top = 440
  end
  object DataSourceCheck: TDataSource
    DataSet = ADOQCheck
    Left = 288
    Top = 440
  end
  object ADOQOrder2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Order.ID, Services.Title, Order.'#1050#1110#1083#1100#1082#1110#1089#1090#1100'_'#1087#1086#1089#1083#1091#1075', Order.'#1050 +
        #1086#1076'_'#1095#1077#1082#1072', Order.'#1042#1072#1088#1090#1110#1089#1090#1100' '
      
        'FROM Services INNER JOIN (Busyness INNER JOIN [Order] ON Busynes' +
        's.ID = Order.'#1055#1086#1089#1083#1091#1075#1072') ON Services.ID = Busyness.service '
      'WHERE Order.'#1050#1086#1076'_'#1095#1077#1082#1072'= 0')
    Left = 472
    Top = 368
  end
  object DataSOrder2: TDataSource
    DataSet = ADOQOrder2
    Left = 568
    Top = 368
  end
  object ADOTServices2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Services'
    Left = 472
    Top = 48
  end
  object DataSServices2: TDataSource
    DataSet = ADOTServices2
    Left = 568
    Top = 48
  end
  object ADOQRepOrder: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Order.ID AS ID , Services.Title, Order.'#1050#1110#1083#1100#1082#1110#1089#1090#1100'_'#1087#1086#1089#1083#1091#1075', ' +
        'Check.ID AS Check_id, Order.'#1042#1072#1088#1090#1110#1089#1090#1100
      
        'FROM [Check] INNER JOIN (Staff INNER JOIN (Services INNER JOIN (' +
        'Busyness INNER JOIN [Order] ON Busyness.ID = Order.'#1055#1086#1089#1083#1091#1075#1072') ON S' +
        'ervices.ID = Busyness.service) ON Staff.ID = Busyness.staff) ON ' +
        'Check.ID = Order.'#1050#1086#1076'_'#1095#1077#1082#1072
      'ORDER BY Order.ID')
    Left = 800
    Top = 368
  end
  object DataSRepOrder: TDataSource
    DataSet = ADOQRepOrder
    Left = 904
    Top = 368
  end
  object ADOQRepCheck: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Services.Title, Order.'#1050#1110#1083#1100#1082#1110#1089#1090#1100'_'#1087#1086#1089#1083#1091#1075', Services.UnitPric' +
        'e, Order.'#1042#1072#1088#1090#1110#1089#1090#1100', Order.'#1050#1086#1076'_'#1095#1077#1082#1072
      
        'FROM Staff INNER JOIN (Services INNER JOIN ([Check] INNER JOIN (' +
        'Busyness INNER JOIN [Order] ON Busyness.ID = Order.'#1055#1086#1089#1083#1091#1075#1072') ON C' +
        'heck.ID = Order.'#1050#1086#1076'_'#1095#1077#1082#1072') ON Services.ID = Busyness.service) ON ' +
        'Staff.ID = Busyness.staff;')
    Left = 472
    Top = 448
  end
  object DataSRepCheck: TDataSource
    DataSet = ADOQRepCheck
    Left = 568
    Top = 448
  end
end
