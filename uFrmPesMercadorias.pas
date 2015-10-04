unit uFrmPesMercadorias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmMasterPes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.Actions, Vcl.ActnList, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmPesMercadorias = class(TfrmMasterPes)
    edtPesNome: TEdit;
    lblPesNome: TLabel;
    procedure pnlPesquisaExit(Sender: TObject);
    procedure actRetornarExecute(Sender: TObject);
    procedure preencheRetorno(id : Integer; texto: string; preco : Double); overload;
  private
    { Private declarations }
  public
    preco : Double;
    { Public declarations }
  end;

var
  frmPesMercadorias: TfrmPesMercadorias;

implementation

{$R *.dfm}

procedure TfrmPesMercadorias.actRetornarExecute(Sender: TObject);
begin
  inherited;
  if not qryMaster.IsEmpty then
  begin
    preencheRetorno(qryMaster.FieldByName('id').AsInteger,
                    qryMaster.FieldByName('nome').AsString,
                    qryMaster.FieldByName('preco').AsFloat);
    close;
  end
  else
  begin
    edtPesCodigo.SetFocus;
  end;
end;

procedure TfrmPesMercadorias.pnlPesquisaExit(Sender: TObject);
begin
  inherited;
  qryMaster.Close;
  qryMaster.SQL.Clear;
  qryMaster.SQL.Add('SELECT id,');
  qryMaster.SQL.Add('nome,');
  qryMaster.SQL.Add('preco');
  qryMaster.SQL.Add('FROM Mercadorias');
  qryMaster.SQL.Add('WHERE  1=1');

  if edtPesCodigo.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and id = '+edtPesCodigo.Text);
  end;

  if edtPesNome.Text <> emptyStr then
  begin
    qryMaster.SQL.Add('and nome like '+quotedStr('%'+edtPesNome.Text+'%'));
  end;
  edtPesNome.Clear;
  edtPesCodigo.Clear;
  qryMaster.Open();
end;

procedure TfrmPesMercadorias.preencheRetorno(id: Integer; texto: string;
  preco: Double);
begin
  Self.id := id;
  Self.texto := texto;
  Self.preco := preco;
end;

end.
