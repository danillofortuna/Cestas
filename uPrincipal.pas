unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    pnlMenu: TPanel;
    btnClientes: TSpeedButton;
    btnMercadorias: TSpeedButton;
    btnVendas: TSpeedButton;
    btnRelat�rios: TSpeedButton;
    btnCidade: TSpeedButton;
    procedure btnClientesClick(Sender: TObject);
    procedure btnMercadoriasClick(Sender: TObject);
    procedure btnCidadeClick(Sender: TObject);
    procedure btnRelat�riosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uFrmClientes, uFrmMercadorias, uFrmCidades, uFrmRelatorios;

{$R *.dfm}

procedure TfrmPrincipal.btnCidadeClick(Sender: TObject);
begin
  if frmCidades = nil then
  begin
    frmCidades := TfrmCidades.create(Self);
  end;
  frmCidades.BringToFront;
end;

procedure TfrmPrincipal.btnClientesClick(Sender: TObject);
begin
  if FrmClientes = nil then
  begin
    FrmClientes := TFrmClientes.create(Self);
  end;
  FrmClientes.BringToFront;
end;

procedure TfrmPrincipal.btnMercadoriasClick(Sender: TObject);
begin
  if frmMercadorias = nil then
  begin
    frmMercadorias := TfrmMercadorias.create(Self);
  end;
  frmMercadorias.BringToFront;
end;

procedure TfrmPrincipal.btnRelat�riosClick(Sender: TObject);
begin
  if frmRelatorios = nil then
  begin
    frmRelatorios := TfrmRelatorios.Create(Self);
  end;
  frmRelatorios.BringToFront;

end;

end.