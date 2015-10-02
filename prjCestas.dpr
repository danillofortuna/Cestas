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
  uFrmVendas in 'uFrmVendas.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
