object dm: Tdm
  OldCreateOrder = False
  Height = 299
  Width = 574
  object srcClientes: TDataSource
    DataSet = qryClientes
    Left = 152
    Top = 104
  end
  object qryReport: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * from CLIENTES;')
    Left = 240
    Top = 48
    object qryReportCD_CODIGOCLI: TIntegerField
      FieldName = 'CD_CODIGOCLI'
      Origin = 'CD_CODIGOCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryReportDS_NOME: TStringField
      FieldName = 'DS_NOME'
      Origin = 'DS_NOME'
    end
    object qryReportDS_ENDERECO: TStringField
      FieldName = 'DS_ENDERECO'
      Origin = 'DS_ENDERECO'
      Size = 40
    end
    object qryReportDS_BAIRRO: TStringField
      FieldName = 'DS_BAIRRO'
      Origin = 'DS_BAIRRO'
      Size = 30
    end
    object qryReportNR_CEP: TStringField
      FieldName = 'NR_CEP'
      Origin = 'NR_CEP'
      Size = 8
    end
    object qryReportDS_CIDADE: TStringField
      FieldName = 'DS_CIDADE'
      Origin = 'DS_CIDADE'
      Size = 30
    end
    object qryReportDS_UF: TStringField
      FieldName = 'DS_UF'
      Origin = 'DS_UF'
      Size = 2
    end
    object qryReportDS_FONE: TStringField
      FieldName = 'DS_FONE'
      Origin = 'DS_FONE'
    end
  end
  object DSreport: TDataSource
    DataSet = qryReport
    Left = 240
    Top = 112
  end
  object conexao: TFDConnection
    Params.Strings = (
      'Database=seoSistemas'
      'User_Name=root'
      'Password=123456'
      'Port=3305'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 24
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\vinil\OneDrive\Documentos\Atividades\lib\libmariadb.dll'
    Left = 80
    Top = 200
  end
  object qryClientes: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * from clientes;')
    Left = 312
    Top = 56
  end
end
