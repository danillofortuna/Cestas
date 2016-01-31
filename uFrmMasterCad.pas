unit uFrmMasterCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, System.Actions, Vcl.ActnList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.UI,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  uDM;

type
  TfrmMasterCad = class(TForm)
    pnlTitulo: TPanel;
    btnFechar: TSpeedButton;
    pnlPesquisa: TPanel;
    lblPesquisar: TLabel;
    grdPesquisa: TDBGrid;
    pnlBtnPesquisar: TPanel;
    btnPesquisar: TButton;
    pnlBotoes: TPanel;
    btnAlterar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnGravar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnNovo: TSpeedButton;
    actlstBotoes: TActionList;
    actNovo: TAction;
    actAlterar: TAction;
    actCancelar: TAction;
    actGravar: TAction;
    actExcluir: TAction;
    qryMaster: TFDQuery;
    dsMaster: TDataSource;
    lblPesCodigo: TLabel;
    edtPesCodigo: TEdit;
    actPesquisar: TAction;
    pnlDados: TPanel;
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure grdPesquisaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grdPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnPesquisarClick(Sender: TObject);
    procedure restauraSQL; virtual;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMasterCad: TfrmMasterCad;

implementation


{$R *.dfm}

procedure TfrmMasterCad.actAlterarExecute(Sender: TObject);
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
  grdPesquisa.Enabled := false;
  qryMaster.Edit;
end;

procedure TfrmMasterCad.actCancelarExecute(Sender: TObject);
begin
  actNovo.Enabled     := True;
  actAlterar.Enabled  := True;
  actGravar.Enabled   := False;
  actCancelar.Enabled := False;
  actExcluir.Enabled  := True;
  grdPesquisa.Enabled := True;

  qryMaster.Cancel;
end;

procedure TfrmMasterCad.actExcluirExecute(Sender: TObject);
begin

  if qryMaster.IsEmpty then
  begin
    Application.MessageBox('Não existe registro para ser excluido!', '', MB_OK
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

procedure TfrmMasterCad.actGravarExecute(Sender: TObject);
begin
  actNovo.Enabled     := True;
  actAlterar.Enabled  := True;
  actGravar.Enabled   := False;
  actCancelar.Enabled := False;
  actExcluir.Enabled  := True;
  grdPesquisa.Enabled := True;
  qryMaster.Post;
  qryMaster.Refresh;
end;

procedure TfrmMasterCad.actNovoExecute(Sender: TObject);
begin
  edtPesCodigo.SetFocus;
  actNovo.Enabled     := false;
  actAlterar.Enabled  := false;
  actGravar.Enabled   := True;
  actCancelar.Enabled := true;
  actExcluir.Enabled  := false;
  grdPesquisa.enabled := False;
  restauraSQL;
  if not qryMaster.Active then
  begin
    qryMaster.Open();
  end;
  qryMaster.Insert;
end;

procedure TfrmMasterCad.actPesquisarExecute(Sender: TObject);
begin
  edtPesCodigo.SetFocus;
end;


procedure TfrmMasterCad.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMasterCad.btnPesquisarClick(Sender: TObject);
begin
  if qryMaster.IsEmpty then
  begin
    Application.MessageBox('Nenhum registro encontrado.', '', MB_OK +
      MB_ICONINFORMATION);
    pnlPesquisa.SetFocus;
  end;
  grdPesquisa.SetFocus;
end;

procedure TfrmMasterCad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmMasterCad.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key = #13) and (activeControl <> grdPesquisa)) then
  begin
    Perform(WM_NEXTDLGCTL,0,0);
    Key := #0;
  end;
end;

procedure TfrmMasterCad.FormShow(Sender: TObject);
begin
  qryMaster.Open;
end;

procedure TfrmMasterCad.grdPesquisaDblClick(Sender: TObject);
begin
  if not qryMaster.IsEmpty then
  begin
    btnAlterar.Click;
  end;
end;

procedure TfrmMasterCad.grdPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    grdPesquisaDblClick(Sender);
  end;

end;


procedure TfrmMasterCad.restauraSQL;
begin
//restaurar
end;

end.
