program CursoBasico;

uses
  Forms,
  uFormMain in 'uFormMain.pas' {FormMain},
  uDmDados in 'uDmDados.pas' {dmDados: TDataModule},
  uFormConfigBanco in 'uFormConfigBanco.pas' {FormConfigBanco},
  uBiblioteca in 'uBiblioteca.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormConfigBanco, FormConfigBanco);
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
