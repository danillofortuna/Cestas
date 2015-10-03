inherited frmClientes: TfrmClientes
  Caption = 'frmClientes'
  ClientHeight = 458
  ClientWidth = 748
  ExplicitWidth = 764
  ExplicitHeight = 496
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 748
    Caption = 'Clientes'
    ExplicitWidth = 748
    inherited btnFechar: TSpeedButton
      Left = 701
      ExplicitLeft = 701
    end
  end
  inherited pnlPesquisa: TPanel
    Width = 748
    ExplicitWidth = 748
    object lblPesNome: TLabel [2]
      Left = 211
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    inherited pnlBtnPesquisar: TPanel
      Left = 677
      TabOrder = 2
      ExplicitLeft = 677
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
  inherited grdPesquisa: TDBGrid
    Width = 748
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 285
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone2'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'id_cidade'
        Visible = False
      end>
  end
  inherited pnlBotoes: TPanel
    Width = 748
    ExplicitWidth = 748
  end
  inherited pnlDados: TPanel
    Width = 748
    Height = 264
    ExplicitWidth = 748
    ExplicitHeight = 264
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
    object lblTelefone: TLabel
      Left = 18
      Top = 58
      Width = 45
      Height = 13
      Caption = 'Tel. Fixo:'
    end
    object lblFone2: TLabel
      Left = 222
      Top = 58
      Width = 37
      Height = 13
      Caption = 'Celular:'
    end
    object lblCidade: TLabel
      Left = 18
      Top = 84
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object lblEndereco: TLabel
      Left = 18
      Top = 111
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
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
    object edtFone1: TDBEdit
      Left = 75
      Top = 55
      Width = 130
      Height = 21
      DataField = 'telefone'
      DataSource = dsMaster
      TabOrder = 2
    end
    object edtFone2: TDBEdit
      Left = 267
      Top = 55
      Width = 130
      Height = 21
      DataField = 'telefone2'
      DataSource = dsMaster
      TabOrder = 3
    end
    object lcbCidade: TDBLookupComboBox
      Left = 75
      Top = 81
      Width = 130
      Height = 21
      DataField = 'id_cidade'
      DataSource = dsMaster
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dsCidades
      TabOrder = 4
    end
    object memoEndereco: TDBMemo
      Left = 75
      Top = 108
      Width = 322
      Height = 69
      DataField = 'endereco'
      DataSource = dsMaster
      TabOrder = 5
    end
  end
  inherited qryMaster: TFDQuery
    SQL.Strings = (
      'SELECT C.id,'
      '       C.nome,'
      '       C.telefone,'
      '       C.telefone2,'
      '       C.endereco,'
      '       C.id_cidade,'
      '       CD.nome as cidade'
      'FROM   clientes C,'
      '       cidades CD'
      'WHERE  C.id_cidade = CD.id')
    object fdtncfldMasterid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldMasternome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object strngfldMastertelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object strngfldMastertelefone2: TStringField
      FieldName = 'telefone2'
      Origin = 'telefone2'
      Size = 15
    end
    object intgrfldMasterid_cidade: TIntegerField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      Required = True
    end
    object strngfldMastercidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object strngfldMasterendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 200
    end
  end
  object qryCidades: TFDQuery
    Connection = DM.conMysql
    SQL.Strings = (
      'select id,'
      '       nome'
      'from cidades')
    Left = 368
    Top = 96
  end
  object dsCidades: TDataSource
    AutoEdit = False
    DataSet = qryCidades
    Left = 440
    Top = 96
  end
end
