unit uFormMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DB, IBDatabase;

type
  TForm1 = class(TForm)
    but_1: TButton;
    edt_1: TEdit;
    mem_1: TMemo;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Salvar1: TMenuItem;
    fdConexao: TIBDatabase;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
