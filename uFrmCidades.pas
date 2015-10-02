unit uFrmCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMasterCad, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Actions,
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCidades = class(TfrmMasterCad)
    lblPesNome: TLabel;
    edtPesNome: TEdit;
    fdtncfldMasterid: TFDAutoIncField;
    strngfldMasternome: TStringField;
    lblCodigo: TLabel;
    edtCodigo: TDBEdit;
    lblNome: TLabel;
    edtNome: TDBEdit;
    procedure btnPesquisarClick(Sender: TObject);
    procedure restauraSQL; override;
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCidades: TfrmCidades;

implementation

{$R *.dfm}

procedure TfrmCidades.actAlterarExecute(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmCidades.actNovoExecute(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmCidades.btnPesquisarClick(Sender: TObject);
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

procedure TfrmCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmCidades := nil;
end;

procedure TfrmCidades.restauraSQL;
begin
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
  qryMaster.SQL.Add('nome');
  qryMaster.SQL.Add('from   cidades');
  qryMaster.SQL.Add('where 1=1');
end;

end.
