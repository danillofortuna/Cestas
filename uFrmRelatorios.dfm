object frmRelatorios: TfrmRelatorios
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Relatorios'
  ClientHeight = 371
  ClientWidth = 690
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
  PixelsPerInch = 96
  TextHeight = 13
  object lblRelatorio: TLabel
    Left = 8
    Top = 39
    Width = 47
    Height = 13
    Caption = 'Relat'#243'rio:'
  end
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 690
    Height = 25
    Align = alTop
    Caption = 'Relat'#243'rios'
    Color = 13750737
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = -126
    ExplicitWidth = 767
    object btnFechar: TSpeedButton
      Left = 643
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
  object grpClientes: TGroupBox
    Left = 8
    Top = 64
    Width = 209
    Height = 122
    Hint = '1'
    Caption = 'Clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object btnClientesNome: TSpeedButton
      Left = 2
      Top = 37
      Width = 205
      Height = 22
      Hint = '2'
      Align = alTop
      Caption = '[2] -            Por Nome'
      ExplicitLeft = 1
      ExplicitTop = 55
    end
    object btnClientesCodigo: TSpeedButton
      Left = 2
      Top = 15
      Width = 205
      Height = 22
      Hint = '1'
      Align = alTop
      Caption = '[1] -          Por C'#243'digo'
      OnClick = btnClientesCodigoClick
      ExplicitLeft = 185
      ExplicitWidth = 105
    end
    object btnClientesTodos: TSpeedButton
      Left = 2
      Top = 59
      Width = 205
      Height = 22
      Hint = '3'
      Align = alTop
      Caption = '[3] -                  Todos'
      ExplicitLeft = 1
      ExplicitTop = 77
    end
  end
  object grpMercadorias: TGroupBox
    Left = 336
    Top = 71
    Width = 209
    Height = 115
    Caption = 'Mercadorias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object btnMercadoriaCodigo: TSpeedButton
      Left = 2
      Top = 15
      Width = 205
      Height = 22
      Hint = '1'
      Align = alTop
      Caption = '[4] -          Por C'#243'digo'
      OnClick = btnClientesCodigoClick
      ExplicitTop = 8
    end
    object btnMercadoriaNome: TSpeedButton
      Left = 2
      Top = 37
      Width = 205
      Height = 22
      Hint = '2'
      Align = alTop
      Caption = '[5] -            Por Nome'
      ExplicitTop = 30
    end
    object btnMercadoriaTodos: TSpeedButton
      Left = 2
      Top = 59
      Width = 205
      Height = 22
      Hint = '3'
      Align = alTop
      Caption = '[6] -                  Todos'
      ExplicitTop = 52
    end
  end
  object edtCodigo: TEdit
    Left = 58
    Top = 36
    Width = 55
    Height = 21
    NumbersOnly = True
    TabOrder = 0
  end
  object btnOk: TButton
    Left = 119
    Top = 36
    Width = 42
    Height = 21
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnOkClick
  end
end
