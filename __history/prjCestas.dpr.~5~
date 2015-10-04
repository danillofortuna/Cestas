program prjCestas;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uFrmMasterCad in 'uFrmMasterCad.pas' {frmMasterCad},
  uDM in 'uDM.pas' {DM: TDataModule},
  uFrmClientes in 'uFrmClientes.pas' {frmClientes},
  uFrmMercadorias in 'uFrmMercadorias.pas' {frmMercadorias},
  uFrmCidades in 'uFrmCidades.pas' {frmCidades},
  uFrmRelatorios in 'uFrmRelatorios.pas' {frmRelatorios},
  uFrmVendas in 'uFrmVendas.pas' {frmVendas},
  uFrmMasterPes in 'uFrmMasterPes.pas' {frmMasterPes},
  uFrmPesClientes in 'uFrmPesClientes.pas' {frmPesClientes},
  uFuncoes in 'uFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
