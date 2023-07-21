unit uBiblioteca;

interface
uses IniFiles, SysUtils, Forms;
  procedure setValorIni(pLocal, pSessao, pSubSessao: string; pValor: string);
  function GetValorIni(pLocal, pSessao, pSubsessao: string): string;

implementation

  procedure setValorIni(pLocal, pSessao, pSubSessao: string; pValor: string);
  var vArquivo: TIniFile;
  begin                       //extractfilepath Busca o arquivo (c:\teste\nome.exe)
    vArquivo := TIniFile.Create(pLocal); //ExtractFilePath(Application.ExeName) + 'config.ini'

    vArquivo.WriteString(pSessao, pSessao, pValor);

    vArquivo.Free;
  end;

  function GetValorIni(pLocal, pSessao, pSubsessao: string): string;
  var vArquivo: TIniFile;
  begin
    vArquivo := TIniFile.Create(pLocal);

    Result := vArquivo.ReadString(pSessao, pSubsessao, '');

    vArquivo.Free;
  end;

end.
