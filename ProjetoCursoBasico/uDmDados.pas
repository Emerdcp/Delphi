unit uDmDados;

interface

uses
  SysUtils, Classes, DB, IBDatabase, uFormConfigBanco, uBiblioteca, Forms;

type
  TdmDados = class(TDataModule)
    fdConexao: TIBDatabase;
    procedure DataModuleCreate(Sender: TObject);
  private
     procedure CarregaBanco;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{$R *.dfm}

procedure TdmDados.CarregaBanco;
begin
  try
    // n�o deu certo, teve que usar outra fun��o - fdConexao.Params.DataBase := GetValorIni(ExtractFilePath(Application.ExeName), 'CONFIGURACAO', 'LOCAL');
    //fdConexao.Params.Database := GetValorIni(ExtractFilePath(Application.ExeName) + 'config.ini', 'CONFIGURACAO', 'LOCAL_DB');
    fdConexao.Params.LoadFromFile('.\config.ini');
    fdConexao.Connected := True;
    fdConexao.Close();
    //fdConexao.Close();
    //Application.Terminate;
  except
    FormConfigBanco.ShowModal;
  end;
end;

procedure TdmDados.DataModuleCreate(Sender: TObject);
begin
  CarregaBanco;
end;

end.
