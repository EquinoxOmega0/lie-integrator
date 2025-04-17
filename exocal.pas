unit exocal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm14 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    Button3: TButton;
    SaveDialog1: TSaveDialog;
    GroupBox3: TGroupBox;
    Edit3: TEdit;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses main;
{$R *.dfm}

procedure TForm14.Button2Click(Sender: TObject);
begin
form14.Visible:=false;
end;

procedure TForm14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form14.Visible:=false;
end;

procedure TForm14.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form14.Visible:=false;
end;

procedure TForm14.Button3Click(Sender: TObject);
begin
if savedialog1.Execute
then
begin
edit2.text:=savedialog1.FileName+'\';
button1.Enabled:=true;
end;
end;

procedure TForm14.Button1Click(Sender: TObject);
begin
form14.Visible:=false;
form1.exoplancal;
end;

end.
