inherited frmCidades: TfrmCidades
  Caption = 'frmCidades'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Caption = 'Cidades'
  end
  inherited pnlPesquisa: TPanel
    object lblPesNome: TLabel [2]
      Left = 211
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    inherited pnlBtnPesquisar: TPanel
      ExplicitHeight = 32
      inherited btnPesquisar: TButton
        ExplicitLeft = 0
        ExplicitTop = 7
        ExplicitWidth = 71
      end
    end
    object edtPesNome: TEdit
      Left = 254
      Top = 6
      Width = 163
      Height = 21
      MaxLength = 50
      TabOrder = 2
    end
  end
  inherited grdPesquisa: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end>
  end
  inherited pnlBotoes: TPanel
    ExplicitTop = 153
  end
  inherited pnlDados: TPanel
    ExplicitLeft = 0
    ExplicitTop = 194
    ExplicitWidth = 767
    ExplicitHeight = 279
    object lblCodigo: TLabel
      Left = 18
      Top = 6
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object lblNome: TLabel
      Left = 18
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object edtCodigo: TDBEdit
      Left = 75
      Top = 3
      Width = 58
      Height = 21
      DataField = 'id'
      DataSource = dsMaster
      ReadOnly = True
      TabOrder = 0
    end
    object edtNome: TDBEdit
      Left = 75
      Top = 29
      Width = 322
      Height = 21
      DataField = 'nome'
      DataSource = dsMaster
      TabOrder = 1
    end
  end
  inherited qryMaster: TFDQuery
    SQL.Strings = (
      'select id,'
      '       nome'
      'from   cidades'
      'where  1=1')
    object fdtncfldMasterid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object strngfldMasternome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
  end
end
