object menuForm: TmenuForm
  Left = 0
  Top = 0
  Caption = 'menuForm'
  ClientHeight = 356
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mnuPrincipal
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mnuPrincipal: TMainMenu
    Left = 384
    Top = 40
    object Clientes1: TMenuItem
      Caption = 'Clientes'
      object Cadastro1: TMenuItem
        Caption = 'Cadastro'
        OnClick = Cadastro1Click
      end
      object Cadastro2: TMenuItem
        Caption = 'Altera'#231#227'o'
        OnClick = Cadastro2Click
      end
      object Excluso1: TMenuItem
        Caption = 'Exclus'#227'o'
        OnClick = Excluso1Click
      end
      object Excluso2: TMenuItem
        Caption = 'Pesquisa'
        OnClick = Excluso2Click
      end
    end
  end
end
