inherited frmMercadorias: TfrmMercadorias
  ClientHeight = 494
  ClientWidth = 788
  ExplicitWidth = 804
  ExplicitHeight = 532
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 788
    Caption = 'Mercadorias'
    ExplicitWidth = 116
    inherited btnFechar: TSpeedButton
      Left = 741
      ExplicitLeft = 721
      ExplicitTop = 3
    end
  end
  inherited pnlPesquisa: TPanel
    Width = 788
    ExplicitWidth = 116
    object lblPesNome: TLabel [2]
      Left = 211
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    inherited pnlBtnPesquisar: TPanel
      Left = 717
      TabOrder = 2
      ExplicitLeft = 45
    end
    object edtPesNome: TEdit
      Left = 254
      Top = 5
      Width = 163
      Height = 21
      MaxLength = 100
      TabOrder = 1
    end
  end
  inherited grdPesquisa: TDBGrid
    Width = 788
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
      end
      item
        Expanded = False
        FieldName = 'preco'
        Title.Caption = 'pre'#231'o'
        Visible = True
      end>
  end
  inherited pnlBotoes: TPanel
    Width = 788
    ExplicitWidth = 116
    inherited btnNovo: TSpeedButton
      ExplicitTop = 0
    end
  end
  inherited pnlDados: TPanel
    Width = 788
    Height = 300
    ExplicitWidth = 116
    object lblCodigo: TLabel
      Left = 18
      Top = 6
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object lblNome: TLabel
      Left = 18
      Top = 33
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object lblPreco: TLabel
      Left = 18
      Top = 60
      Width = 53
      Height = 13
      Caption = 'Pre'#231'o:   R$'
    end
    object edtCodigo: TDBEdit
      Left = 71
      Top = 3
      Width = 52
      Height = 21
      DataField = 'id'
      DataSource = dsMaster
      TabOrder = 0
    end
    object edtNome: TDBEdit
      Left = 71
      Top = 30
      Width = 322
      Height = 21
      DataField = 'nome'
      DataSource = dsMaster
      TabOrder = 1
    end
    object edtPreco: TDBEdit
      Left = 71
      Top = 57
      Width = 76
      Height = 21
      DataField = 'preco'
      DataSource = dsMaster
      TabOrder = 2
      OnKeyPress = edtPrecoKeyPress
    end
  end
  inherited qryMaster: TFDQuery
    SQL.Strings = (
      'select id,'
      '       nome,'
      '       preco'
      'from   mercadorias'
      'where 1=1')
    object fdtncfldMasterid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldMasternome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object snglfldMasterpreco: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'preco'
      Origin = 'preco'
    end
  end
end
