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
    btnRelatórios: TSpeedButton;
    btnCidade: TSpeedButton;
    btnRecebimentos: TSpeedButton;
    procedure btnClientesClick(Sender: TObject);
    procedure btnMercadoriasClick(Sender: TObject);
    procedure btnCidadeClick(Sender: TObject);
    procedure btnRelatóriosClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
    procedure btnRecebimentosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uFrmClientes, uFrmMercadorias, uFrmCidades, uFrmRelatorios,
  uFrmVendas, uFrmRecebimentos;

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

procedure TfrmPrincipal.btnRecebimentosClick(Sender: TObject);
begin
  if frmRecebimentos = nil then
  begin
    frmRecebimentos := TfrmRecebimentos.Create(Self);
  end;
  frmRecebimentos.BringToFront;
end;

procedure TfrmPrincipal.btnRelatóriosClick(Sender: TObject);
begin
  if frmRelatorios = nil then
  begin
    frmRelatorios := TfrmRelatorios.Create(Self);
  end;
  frmRelatorios.BringToFront;

end;

procedure TfrmPrincipal.btnVendasClick(Sender: TObject);
begin
  if frmVendas = nil then
  begin
    frmVendas := TfrmVendas.create(Self);
  end;
  frmVendas.BringToFront;
end;

end.
