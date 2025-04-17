unit habitable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, math;

type
  TForm9 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label11: TLabel;
    Edit6: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure vorrechnen;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  amin,amax:extended;

implementation

uses scans;

{$R *.dfm}

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form9.Visible:=false;
end;

procedure TForm9.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Form9.Visible:=false;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
Form9.Visible:=false;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
vorrechnen;
form2.Edit2.Text:=floattostr(amin);
form2.Edit3.Text:=floattostr(amax);
Form9.Visible:=false;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
vorrechnen;
end;

procedure TForm9.vorrechnen;
var Rs,Ts,Tmin,Tmax,A,atm:extended;
begin
Ts:=strtofloat(Edit1.text);
Rs:=strtofloat(edit2.text)*0.00465273;              
A:=strtofloat(edit3.text);
Tmin:=strtofloat(edit4.text);
Tmax:=strtofloat(edit5.text);
atm:=strtofloat(edit6.Text);
amin:=sqrt(1-A)*Rs*sqr(Ts/Tmax)/2*sqrt(atm+1);
amax:=sqrt(1-A)*Rs*sqr(Ts/Tmin)/2*sqrt(atm+1);

Label10.caption:='Result: habitable zone from '+floattostr(roundto(amin,-3))+' AU to '+floattostr(roundto(amax,-3))+' AU';
end;

end.
