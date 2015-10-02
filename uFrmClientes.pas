unit uFrmClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMasterCad, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, uDM;

type
  TfrmClientes = class(TfrmMasterCad)
    fdtncfldMasterid: TFDAutoIncField;
    strngfldMasternome: TStringField;
    strngfldMastertelefone: TStringField;
    strngfldMastertelefone2: TStringField;
    intgrfldMasterid_cidade: TIntegerField;
    strngfldMastercidade: TStringField;
    lblCodigo: TLabel;
    edtCodigo: TDBEdit;
    lblNome: TLabel;
    edtNome: TDBEdit;
    lblTelefone: TLabel;
    edtFone1: TDBEdit;
    lblFone2: TLabel;
    edtFone2: TDBEdit;
    lcbCidade: TDBLookupComboBox;
    lblCidade: TLabel;
    qryCidades: TFDQuery;
    dsCidades: TDataSource;
    lblEndereco: TLabel;
    memoEndereco: TDBMemo;
    strngfldMasterendereco: TStringField;
    lblPesNome: TLabel;
    edtPesNome: TEdit;
    procedure FormShow(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure restauraSQL; override;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

procedure TfrmClientes.actAlterarExecute(Sender: TObject);
begin
  restauraSQL;
  qryMaster.Open();
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmClientes.actGravarExecute(Sender: TObject);
begin
  if edtNome.Text = emptyStr then
  begin
    Application.MessageBox('Por favor, informe o nome do cliente.', '', MB_OK
      + MB_ICONWARNING);
    edtNome.SetFocus;
    Exit;
  end;

  if ((edtFone1.Text = EmptyStr) and (edtFone2.Text = emptyStr)) then
  begin
    Application.MessageBox('Por favor, informe pelo menos um telefone.', '',
      MB_OK + MB_ICONWARNING);
    edtFone1.SetFocus;
    Exit;
  end;

  if lcbCidade.Text = EmptyStr then
  begin
    Application.MessageBox('Por favor, Selecione uma cidade.', '', MB_OK +
      MB_ICONWARNING);
    lcbCidade.SetFocus;
    Exit;
  end;

  inherited;

end;

procedure TfrmClientes.actNovoExecute(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmClientes.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  edtPesNome.Clear;
  edtPesCodigo.Clear;
end;

procedure TfrmClientes.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  restauraSQL;

  if edtPesCodigo.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and C.id = '+edtPesCodigo.Text);
  end;

  if edtPesNome.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and C.nome like '+quotedStr('%'+edtPesNome.Text+'%'));
  end;

  qryMaster.Open();

end;

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmClientes := nil;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
  inherited;
  qryCidades.Open;
  qryCidades.Refresh;
end;

procedure TfrmClientes.restauraSQL;
begin
  if qryMaster.State in [dsEdit, dsInsert] then
  begin
    qryMaster.Cancel;
  end;
  qryMaster.Close;
  qryMaster.SQL.Clear;
  qryMaster.SQL.Add('SELECT C.id,');
  qryMaster.SQL.Add('C.nome,');
  qryMaster.SQL.Add('C.telefone,');
  qryMaster.SQL.Add('C.telefone2,');
  qryMaster.SQL.Add('C.endereco,');
  qryMaster.SQL.Add('C.id_cidade,');
  qryMaster.SQL.Add('CD.nome as cidade');
  qryMaster.SQL.Add('FROM   clientes C,');
  qryMaster.SQL.Add('cidades CD');
  qryMaster.SQL.Add('WHERE  C.id_cidade = CD.id');
end;

end.
