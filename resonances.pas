unit resonances;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, math;

type
  TForm8 = class(TForm)
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Button3: TButton;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure vorrechnen;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  ua,oa:extended;

implementation

{$R *.dfm}
uses scans;

procedure TForm8.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Form8.Visible:=false;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form8.Visible:=false;
end;

procedure TForm8.vorrechnen;
var q,p,a,r,w:extended;
begin
q:=spinedit1.Value;
p:=spinedit2.Value;
a:=strtofloat(edit1.text);
w:=strtofloat(edit2.Text);
r:=a*Power((p/q),(2/3));
ua:=r-w;
oa:=r+w;

if ua<0
then
Label7.Caption:='Error: minimal distance is smaller than zero!'
else
Label7.caption:='Result: scan from '+floattostr(roundto(ua,-3))+' AU to '+floattostr(roundto(oa,-3))+' AU';

end;

procedure TForm8.Button3Click(Sender: TObject);
begin
vorrechnen;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
Form8.Visible:=false;
end;

procedure TForm8.Button1Click(Sender: TObject);
begin
vorrechnen;
form2.Edit2.Text:=floattostr(ua);
form2.Edit3.Text:=floattostr(oa);
Form8.Visible:=false;
end;

end.
