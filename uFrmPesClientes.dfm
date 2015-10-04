inherited frmPesClientes: TfrmPesClientes
  Caption = ''
  ClientHeight = 260
  ClientWidth = 485
  ExplicitWidth = 485
  ExplicitHeight = 260
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 485
  end
  inherited grdPesquisa: TDBGrid
    Width = 485
    Height = 203
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 274
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Visible = False
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
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Width = 100
        Visible = True
      end>
  end
  inherited pnlPesquisa: TPanel
    Width = 485
    OnExit = pnlPesquisaExit
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
      DisplayWidth = 6
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldMasternome: TStringField
      DisplayWidth = 120
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object strngfldMastertelefone: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 18
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object strngfldMastertelefone2: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 18
      FieldName = 'telefone2'
      Origin = 'telefone2'
      Size = 15
    end
    object strngfldMasterendereco: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 600
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 500
    end
    object intgrfldMasterid_cidade: TIntegerField
      DisplayWidth = 12
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      Required = True
    end
    object strngfldMastercidade: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 60
      FieldName = 'cidade'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  inherited actlstPesquisa: TActionList
    inherited actCancelar: TAction
      ShortCut = 27
    end
  end
end
