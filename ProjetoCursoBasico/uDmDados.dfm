object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 319
  Width = 735
  object fdConexao: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Users\VLAdmin\Desktop\Eu\Curso Delphi\Aula5\DADOS.FDB'
    Params.Strings = (
      'user_name=SYSdba'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    Left = 88
    Top = 48
  end
end
