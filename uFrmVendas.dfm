object frmVendas: TfrmVendas
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 562
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdPesquisa: TDBGrid
    Left = 0
    Top = 57
    Width = 739
    Height = 96
    Align = alTop
    DataSource = dsMaster
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnlDados: TPanel
    Left = 0
    Top = 194
    Width = 739
    Height = 368
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object lblCodigo: TLabel
      Left = 18
      Top = 6
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object lblData_Venda: TLabel
      Left = 198
      Top = 6
      Width = 60
      Height = 13
      Caption = 'Data Venda:'
    end
    object lblCliente: TLabel
      Left = 18
      Top = 33
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object btnPesCliente: TSpeedButton
      Left = 264
      Top = 30
      Width = 82
      Height = 21
      Caption = '[F3]- Pesquisar'
      Enabled = False
      Flat = True
      OnClick = btnPesClienteClick
    end
    object lblMercadorias: TLabel
      Left = 18
      Top = 60
      Width = 62
      Height = 13
      Caption = 'Mercadorias:'
    end
    object btnPesMercadorias: TSpeedButton
      Left = 264
      Top = 57
      Width = 82
      Height = 21
      Caption = '[F3]- Pesquisar'
      Enabled = False
      Flat = True
      OnClick = btnPesMercadoriasClick
    end
    object lblDel: TLabel
      Left = 306
      Top = 185
      Width = 107
      Height = 13
      Caption = '[Delete] para remover'
    end
    object lblParcelas: TLabel
      Left = 18
      Top = 204
      Width = 44
      Height = 13
      Caption = 'Parcelas:'
    end
    object edtCodigo: TDBEdit
      Left = 93
      Top = 3
      Width = 58
      Height = 21
      DataField = 'id'
      ReadOnly = True
      TabOrder = 0
    end
    object edtDataVenda: TDBEdit
      Left = 264
      Top = 3
      Width = 99
      Height = 21
      TabOrder = 1
    end
    object edtMercadorias: TEdit
      Left = 93
      Top = 57
      Width = 165
      Height = 21
      TabOrder = 2
      OnExit = edtMercadoriasExit
    end
    object grdMercadorias: TDBGrid
      Left = 93
      Top = 84
      Width = 420
      Height = 105
      DataSource = dsMercadorias
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = grdMercadoriasKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'id_venda'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'id_mercadoria'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'nome'
          ReadOnly = True
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'preco'
          ReadOnly = True
          Title.Caption = 'pre'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ajuste'
          Visible = True
        end>
    end
    object edtParcelas: TEdit
      Left = 93
      Top = 200
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object grdParcelas: TDBGrid
      Left = 93
      Top = 223
      Width = 420
      Height = 102
      DataSource = dsParcelas
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object lcbClientes: TDBLookupComboBox
      Left = 93
      Top = 30
      Width = 145
      Height = 21
      DataField = 'id_cliente'
      DataSource = dsMaster
      KeyField = 'id'
      ListField = 'nome'
      ListSource = dsClientes
      TabOrder = 6
    end
  end
  object pnlPesquisa: TPanel
    Left = 0
    Top = 25
    Width = 739
    Height = 32
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    TabOrder = 2
    object lblPesquisar: TLabel
      Left = 5
      Top = 0
      Width = 56
      Height = 26
      Caption = 'Pesquisar:  '#13#10'[F2]'
    end
    object lblPesCodigo: TLabel
      Left = 67
      Top = 9
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object pnlBtnPesquisar: TPanel
      Left = 668
      Top = 0
      Width = 71
      Height = 32
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnPesquisar: TButton
        Left = 0
        Top = 7
        Width = 71
        Height = 25
        Align = alBottom
        Caption = 'Pesquisar'
        TabOrder = 0
      end
    end
    object edtPesCodigo: TEdit
      Left = 110
      Top = 6
      Width = 52
      Height = 21
      MaxLength = 6
      NumbersOnly = True
      TabOrder = 0
    end
  end
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 739
    Height = 25
    Align = alTop
    Caption = 'Vendas'
    Color = 13750737
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    object btnFechar: TSpeedButton
      Left = 692
      Top = 1
      Width = 46
      Height = 23
      Align = alRight
      Caption = '[Fechar]'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnFecharClick
      ExplicitLeft = 720
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 153
    Width = 739
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object btnNovo: TSpeedButton
      Left = 0
      Top = 0
      Width = 90
      Height = 41
      Action = actNovo
      Align = alLeft
      Caption = 'Novo [F4]'
      Flat = True
      ExplicitLeft = 8
    end
    object btnAlterar: TSpeedButton
      Left = 90
      Top = 0
      Width = 90
      Height = 41
      Action = actAlterar
      Align = alLeft
      Caption = 'Alterar [F5]'
      Flat = True
    end
    object btnGravar: TSpeedButton
      Left = 270
      Top = 0
      Width = 90
      Height = 41
      Action = actGravar
      Align = alLeft
      Caption = 'Gravar [F6]'
      Flat = True
    end
    object btnCancelar: TSpeedButton
      Left = 180
      Top = 0
      Width = 90
      Height = 41
      Action = actCancelar
      Align = alLeft
      Caption = 'Cancelar [Esc]'
      Flat = True
      ExplicitLeft = 174
    end
    object btnExcluir: TSpeedButton
      Left = 360
      Top = 0
      Width = 90
      Height = 41
      Action = actExcluir
      Align = alLeft
      Caption = 'Excluir [F7]'
      Flat = True
    end
  end
  object qryMaster: TFDQuery
    AfterOpen = qryMasterAfterOpen
    BeforeClose = qryMasterBeforeClose
    AfterPost = qryMasterAfterPost
    BeforeCancel = qryMasterBeforeCancel
    Connection = DM.conMysql
    SQL.Strings = (
      'SELECT V.id,'
      '       V.id_cliente,'
      '       C.nome,'
      '       V.data_venda,'
      '       V.parcelado,'
      '       V.data_recebimento,'
      '       V.valor_recebido,'
      '       V.cancelada,'
      '       V.motivo_cancelamento,'
      '       V.valor_total'
      'FROM   vendas V,'
      '       clientes C'
      'WHERE  V.id_cliente = C.id '
      '       and V.cancelada = '#39'N'#39)
    Left = 136
    Top = 73
    object fdtncfldMasterid1: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldMasterid_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      Visible = False
    end
    object strngfldMasternome1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object dtfldMasterdata_venda: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_venda'
      Origin = 'data_venda'
    end
    object strngfldMasterparcelado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'parcelado'
      Origin = 'parcelado'
      Size = 1
    end
    object dtfldMasterdata_recebimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_recebimento'
      Origin = 'data_recebimento'
    end
    object snglfldMastervalor_recebido: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valor_recebido'
      Origin = 'valor_recebido'
    end
    object strngfldMastercancelada: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cancelada'
      Origin = 'cancelada'
      Size = 1
    end
    object strngfldMastermotivo_cancelamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'motivo_cancelamento'
      Origin = 'motivo_cancelamento'
      Size = 500
    end
    object snglfldMastervalor_total: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valor_total'
      Origin = 'valor_total'
    end
  end
  object dsMaster: TDataSource
    AutoEdit = False
    DataSet = qryMaster
    Left = 208
    Top = 80
  end
  object qryClientes: TFDQuery
    Connection = DM.conMysql
    SQL.Strings = (
      'SELECT id,'
      '       nome'
      'FROM   clientes ')
    Left = 400
    Top = 217
    object fdtncfldClientesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldClientesnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = qryClientes
    Left = 472
    Top = 216
  end
  object qryMercadorias: TFDQuery
    BeforeInsert = qryMercadoriasBeforeInsert
    CachedUpdates = True
    IndexFieldNames = 'id_venda'
    MasterSource = dsMaster
    MasterFields = 'id'
    DetailFields = 'id_venda'
    Connection = DM.conMysql
    SQL.Strings = (
      'select I.id,'
      '       I.id_venda,'
      '       I.id_mercadoria,'
      '       M.nome,'
      '       M.preco,'
      '       I.ajuste,'
      '       I.quantidade'
      'from   itens_venda I,'
      '       mercadorias M'
      'where  I.id_mercadoria = M.id')
    Left = 232
    Top = 320
    object fdtncfldMercadoriasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object intgrfldMercadoriasid_venda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_venda'
      Origin = 'id_venda'
      Visible = False
    end
    object intgrfldMercadoriasid_mercadoria: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_mercadoria'
      Origin = 'id_mercadoria'
      Visible = False
    end
    object strngfldMercadoriasnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      Size = 50
    end
    object snglfldMercadoriaspreco: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'preco'
      Origin = 'preco'
      ProviderFlags = []
    end
    object intgrfldMercadoriasquantidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object snglfldMercadoriasajuste: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'ajuste'
      Origin = 'ajuste'
    end
  end
  object dsMercadorias: TDataSource
    DataSet = qryMercadorias
    Left = 320
    Top = 320
  end
  object qryParcelas: TFDQuery
    BeforeInsert = qryParcelasBeforeInsert
    IndexFieldNames = 'id_venda'
    MasterSource = dsMaster
    MasterFields = 'id'
    DetailFields = 'id_venda'
    Connection = DM.conMysql
    SQL.Strings = (
      'select P.id,'
      '       P.id_venda,'
      '       P.valor,'
      '       P.data_vencimento,'
      '       P.data_recebimento,'
      '       P.id_parcela,'
      '       P.valor_recebido,'
      '       P.cancelado,'
      '       P.motivo_cancelamento'
      'from   parcelas_venda P'
      'where  P.cancelado = '#39'N'#39)
    Left = 240
    Top = 432
    object fdtncfldParcelasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldParcelasid_venda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_venda'
      Origin = 'id_venda'
      Visible = False
    end
    object snglfldParcelasvalor: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valor'
      Origin = 'valor'
    end
    object dtfldParcelasdata_vencimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_vencimento'
      Origin = 'data_vencimento'
    end
    object dtfldParcelasdata_recebimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_recebimento'
      Origin = 'data_recebimento'
    end
    object intgrfldParcelasid_parcela: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_parcela'
      Origin = 'id_parcela'
      Visible = False
    end
    object snglfldParcelasvalor_recebido: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valor_recebido'
      Origin = 'valor_recebido'
      Visible = False
    end
    object strngfldParcelascancelado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cancelado'
      Origin = 'cancelado'
      Size = 1
    end
    object strngfldParcelasmotivo_cancelamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'motivo_cancelamento'
      Origin = 'motivo_cancelamento'
      Size = 500
    end
  end
  object dsParcelas: TDataSource
    DataSet = qryParcelas
    Left = 328
    Top = 432
  end
  object actlstBotoes: TActionList
    Left = 512
    Top = 168
    object actNovo: TAction
      Caption = 'actNovo'
      ShortCut = 115
      OnExecute = actNovoExecute
    end
    object actAlterar: TAction
      Caption = 'actAlterar'
      ShortCut = 116
      OnExecute = actAlterarExecute
    end
    object actCancelar: TAction
      Caption = 'actCancelar'
      Enabled = False
      ShortCut = 27
      OnExecute = actCancelarExecute
    end
    object actGravar: TAction
      Caption = 'actGravar'
      Enabled = False
      ShortCut = 117
      OnExecute = actGravarExecute
    end
    object actExcluir: TAction
      Caption = 'actExcluir'
      ShortCut = 118
      OnExecute = actExcluirExecute
    end
    object actPesquisar: TAction
      Caption = 'actPesquisar'
      ShortCut = 113
      OnExecute = actPesquisarExecute
    end
    object actPesquisas: TAction
      Caption = 'actPesquisas'
      ShortCut = 114
      OnExecute = actPesquisasExecute
    end
  end
end
