unit uFrmMercadorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMasterCad, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, Vcl.Mask, Vcl.DBCtrls, FireDAC.Comp.Client,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmMercadorias = class(TfrmMasterCad)
    lblCodigo: TLabel;
    edtCodigo: TDBEdit;
    fdtncfldMasterid: TFDAutoIncField;
    strngfldMasternome: TStringField;
    snglfldMasterpreco: TSingleField;
    lblNome: TLabel;
    edtNome: TDBEdit;
    lblPreco: TLabel;
    edtPreco: TDBEdit;
    lblPesNome: TLabel;
    edtPesNome: TEdit;
    procedure btnPesquisarClick(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure edtPrecoKeyPress(Sender: TObject; var Key: Char);
    procedure restauraSQL;override;
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ValidaFloat(var Key: Char; texto : string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMercadorias: TfrmMercadorias;

implementation

{$R *.dfm}

procedure TfrmMercadorias.actAlterarExecute(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmMercadorias.actNovoExecute(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmMercadorias.actPesquisarExecute(Sender: TObject);
begin
  inherited;
  edtPesCodigo.Clear;
  edtPesNome.Clear;
end;

procedure TfrmMercadorias.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  restauraSQL;

  if edtPesCodigo.Text <> EmptyStr then
  begin
    qryMaster.SQL.Add('and id = '+edtPesCodigo.Text);
  end;

  if edtPesNome.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and nome like '+quotedStr('%'+edtPesNome.Text+'%'));
  end;
  qryMaster.Open;

end;

procedure TfrmMercadorias.edtPrecoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  ValidaFloat(Key, edtPreco.Text);
end;

procedure TfrmMercadorias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmMercadorias := nil;
end;

procedure TfrmMercadorias.restauraSQL;
begin
  inherited;
  if qryMaster.Active then
  begin
    if qryMaster.State in [dsEdit, dsInsert] then
    begin
      qryMaster.Cancel;
    end;
    qryMaster.Close;
  end;
  qryMaster.SQL.Clear;
  qryMaster.SQL.Add('select id,');
  qryMaster.SQL.Add('nome,');
  qryMaster.SQL.Add('preco');
  qryMaster.SQL.Add('from   mercadorias');
  qryMaster.SQL.Add('where 1=1');
end;

procedure TfrmMercadorias.ValidaFloat(var Key: Char; texto : string);
begin
  if Key = ',' then
  begin
    if texto.Contains(',') then
    begin
      Abort;
    end;
  end;
end;

end.
