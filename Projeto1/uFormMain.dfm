object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 445
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object but_1: TButton
    Left = 384
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 0
  end
  object edt_1: TEdit
    Left = 336
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edt_1'
  end
  object mem_1: TMemo
    Left = 536
    Top = 216
    Width = 185
    Height = 89
    Lines.Strings = (
      'mem_1')
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 8
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Salvar1: TMenuItem
        Caption = 'Salvar'
      end
    end
  end
  object fdConexao: TIBDatabase
    DatabaseName = 'C:\xampp\htdocs\Delphi\Projeto1\Dados\Dados.fdb'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    AllowStreamedConnected = False
    Left = 80
    Top = 8
  end
end
