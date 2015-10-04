inherited frmPesMercadorias: TfrmPesMercadorias
  Caption = ''
  ExplicitWidth = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    ExplicitLeft = -304
    ExplicitWidth = 767
  end
  inherited pnlPesquisa: TPanel
    OnExit = pnlPesquisaExit
    ExplicitLeft = -304
    ExplicitWidth = 767
    object lblPesNome: TLabel [2]
      Left = 211
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object edtPesNome: TEdit
      Left = 254
      Top = 6
      Width = 163
      Height = 21
      MaxLength = 100
      TabOrder = 1
    end
  end
  inherited qryMaster: TFDQuery
    SQL.Strings = (
      'select id, nome, preco from mercadorias')
  end
end
