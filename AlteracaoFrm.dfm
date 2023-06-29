object AlteracaoForm: TAlteracaoForm
  Left = 0
  Top = 0
  Caption = 'AlteracaoForm'
  ClientHeight = 700
  ClientWidth = 1105
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object lblPesq: TLabel
    Left = 136
    Top = 3
    Width = 80
    Height = 18
    Caption = 'Pesquisa:'
  end
  object lblNome: TLabel
    Left = 176
    Top = 334
    Width = 54
    Height = 18
    Caption = 'Nome:'
  end
  object lblEndereco: TLabel
    Left = 176
    Top = 374
    Width = 81
    Height = 18
    Caption = 'Endere'#231'o:'
  end
  object lblbairro: TLabel
    Left = 176
    Top = 414
    Width = 55
    Height = 18
    Caption = 'Bairro:'
  end
  object lblCep: TLabel
    Left = 176
    Top = 454
    Width = 38
    Height = 18
    Caption = 'CEP:'
  end
  object lblCidade: TLabel
    Left = 176
    Top = 494
    Width = 63
    Height = 18
    Caption = 'Cidade:'
  end
  object lblUf: TLabel
    Left = 176
    Top = 534
    Width = 28
    Height = 18
    Caption = 'UF:'
  end
  object lblTelefone: TLabel
    Left = 176
    Top = 574
    Width = 76
    Height = 18
    Caption = 'Telefone:'
  end
  object lblID: TLabel
    Left = 176
    Top = 295
    Width = 26
    Height = 18
    Caption = 'ID:'
  end
  object edtPesq: TEdit
    Left = 280
    Top = 0
    Width = 337
    Height = 26
    TabOrder = 0
    OnChange = edtPesqChange
  end
  object grdClientes: TDBGrid
    Left = 16
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
    Left = 280
    Top = 331
    Width = 281
    Height = 26
    TabOrder = 2
  end
  object edtEndereco: TEdit
    Left = 280
    Top = 371
    Width = 281
    Height = 26
    TabOrder = 3
  end
  object edtBairro: TEdit
    Left = 280
    Top = 403
    Width = 281
    Height = 26
    TabOrder = 4
  end
  object edtCep: TEdit
    Left = 280
    Top = 451
    Width = 281
    Height = 26
    TabOrder = 5
  end
  object edtCidade: TEdit
    Left = 280
    Top = 491
    Width = 281
    Height = 26
    TabOrder = 6
  end
  object edtUf: TEdit
    Left = 520
    Top = 531
    Width = 41
    Height = 26
    TabOrder = 7
  end
  object edtTelefone: TEdit
    Left = 400
    Top = 563
    Width = 161
    Height = 26
    TabOrder = 8
  end
  object btnCadastrar: TButton
    Left = 176
    Top = 624
    Width = 107
    Height = 33
    Caption = 'Cadastrar'
    TabOrder = 9
    OnClick = btnCadastrarClick
  end
  object btnFechar: TButton
    Left = 432
    Top = 624
    Width = 107
    Height = 33
    Caption = 'Fechar'
    TabOrder = 10
    OnClick = btnFecharClick
  end
  object edtId: TEdit
    Left = 280
    Top = 292
    Width = 281
    Height = 26
    AutoSize = False
    ReadOnly = True
    TabOrder = 11
  end
end
