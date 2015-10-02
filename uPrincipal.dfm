object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cestas'
  ClientHeight = 525
  ClientWidth = 752
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 752
    Height = 49
    Align = alTop
    Caption = 'IRAMAR && DAMI'#195'O - Controle de Vendas'
    Color = 13750737
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 506
    Width = 752
    Height = 19
    Color = 13750737
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Panels = <
      item
        Alignment = taRightJustify
        Bevel = pbNone
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Text = 'DAFLi Softwares - danillofortuna@gmail.com      '
        Width = 50
      end>
    SizeGrip = False
    UseSystemFont = False
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 49
    Width = 752
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object btnClientes: TSpeedButton
      Left = 0
      Top = 0
      Width = 75
      Height = 32
      Align = alLeft
      Caption = '&Clientes'
      Flat = True
      OnClick = btnClientesClick
      ExplicitLeft = 336
      ExplicitTop = 16
      ExplicitHeight = 25
    end
    object btnMercadorias: TSpeedButton
      Left = 75
      Top = 0
      Width = 75
      Height = 32
      Align = alLeft
      Caption = '&Mercadorias'
      Flat = True
      OnClick = btnMercadoriasClick
      ExplicitLeft = 81
      ExplicitTop = 6
    end
    object btnVendas: TSpeedButton
      Left = 225
      Top = 0
      Width = 75
      Height = 32
      Align = alLeft
      Caption = '&Vendas'
      Flat = True
      ExplicitLeft = 211
      ExplicitTop = 6
    end
    object btnRelatórios: TSpeedButton
      Left = 300
      Top = 0
      Width = 75
      Height = 32
      Align = alLeft
      Caption = '&Relat'#243'rios'
      Flat = True
      Visible = False
      OnClick = btnRelatóriosClick
      ExplicitLeft = 336
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object btnCidade: TSpeedButton
      Left = 150
      Top = 0
      Width = 75
      Height = 32
      Align = alLeft
      Caption = 'Ci&dades'
      Flat = True
      OnClick = btnCidadeClick
      ExplicitLeft = 163
    end
  end
end
