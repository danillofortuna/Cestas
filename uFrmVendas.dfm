object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 470
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
    Height = 276
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -56
    ExplicitTop = 186
    object lblCodigo: TLabel
      Left = 18
      Top = 6
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object lblData_Venda: TLabel
      Left = 180
      Top = 6
      Width = 60
      Height = 13
      Caption = 'Data Venda:'
    end
    object edtCodigo: TDBEdit
      Left = 75
      Top = 3
      Width = 58
      Height = 21
      DataField = 'id'
      ReadOnly = True
      TabOrder = 0
    end
    object edtDataVenda: TDBEdit
      Left = 246
      Top = 3
      Width = 99
      Height = 21
      TabOrder = 1
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
    ExplicitLeft = -28
    ExplicitWidth = 767
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
      ExplicitLeft = 696
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
    Caption = 'T'#237'tulo'
    Color = 13750737
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = 8
    ExplicitTop = -10
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
    ExplicitLeft = -8
    ExplicitTop = 176
    object btnAlterar: TSpeedButton
      Left = 90
      Top = 0
      Width = 90
      Height = 41
      Align = alLeft
      Caption = 'Alterar [F5]'
      Flat = True
    end
    object btnCancelar: TSpeedButton
      Left = 180
      Top = 0
      Width = 93
      Height = 41
      Align = alLeft
      Caption = 'Cancelar [Esc]'
      Flat = True
    end
    object btnGravar: TSpeedButton
      Left = 273
      Top = 0
      Width = 90
      Height = 41
      Align = alLeft
      Caption = 'Gravar [F6]'
      Flat = True
      ExplicitLeft = 270
    end
    object btnExcluir: TSpeedButton
      Left = 363
      Top = 0
      Width = 90
      Height = 41
      Align = alLeft
      Caption = 'Excluir [F7]'
      Flat = True
      ExplicitLeft = 360
    end
    object btnNovo: TSpeedButton
      Left = 0
      Top = 0
      Width = 90
      Height = 41
      Align = alLeft
      Caption = 'Novo [F4]'
      Flat = True
      ExplicitLeft = -6
      ExplicitTop = -16
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
