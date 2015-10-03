unit uFuncoes;

interface

uses
  Vcl.Forms;

  procedure centralizarForm(Formulario : TForm);

implementation

  procedure centralizarForm(Formulario : TForm);
  begin
    Formulario.Left := Trunc((Screen.WorkAreaWidth-Formulario.Width)/2);
    Formulario.Top := Trunc((Screen.WorkAreaHeight-Formulario.Height)/2);
  end;

end.
