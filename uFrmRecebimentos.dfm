inherited frmRecebimentos: TfrmRecebimentos
  Caption = 'frmRecebimentos'
  ClientHeight = 437
  ClientWidth = 788
  ExplicitWidth = 804
  ExplicitHeight = 475
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 788
    Caption = 'Recebimentos'
    ExplicitWidth = 655
    inherited btnFechar: TSpeedButton
      Left = 741
      ExplicitLeft = 608
    end
  end
  inherited pnlPesquisa: TPanel
    Width = 788
    ExplicitWidth = 655
    object lblCodVenda: TLabel [2]
      Left = 175
      Top = 9
      Width = 60
      Height = 13
      Caption = 'C'#243'd. Venda:'
    end
    object lblVencimento: TLabel [3]
      Left = 299
      Top = 9
      Width = 59
      Height = 13
      Caption = 'Vencimento:'
    end
    object lblCliente: TLabel [4]
      Left = 476
      Top = 9
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    inherited pnlBtnPesquisar: TPanel
      Left = 717
      TabOrder = 5
      ExplicitLeft = 584
    end
    object edtCodVenda: TEdit
      Left = 236
      Top = 6
      Width = 52
      Height = 21
      MaxLength = 6
      NumbersOnly = True
      TabOrder = 1
    end
    object edtCliente: TEdit
      Left = 512
      Top = 6
      Width = 105
      Height = 21
      MaxLength = 6
      TabOrder = 3
    end
    object edtVencimento: TMaskEdit
      Left = 364
      Top = 6
      Width = 86
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object chkRecebidos: TCheckBox
      Left = 623
      Top = 9
      Width = 66
      Height = 17
      Caption = 'Pagos'
      TabOrder = 4
    end
  end
  inherited grdPesquisa: TDBGrid
    Width = 788
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_venda'
        Title.Caption = 'ID Venda'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor'
        Title.Caption = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_vencimento'
        Title.Caption = 'Dt. Vencimento'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_recebimento'
        Title.Caption = 'Dt. Recebimento'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 102
        Visible = True
      end>
  end
  inherited pnlBotoes: TPanel
    Width = 788
    Visible = False
    ExplicitWidth = 655
    inherited btnExcluir: TSpeedButton
      ExplicitLeft = 366
      ExplicitTop = -3
    end
  end
  inherited pnlDados: TPanel
    Top = 235
    Width = 788
    Height = 202
    ExplicitTop = 235
    ExplicitWidth = 655
    ExplicitHeight = 257
    object Label1: TLabel
      Left = 222
      Top = 6
      Width = 60
      Height = 13
      Caption = 'C'#243'd. Venda:'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 21
      Top = 40
      Width = 28
      Height = 13
      Caption = 'Valor:'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 222
      Top = 40
      Width = 77
      Height = 13
      Caption = 'Dt. Vencimento:'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 222
      Top = 72
      Width = 84
      Height = 13
      Caption = 'Dt. Recebimento:'
      FocusControl = DBEdit4
    end
    object Label7: TLabel
      Left = 21
      Top = 6
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
      FocusControl = DBEdit7
    end
    object Label5: TLabel
      Left = 21
      Top = 72
      Width = 37
      Height = 13
      Caption = 'Cliente:'
      FocusControl = edtnome
    end
    object DBEdit1: TDBEdit
      Left = 310
      Top = 3
      Width = 134
      Height = 21
      DataField = 'id_venda'
      DataSource = dsMaster
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 78
      Top = 37
      Width = 134
      Height = 21
      DataField = 'valor'
      DataSource = dsMaster
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 310
      Top = 37
      Width = 134
      Height = 21
      DataField = 'data_vencimento'
      DataSource = dsMaster
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 312
      Top = 69
      Width = 134
      Height = 21
      DataField = 'data_recebimento'
      DataSource = dsMaster
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 78
      Top = 3
      Width = 134
      Height = 21
      DataField = 'id'
      DataSource = dsMaster
      TabOrder = 0
    end
    object edtnome: TDBEdit
      Left = 78
      Top = 64
      Width = 134
      Height = 21
      DataField = 'nome'
      DataSource = dsMaster
      TabOrder = 4
    end
  end
  object pnl1: TPanel [5]
    Left = 0
    Top = 194
    Width = 788
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    ExplicitWidth = 655
    object btnCancelarRecebimento: TSpeedButton
      Left = 141
      Top = 0
      Width = 158
      Height = 41
      Action = actCancelarParcela
      Align = alLeft
      Caption = 'Cancelar Recebimento [F10]'
      Flat = True
    end
    object btnReceber: TSpeedButton
      Left = 0
      Top = 0
      Width = 141
      Height = 41
      Action = actReceberParcela
      Align = alLeft
      Caption = 'Receber Parcela [F9]'
      Flat = True
    end
  end
  inherited actlstBotoes: TActionList
    object actReceberParcela: TAction
      Caption = 'actReceberParcela'
      ShortCut = 120
      OnExecute = actReceberParcelaExecute
    end
    object actCancelarParcela: TAction
      Caption = 'actCancelarParcela'
      OnExecute = actCancelarParcelaExecute
    end
  end
  inherited qryMaster: TFDQuery
    AfterScroll = qryMasterAfterScroll
    SQL.Strings = (
      'select pv.id,'
      '       pv.id_venda,'
      '       pv.valor,'
      '       pv.data_vencimento,'
      '       pv.data_recebimento,'
      '       pv.valor_recebido,'
      '       c.nome'
      'from parcelas_venda pv,'
      '     vendas v,'
      '     clientes c'
      'where pv.id_venda = v.id and c.id = v.id_cliente'
      'and pv.data_recebimento is null'
      'order by data_vencimento desc')
    object fdtncfldMasterid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldMasterid_venda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_venda'
      Origin = 'id_venda'
    end
    object snglfldMastervalor: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
    end
    object dtfldMasterdata_vencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_vencimento'
      Origin = 'data_vencimento'
    end
    object dtfldMasterdata_recebimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_recebimento'
      Origin = 'data_recebimento'
    end
    object strngfldMasternome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
