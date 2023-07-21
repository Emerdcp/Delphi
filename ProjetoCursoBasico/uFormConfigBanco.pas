unit uFormConfigBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxGDIPlusClasses, ExtCtrls, uBiblioteca;

type
  TFormConfigBanco = class(TForm)
    img_1: TImage;
    editLocal: TEdit;
    lab_1: TLabel;
    but_1: TButton;
    openPastas: TOpenDialog;
    procedure but_1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure Configura;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfigBanco: TFormConfigBanco;

implementation

{$R *.dfm}

{ TFormConfigBanco }

procedure TFormConfigBanco.but_1Click(Sender: TObject);
begin
  Configura;
end;

procedure TFormConfigBanco.Configura;
var
  vFileName: string;
begin
  if openPastas.Execute then begin
    editLocal.Text := openPastas.FileName;
    vFileName := ExtractFilePath(Application.ExeName) + 'config.ini';
    setValorIni(vFileName, 'CONFIGURACAO', 'LOCAL_DB', editLocal.Text);
    ShowMessage('Banco Configurado.');
    Self.Close;
  end;
end;

procedure TFormConfigBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
