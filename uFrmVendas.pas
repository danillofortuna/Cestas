unit uFrmVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDM, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  System.Actions, Vcl.ActnList;

type
  TfrmVendas = class(TForm)
    grdPesquisa: TDBGrid;
    pnlDados: TPanel;
    pnlPesquisa: TPanel;
    lblPesquisar: TLabel;
    lblPesCodigo: TLabel;
    pnlBtnPesquisar: TPanel;
    btnPesquisar: TButton;
    edtPesCodigo: TEdit;
    pnlTitulo: TPanel;
    btnFechar: TSpeedButton;
    pnlBotoes: TPanel;
    edtCodigo: TDBEdit;
    lblCodigo: TLabel;
    qryMaster: TFDQuery;
    dsMaster: TDataSource;
    lblData_Venda: TLabel;
    edtDataVenda: TDBEdit;
    lblCliente: TLabel;
    btnPesCliente: TSpeedButton;
    lblMercadorias: TLabel;
    btnPesMercadorias: TSpeedButton;
    edtMercadorias: TEdit;
    grdMercadorias: TDBGrid;
    lblDel: TLabel;
    lblParcelas: TLabel;
    edtParcelas: TEdit;
    grdParcelas: TDBGrid;
    qryClientes: TFDQuery;
    dsClientes: TDataSource;
    fdtncfldMasterid1: TFDAutoIncField;
    intgrfldMasterid_cliente: TIntegerField;
    strngfldMasternome1: TStringField;
    dtfldMasterdata_venda: TDateField;
    strngfldMasterparcelado: TStringField;
    dtfldMasterdata_recebimento: TDateField;
    snglfldMastervalor_recebido: TSingleField;
    strngfldMastercancelada: TStringField;
    strngfldMastermotivo_cancelamento: TStringField;
    snglfldMastervalor_total: TSingleField;
    fdtncfldClientesid: TFDAutoIncField;
    strngfldClientesnome: TStringField;
    lcbClientes: TDBLookupComboBox;
    qryMercadorias: TFDQuery;
    dsMercadorias: TDataSource;
    fdtncfldMercadoriasid: TFDAutoIncField;
    intgrfldMercadoriasid_venda: TIntegerField;
    intgrfldMercadoriasid_mercadoria: TIntegerField;
    strngfldMercadoriasnome: TStringField;
    snglfldMercadoriaspreco: TSingleField;
    snglfldMercadoriasajuste: TSingleField;
    intgrfldMercadoriasquantidade: TIntegerField;
    qryParcelas: TFDQuery;
    dsParcelas: TDataSource;
    fdtncfldParcelasid: TFDAutoIncField;
    intgrfldParcelasid_venda: TIntegerField;
    snglfldParcelasvalor: TSingleField;
    dtfldParcelasdata_vencimento: TDateField;
    dtfldParcelasdata_recebimento: TDateField;
    intgrfldParcelasid_parcela: TIntegerField;
    snglfldParcelasvalor_recebido: TSingleField;
    strngfldParcelascancelado: TStringField;
    strngfldParcelasmotivo_cancelamento: TStringField;
    actlstBotoes: TActionList;
    actNovo: TAction;
    actAlterar: TAction;
    actCancelar: TAction;
    actGravar: TAction;
    actExcluir: TAction;
    actPesquisar: TAction;
    btnNovo: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnGravar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnExcluir: TSpeedButton;
    actPesquisas: TAction;
    procedure qryMasterAfterOpen(DataSet: TDataSet);
    procedure qryMasterBeforeCancel(DataSet: TDataSet);
    procedure qryMasterBeforeClose(DataSet: TDataSet);
    procedure qryMasterAfterPost(DataSet: TDataSet);
    procedure actNovoExecute(Sender: TObject);
    procedure restauraSQL;
    procedure actAlterarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure btnPesClienteClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPesMercadoriasClick(Sender: TObject);
    procedure actPesquisasExecute(Sender: TObject);
    procedure grdMercadoriasKeyPress(Sender: TObject; var Key: Char);
    procedure edtMercadoriasExit(Sender: TObject);
    procedure qryMercadoriasBeforeInsert(DataSet: TDataSet);
    procedure qryParcelasBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

uses
  uFrmPesClientes, uFrmPesMercadorias;

{$R *.dfm}

procedure TfrmVendas.actAlterarExecute(Sender: TObject);
begin
 if qryMaster.IsEmpty then
  begin
    Application.MessageBox('Selecione um registro para alterar.', '', MB_OK +
      MB_ICONWARNING);
    Exit;
  end;
  actNovo.Enabled     := false;
  actAlterar.Enabled  := false;
  actGravar.Enabled   := True;
  actCancelar.Enabled := true;
  actExcluir.Enabled  := false;
  btnPesCliente.Enabled := true;
  btnPesMercadorias.Enabled := true;
  qryMaster.Edit;
end;

procedure TfrmVendas.actCancelarExecute(Sender: TObject);
begin
  actNovo.Enabled     := True;
  actAlterar.Enabled  := True;
  actGravar.Enabled   := False;
  actCancelar.Enabled := False;
  actExcluir.Enabled  := True;
  btnPesCliente.Enabled := False;
  btnPesMercadorias.Enabled := False;

  qryMaster.Cancel;
end;

procedure TfrmVendas.actExcluirExecute(Sender: TObject);
begin
  if qryMaster.IsEmpty then
  begin
    Application.MessageBox('N�o existe registro para ser excluido!', '', MB_OK
      + MB_ICONINFORMATION);
    exit;
  end
  else
  if Application.MessageBox('Realmente deseja excluir este registro?', '',
    MB_YESNO + MB_ICONQUESTION) = IDNO then
  begin
    Exit;
  end
  else
  begin
    qryMaster.Delete;
    qryMaster.Refresh;
  end;
end;

procedure TfrmVendas.actGravarExecute(Sender: TObject);
begin
  actNovo.Enabled     := True;
  actAlterar.Enabled  := True;
  actGravar.Enabled   := False;
  actCancelar.Enabled := False;
  actExcluir.Enabled  := True;
  btnPesCliente.Enabled := False;
  btnPesMercadorias.Enabled := False;
  qryMaster.Post;
  qryMaster.Refresh;
end;

procedure TfrmVendas.actNovoExecute(Sender: TObject);
begin
  edtPesCodigo.SetFocus;
  actNovo.Enabled     := false;
  actAlterar.Enabled  := false;
  actGravar.Enabled   := True;
  actCancelar.Enabled := true;
  actExcluir.Enabled  := false;
  btnPesCliente.Enabled := true;
  btnPesMercadorias.Enabled := true;
  restauraSQL;
  if not qryMaster.Active then
  begin
    qryMaster.Open();
  end;
  qryMaster.Insert;
  qryMaster.FieldByName('data_venda').AsDateTime := now;
  edtDataVenda.SetFocus;
end;

procedure TfrmVendas.actPesquisarExecute(Sender: TObject);
begin
  edtPesCodigo.SetFocus;
end;

procedure TfrmVendas.actPesquisasExecute(Sender: TObject);
begin
  if ActiveControl = lcbClientes then
  begin
    btnPesCliente.Click;
  end
  else
  if ActiveControl = edtMercadorias then
  begin
    btnPesMercadorias.Click;
  end;

end;

procedure TfrmVendas.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmVendas.btnPesClienteClick(Sender: TObject);
var
  pesquisaClientes : TfrmPesClientes;
begin
  if qryMaster.State in [dsEdit, dsInsert] then
  begin
    pesquisaClientes := TfrmPesClientes.Create(self);
    pesquisaClientes.ShowModal;
    lcbClientes.KeyValue := pesquisaClientes.id;
    FreeAndNil(pesquisaClientes);
  end;

end;

procedure TfrmVendas.btnPesMercadoriasClick(Sender: TObject);
var
  pesquisaMercadorias : TfrmPesMercadorias;
begin
  if qryMaster.State in [dsEdit, dsInsert] then
  begin
    pesquisaMercadorias := TfrmPesMercadorias.Create(self);
    if edtMercadorias.Text <> EmptyStr then
    begin
      pesquisaMercadorias.edtPesCodigo.Text := edtMercadorias.Text;
    end;
    edtMercadorias.Clear;
    pesquisaMercadorias.ShowModal;
    qryMercadorias.Insert;
    qryMercadorias.FieldByName('id_mercadoria').AsInteger := pesquisaMercadorias.id;
    qryMercadorias.FieldByName('nome').AsString := pesquisaMercadorias.texto;
    qryMercadorias.FieldByName('preco').AsFloat := pesquisaMercadorias.preco;
    qryMercadorias.FieldByName('quantidade').AsInteger := 1;
    qryMercadorias.FieldByName('ajuste').AsFloat := 0;
    qryMercadorias.Post;
    FreeAndNil(pesquisaMercadorias);
  end;

end;

procedure TfrmVendas.edtMercadoriasExit(Sender: TObject);
begin
  btnPesMercadorias.Click;
end;

procedure TfrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmVendas := nil;
end;

procedure TfrmVendas.FormShow(Sender: TObject);
begin
  qryMaster.Open();
  qryClientes.Open();
end;

procedure TfrmVendas.grdMercadoriasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #127 then
  begin
    qryMercadorias.Delete;
  end;

end;

procedure TfrmVendas.qryMasterAfterOpen(DataSet: TDataSet);
begin
  qryMercadorias.Open();
  qryParcelas.Open();
end;

procedure TfrmVendas.qryMasterAfterPost(DataSet: TDataSet);
begin
  qryMercadorias.Post;
  qryParcelas.Post;
end;

procedure TfrmVendas.qryMasterBeforeCancel(DataSet: TDataSet);
begin
  qryParcelas.Cancel;
  qryMercadorias.Cancel;
end;

procedure TfrmVendas.qryMasterBeforeClose(DataSet: TDataSet);
begin
  qryMercadorias.Close;
  qryParcelas.Close;
end;

procedure TfrmVendas.qryMercadoriasBeforeInsert(DataSet: TDataSet);
begin
  if ((qryMaster.IsEmpty) or (grdPesquisa.Focused)) then
  begin
    abort;
  end;
end;

procedure TfrmVendas.qryParcelasBeforeInsert(DataSet: TDataSet);
begin
  if ((qryMaster.IsEmpty) or (grdPesquisa.Focused)) then
  begin
    abort;
  end;
end;

procedure TfrmVendas.restauraSQL;
begin
  //restaurar SQL
end;

end.
