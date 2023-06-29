object CadastroForm: TCadastroForm
  Left = 0
  Top = 0
  Caption = 'CadastroForm'
  ClientHeight = 459
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object lblNome: TLabel
    Left = 72
    Top = 54
    Width = 54
    Height = 18
    Caption = 'Nome:'
  end
  object lblEndereco: TLabel
    Left = 72
    Top = 94
    Width = 81
    Height = 18
    Caption = 'Endere'#231'o:'
  end
  object lblbairro: TLabel
    Left = 72
    Top = 134
    Width = 55
    Height = 18
    Caption = 'Bairro:'
  end
  object lblCep: TLabel
    Left = 72
    Top = 174
    Width = 38
    Height = 18
    Caption = 'CEP:'
  end
  object lblCidade: TLabel
    Left = 72
    Top = 214
    Width = 63
    Height = 18
    Caption = 'Cidade:'
  end
  object lblUf: TLabel
    Left = 72
    Top = 254
    Width = 28
    Height = 18
    Caption = 'UF:'
  end
  object lblTelefone: TLabel
    Left = 72
    Top = 294
    Width = 76
    Height = 18
    Caption = 'Telefone:'
  end
  object lblID: TLabel
    Left = 72
    Top = 15
    Width = 26
    Height = 18
    Caption = 'ID:'
  end
  object edtNome: TEdit
    Left = 176
    Top = 51
    Width = 281
    Height = 26
    TabOrder = 0
  end
  object edtEndereco: TEdit
    Left = 176
    Top = 91
    Width = 281
    Height = 26
    TabOrder = 1
  end
  object edtBairro: TEdit
    Left = 176
    Top = 123
    Width = 281
    Height = 26
    TabOrder = 2
  end
  object edtCep: TEdit
    Left = 176
    Top = 171
    Width = 281
    Height = 26
    TabOrder = 3
  end
  object edtCidade: TEdit
    Left = 176
    Top = 211
    Width = 281
    Height = 26
    TabOrder = 4
  end
  object edtUf: TEdit
    Left = 416
    Top = 251
    Width = 41
    Height = 26
    TabOrder = 5
  end
  object edtTelefone: TEdit
    Left = 296
    Top = 283
    Width = 161
    Height = 26
    TabOrder = 6
  end
  object btnCadastrar: TButton
    Left = 72
    Top = 344
    Width = 107
    Height = 33
    Caption = 'Cadastrar'
    TabOrder = 7
    OnClick = btnCadastrarClick
  end
  object btnLimpar: TButton
    Left = 200
    Top = 344
    Width = 107
    Height = 33
    Caption = 'limpar'
    TabOrder = 8
    OnClick = btnLimparClick
  end
  object btnFechar: TButton
    Left = 328
    Top = 344
    Width = 107
    Height = 33
    Caption = 'Fechar'
    TabOrder = 9
    OnClick = btnFecharClick
  end
  object edtId: TEdit
    Left = 176
    Top = 12
    Width = 281
    Height = 26
    TabOrder = 10
  end
end
