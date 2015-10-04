unit uFrmPesClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMasterPes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, System.Actions, Vcl.ActnList;

type
  TfrmPesClientes = class(TfrmMasterPes)
    fdtncfldMasterid: TFDAutoIncField;
    strngfldMasternome: TStringField;
    strngfldMastertelefone: TStringField;
    strngfldMastertelefone2: TStringField;
    strngfldMasterendereco: TStringField;
    intgrfldMasterid_cidade: TIntegerField;
    strngfldMastercidade: TStringField;
    lblPesNome: TLabel;
    edtPesNome: TEdit;
    procedure pnlPesquisaExit(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actRetornarExecute(Sender: TObject); override;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesClientes: TfrmPesClientes;

implementation

{$R *.dfm}

procedure TfrmPesClientes.actCancelarExecute(Sender: TObject);
begin
  inherited;
  qryMaster.Close;
  close;
end;

procedure TfrmPesClientes.actRetornarExecute(Sender: TObject);
begin
  inherited;
  if not qryMaster.IsEmpty then
  begin
    preencheRetorno(qryMaster.FieldByName('id').AsInteger, qryMaster.FieldByName('nome').AsString);
    close;
  end
  else
  begin
    edtPesCodigo.SetFocus;
  end;
end;

procedure TfrmPesClientes.FormShow(Sender: TObject);
begin
  inherited;
  edtPesCodigo.SetFocus;
end;

procedure TfrmPesClientes.pnlPesquisaExit(Sender: TObject);
begin
  inherited;
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

  if edtPesCodigo.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and C.id = '+edtPesCodigo.Text);
  end;

  if edtPesNome.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and C.nome like '+quotedStr('%'+edtPesNome.Text+'%'));
  end;
  edtPesNome.Clear;
  edtPesCodigo.Clear;
  qryMaster.Open();
end;

end.
