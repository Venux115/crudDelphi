object PesquisaForm: TPesquisaForm
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  BorderStyle = bsSingle
  Caption = 'PesquisaForm'
  ClientHeight = 542
  ClientWidth = 1154
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 1154
    Height = 81
    Align = alTop
    TabOrder = 0
    object lblPesq: TLabel
      Left = 176
      Top = 27
      Width = 67
      Height = 19
      Caption = 'Pesquisa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edtPesq: TEdit
      Left = 312
      Top = 24
      Width = 529
      Height = 21
      TabOrder = 0
      OnChange = edtPesqChange
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 81
    Width = 1154
    Height = 387
    Align = alClient
    TabOrder = 1
    object grdClientes: TDBGrid
      Left = 1
      Top = 1
      Width = 1152
      Height = 385
      Align = alClient
      DataSource = dm.srcClientes
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
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
  end
  object pnlBotao: TPanel
    Left = 0
    Top = 468
    Width = 1154
    Height = 74
    Align = alBottom
    TabOrder = 2
  end
end
