object ExcluirForm: TExcluirForm
  Left = 0
  Top = 0
  Caption = 'ExcluirForm'
  ClientHeight = 701
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object lblPesq: TLabel
    Left = 136
    Top = 11
    Width = 63
    Height = 16
    Caption = 'Pesquisa:'
  end
  object lblNome: TLabel
    Left = 144
    Top = 326
    Width = 42
    Height = 16
    Caption = 'Nome:'
  end
  object lblEndereco: TLabel
    Left = 144
    Top = 366
    Width = 67
    Height = 16
    Caption = 'Endere'#231'o:'
  end
  object lblbairro: TLabel
    Left = 144
    Top = 406
    Width = 43
    Height = 16
    Caption = 'Bairro:'
  end
  object lblCep: TLabel
    Left = 144
    Top = 446
    Width = 31
    Height = 16
    Caption = 'CEP:'
  end
  object lblCidade: TLabel
    Left = 144
    Top = 486
    Width = 50
    Height = 16
    Caption = 'Cidade:'
  end
  object lblUf: TLabel
    Left = 144
    Top = 526
    Width = 23
    Height = 16
    Caption = 'UF:'
  end
  object lblTelefone: TLabel
    Left = 144
    Top = 566
    Width = 62
    Height = 16
    Caption = 'Telefone:'
  end
  object lblID: TLabel
    Left = 144
    Top = 287
    Width = 20
    Height = 16
    Caption = 'ID:'
  end
  object edtPesq: TEdit
    Left = 272
    Top = 8
    Width = 337
    Height = 24
    TabOrder = 0
    OnChange = edtPesqChange
  end
  object grdClientes: TDBGrid
    Left = 23
    Top = 64
    Width = 1081
    Height = 193
    DataSource = dm.srcClientes
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    OnCellClick = grdClientesCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CD_CODIGOCLI'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_NOME'
        Width = 227
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_ENDERECO'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_BAIRRO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_CEP'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_CIDADE'
        Width = 177
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_UF'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_FONE'
        Width = 116
        Visible = True
      end>
  end
  object edtNome: TEdit
    Left = 248
    Top = 323
    Width = 281
    Height = 24
    TabOrder = 2
  end
  object edtEndereco: TEdit
    Left = 248
    Top = 363
    Width = 281
    Height = 24
    TabOrder = 3
  end
  object edtBairro: TEdit
    Left = 248
    Top = 395
    Width = 281
    Height = 24
    TabOrder = 4
  end
  object edtCep: TEdit
    Left = 248
    Top = 443
    Width = 281
    Height = 24
    TabOrder = 5
  end
  object edtCidade: TEdit
    Left = 248
    Top = 483
    Width = 281
    Height = 24
    TabOrder = 6
  end
  object edtUf: TEdit
    Left = 488
    Top = 523
    Width = 41
    Height = 24
    TabOrder = 7
  end
  object edtTelefone: TEdit
    Left = 368
    Top = 555
    Width = 161
    Height = 24
    TabOrder = 8
  end
  object btnExcluir: TButton
    Left = 144
    Top = 635
    Width = 107
    Height = 33
    Caption = 'Excluir'
    TabOrder = 9
    OnClick = btnExcluirClick
  end
  object btnFechar: TButton
    Left = 400
    Top = 635
    Width = 107
    Height = 33
    Caption = 'Fechar'
    TabOrder = 10
    OnClick = btnFecharClick
  end
  object edtId: TEdit
    Left = 248
    Top = 284
    Width = 281
    Height = 24
    ReadOnly = True
    TabOrder = 11
  end
end
