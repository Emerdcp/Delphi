unit uFormMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormMain = class(TForm)
    but_1: TButton;
    procedure but_1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.but_1Click(Sender: TObject);
begin
  ShowMessage('Ok');
end;

end.
