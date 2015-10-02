object frmMasterCad: TfrmMasterCad
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 473
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 25
    Align = alTop
    Caption = 'T'#237'tulo'
    Color = 13750737
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object btnFechar: TSpeedButton
      Left = 720
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
    end
  end
  object pnlPesquisa: TPanel
    Left = 0
    Top = 25
    Width = 767
    Height = 32
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    TabOrder = 1
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
      Left = 696
      Top = 0
      Width = 71
      Height = 32
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitHeight = 48
      object btnPesquisar: TButton
        Left = 0
        Top = 7
        Width = 71
        Height = 25
        Align = alBottom
        Caption = 'Pesquisar'
        TabOrder = 0
        OnClick = btnPesquisarClick
        ExplicitLeft = 16
        ExplicitTop = 24
        ExplicitWidth = 75
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
  object grdPesquisa: TDBGrid
    Left = 0
    Top = 57
    Width = 767
    Height = 96
    Align = alTop
    DataSource = dsMaster
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = grdPesquisaDblClick
    OnKeyPress = grdPesquisaKeyPress
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 153
    Width = 767
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = 175
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
    object btnNovo: TSpeedButton
      Left = 0
      Top = 0
      Width = 90
      Height = 41
      Action = actNovo
      Align = alLeft
      Caption = 'Novo [F4]'
      Flat = True
      ExplicitLeft = -6
      ExplicitTop = -16
    end
  end
  object pnlDados: TPanel
    Left = 0
    Top = 194
    Width = 767
    Height = 279
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitLeft = 408
    ExplicitTop = 328
    ExplicitWidth = 185
    ExplicitHeight = 41
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
  end
  object qryMaster: TFDQuery
    Connection = DM.conMysql
    Left = 176
    Top = 81
  end
  object dsMaster: TDataSource
    AutoEdit = False
    DataSet = qryMaster
    Left = 264
    Top = 96
  end
end
