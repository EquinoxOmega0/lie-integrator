unit bugs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm13 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
form13.Visible:=false;
end;

procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form13.Visible:=false;
end;

procedure TForm13.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form13.Visible:=false;
end;

end.
