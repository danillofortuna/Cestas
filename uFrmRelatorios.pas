unit uFrmRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmRelatorios = class(TForm)
    pnlTitulo: TPanel;
    btnFechar: TSpeedButton;
    grpClientes: TGroupBox;
    grpMercadorias: TGroupBox;
    edtCodigo: TEdit;
    lblRelatorio: TLabel;
    btnOk: TButton;
    btnClientesNome: TSpeedButton;
    btnClientesCodigo: TSpeedButton;
    btnClientesTodos: TSpeedButton;
    btnMercadoriaCodigo: TSpeedButton;
    btnMercadoriaNome: TSpeedButton;
    btnMercadoriaTodos: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure btnClientesCodigoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorios: TfrmRelatorios;

implementation

{$R *.dfm}

procedure TfrmRelatorios.btnClientesCodigoClick(Sender: TObject);
begin
  showmessage('1');
end;

procedure TfrmRelatorios.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRelatorios.btnOkClick(Sender: TObject);
var
  I : Integer;
begin
  if edtCodigo.Text <> EmptyStr then
  begin
    for I := 0 to self.ComponentCount-1 do
    begin
      if self.Components[i] is TSpeedButton then
      begin
        if TSpeedButton(self.Components[i]).Hint = edtCodigo.Text then
        begin
          edtCodigo.Clear;
          edtCodigo.SetFocus;
          TSpeedButton(self.Components[i]).Click;
          Exit;
        end;
      end;
    end;
    Application.MessageBox('Relatório não encontrado.', '', MB_OK +
      MB_ICONWARNING);
    edtCodigo.SetFocus;
  end;
end;

procedure TfrmRelatorios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmRelatorios := nil;
end;

procedure TfrmRelatorios.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
    Perform(WM_NEXTDLGCTL,0,0);
    Key := #0;
  end;
end;

end.
