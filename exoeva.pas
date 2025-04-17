unit exoeva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ExtDlgs, Spin, math;

type
  TForm15 = class(TForm)
    PaintBox1: TPaintBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    SavePictureDialog1: TSavePictureDialog;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Label13: TLabel;
    Label14: TLabel;
    CheckBox1: TCheckBox;
    SpinEdit1: TSpinEdit;
    Label15: TLabel;
    procedure Button6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type TKoordianten=Record
  x:array[0..4] of extended;
  end;

var
  Form15: TForm15;
  bild,verti,schraeg:TBitmap;
  pfad:string;
  anzplan:integer;

implementation

{$R *.dfm}

procedure TForm15.Button6Click(Sender: TObject);
begin
form15.Visible:=false;
end;

procedure TForm15.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form15.Visible:=false;
end;

procedure TForm15.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form15.Visible:=false;
end;

procedure TForm15.FormCreate(Sender: TObject);
begin
verti:=TBitmap.create;
schraeg:=TBitmap.create;
bild:=TBitmap.create;
bild.width:=paintbox1.width;
bild.Height:=paintbox1.Height;
bild.canvas.brush.color:=clwhite;
bild.Canvas.FillRect(rect(0,0,bild.Width,bild.height));
end;

procedure TForm15.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
paintbox1.canvas.Draw(0,0,bild);
end;

procedure TForm15.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
paintbox1.canvas.Draw(0,0,bild);
end;

procedure TForm15.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
paintbox1.canvas.Draw(0,0,bild);
end;

procedure TForm15.Button1Click(Sender: TObject);
var TF:Textfile;
    s:string;
    lang,e,i:integer;
begin
if opendialog1.Execute
then
begin

s:=opendialog1.FileName;
lang:=length(s);
pfad:='';
for e:=1 to lang-7 do
pfad:=pfad+s[e];

assignfile(TF,opendialog1.FileName);
reset(TF);

readln(TF,s);

readln(TF,s);
anzplan:=strtoint(s);
anzplan:=anzplan-1;

for i:=1 to anzplan do
listbox2.Items.Add('object '+inttostr(i));



Closefile(TF);
button2.Enabled:=true;
button3.Enabled:=true;
end;
end;

procedure TForm15.Button2Click(Sender: TObject);
var TF:Textfile;
    s:string;
    h:array[1..3] of string;
    i,posi,lz,lang:integer;
    imin,imax,istart,emin,emax,estart,amin,amax,astart:array of extended;
    ajetzt,ejetzt,ijetzt:extended;
    erste,obj:array of boolean;
    selele:array[0..2] of boolean;
begin
assignfile(TF,pfad+'ele.dat');
reset(TF);
for i:=1 to 8 do
readln(TF,s);

setlength(imin,anzplan);
setlength(imax,anzplan);
setlength(istart,anzplan);
setlength(emin,anzplan);
setlength(emax,anzplan);
setlength(estart,anzplan);
setlength(amin,anzplan);
setlength(amax,anzplan);
setlength(astart,anzplan);
setlength(erste,anzplan);

for i:=0 to anzplan-1 do
erste[i]:=false;

while EOF(TF)=false do
begin
for i:=0 to anzplan-1 do
begin
readln(TF,s);

posi:=0;
lz:=0;
lang:=length(s);
h[1]:='';
h[2]:='';
h[3]:='';


repeat
inc(posi);

if (s[posi]<>' ') and (lz>0) and (lz<4)
then
begin
h[lz]:=h[lz]+s[posi];
end;

if s[posi]=' '
then
inc(lz);      

until (posi=lang) or (lz=4);


if erste[i]=false
then
begin
amin[i]:=strtofloat(h[1]);
amax[i]:=strtofloat(h[1]);
astart[i]:=strtofloat(h[1]);
emin[i]:=strtofloat(h[2]);
emax[i]:=strtofloat(h[2]);
estart[i]:=strtofloat(h[2]);
imin[i]:=strtofloat(h[3]);
imax[i]:=strtofloat(h[3]);
istart[i]:=strtofloat(h[3]);

erste[i]:=true;
end;

ajetzt:=strtofloat(h[1]);
ejetzt:=strtofloat(h[2]);
ijetzt:=strtofloat(h[3]);

if ajetzt<amin[i]
then
amin[i]:=ajetzt;

if ajetzt>amax[i]
then
amax[i]:=ajetzt;

if ejetzt<emin[i]
then
emin[i]:=ejetzt;

if ejetzt>emax[i]
then
emax[i]:=ejetzt;

if ijetzt<imin[i]
then
imin[i]:=ijetzt;

if ijetzt>imax[i]
then
imax[i]:=ijetzt;


end;
end;

Memo1.Clear;

setlength(obj,anzplan);
for i:=0 to anzplan-1 do
if listbox2.Selected[i]=true
then
obj[i]:=true
else
obj[i]:=false;

for i:=0 to 2 do
if listbox1.Selected[i]=true
then
selele[i]:=true
else
selele[i]:=false;

For i:=0 to anzplan-1 do
if obj[i]=true
then
begin
Memo1.Lines.Add('object '+inttostr(i)+':');
Memo1.Lines.Add('');

if selele[0]=true
then
begin
Memo1.Lines.Add('initial value of semi-major axis: '+floattostr(roundto(astart[i],-spinedit1.value))+'[AU]');
Memo1.Lines.Add('variations of semi-major axis: +'+floattostr(roundto(amax[i]-astart[i],-spinedit1.value))+
'[AU] / -'+floattostr(roundto(astart[i]-amin[i],-spinedit1.value))+'[AU]');
Memo1.Lines.Add('');
end;

if selele[1]=true
then
begin
Memo1.Lines.Add('initial value of eccentricity: '+floattostr(roundto(estart[i],-spinedit1.value)));
Memo1.Lines.Add('variations of eccentricity: +'+floattostr(roundto(emax[i]-estart[i],-spinedit1.value))+
' / -'+floattostr(roundto(estart[i]-emin[i],-spinedit1.value)));
Memo1.Lines.Add('');
end;


if selele[2]=true
then
begin
Memo1.Lines.Add('initial value of inclination: '+floattostr(roundto(istart[i],-spinedit1.value))+'[°]');
Memo1.Lines.Add('variations of inclination: +'+floattostr(roundto(imax[i]-istart[i],-spinedit1.value))+
'[°] / -'+floattostr(roundto(istart[i]-imin[i],-spinedit1.value))+'[°]');
Memo1.Lines.Add('');
end;

Memo1.Lines.Add('-------------------------');
end;




Closefile(TF);
button4.Enabled:=true;
end;

procedure TForm15.Button3Click(Sender: TObject);
var t0,t1,v0,v1,incl,angle:extended;
    XB,VB:array of TKoordianten;
    TF:textfile;
    s:string;
    i,posi,lz,lang,cc,e:integer;
    mass:array of extended;
    xh,yh,zh:array of extended;
    t,mges,stretcht,stretchv,ufakt:extended;
    h:array[0..3] of string;
    viewvect:array[1..3] of extended;
begin

if checkbox1.checked=true
then
button4.Enabled:=true;

button5.Enabled:=true;

t0:=strtofloat(edit1.text);
t1:=strtofloat(edit2.text);
v0:=strtofloat(edit3.text);
v1:=strtofloat(edit4.text);
incl:=strtofloat(edit5.text);
angle:=strtofloat(edit6.text);

setlength(xh,anzplan);
setlength(yh,anzplan);
setlength(zh,anzplan);
t:=0;

setlength(mass,anzplan+1);
assignfile(TF,pfad+'exo.dat');
reset(TF);
readln(TF,s);
readln(TF,s);
i:=0;
while EOF(TF)=false do
begin
readln(TF,s);
mass[i]:=strtofloat(s);
inc(i);
end;
closefile(TF);

mges:=0;
for i:=0 to anzplan do
mges:=mges+mass[i];

assignfile(TF,pfad+'coo.dat');
reset(TF);
for i:=1 to 8 do
readln(TF,s);

cc:=0;

while EOF(TF)=false do
begin
for i:=0 to anzplan-1 do
begin
readln(TF,s);

posi:=0;
lz:=0;
lang:=length(s);
h[0]:='';
h[1]:='';
h[2]:='';
h[3]:='';


repeat
inc(posi);

if (s[posi]<>' ') and (lz<4)
then
begin
h[lz]:=h[lz]+s[posi];
end;

if s[posi]=' '
then
inc(lz);      

until (posi=lang) or (lz=4);

t:=strtofloat(h[0]);
xh[i]:=strtofloat(h[1]);
yh[i]:=strtofloat(h[2]);
zh[i]:=strtofloat(h[3]);


end;

inc(cc);
setlength(XB,cc);

XB[cc-1].x[0]:=t*365.25;
XB[cc-1].x[1]:=0;
XB[cc-1].x[2]:=0;
XB[cc-1].x[3]:=0;

for i:=0 to anzplan-1 do
begin
XB[cc-1].x[1]:=XB[cc-1].x[1]+mass[i+1]*xh[i];
XB[cc-1].x[2]:=XB[cc-1].x[2]+mass[i+1]*yh[i];
XB[cc-1].x[3]:=XB[cc-1].x[3]+mass[i+1]*zh[i];
end;

XB[cc-1].x[1]:=XB[cc-1].x[1]/mges;
XB[cc-1].x[2]:=XB[cc-1].x[2]/mges;
XB[cc-1].x[3]:=XB[cc-1].x[3]/mges;

end;

Closefile(TF);


setlength(VB,cc-1);
for i:=0 to cc-2 do
begin
VB[i].x[0]:=(XB[i+1].x[0]+XB[i].x[0])/2;
VB[i].x[1]:=(XB[i+1].x[1]-XB[i].x[1])/(XB[i+1].x[0]-XB[i].x[0]);
VB[i].x[2]:=(XB[i+1].x[2]-XB[i].x[2])/(XB[i+1].x[0]-XB[i].x[0]);
VB[i].x[3]:=(XB[i+1].x[3]-XB[i].x[3])/(XB[i+1].x[0]-XB[i].x[0]);
end;

viewvect[1]:=cos((incl-90)*PI/180)*cos(angle*PI/180);
viewvect[2]:=cos((incl-90)*PI/180)*sin(angle*PI/180);
viewvect[3]:=sin((incl-90)*PI/180);

ufakt:=149597870691/86400;

For i:=0 to cc-2 do
begin
VB[i].x[4]:=0;
for e:=1 to 3 do
begin
VB[i].x[4]:=VB[i].x[4]+VB[i].x[e]*viewvect[e];
end;
VB[i].x[4]:=VB[i].x[4]*ufakt;
end;


stretcht:=560/(t1-t0);
stretchv:=-360/(v1-v0);

bild.Canvas.brush.Color:=clwhite;
bild.canvas.FillRect(Rect(0,0,bild.width,bild.height));

for i:=0 to cc-2 do
begin
bild.Canvas.Pixels[round(stretcht*(VB[i].x[0]-t0))+20,round(stretchv*(VB[i].x[4]-v0))+380]:=clred;
bild.Canvas.Pixels[round(stretcht*(VB[i].x[0]-t0))+21,round(stretchv*(VB[i].x[4]-v0))+381]:=clred;
bild.Canvas.Pixels[round(stretcht*(VB[i].x[0]-t0))+19,round(stretchv*(VB[i].x[4]-v0))+381]:=clred;
bild.Canvas.Pixels[round(stretcht*(VB[i].x[0]-t0))+19,round(stretchv*(VB[i].x[4]-v0))+379]:=clred;
bild.Canvas.Pixels[round(stretcht*(VB[i].x[0]-t0))+21,round(stretchv*(VB[i].x[4]-v0))+379]:=clred;
end;

bild.Canvas.brush.Color:=clwhite;
bild.canvas.FillRect(Rect(0,0,bild.width,20));
bild.canvas.FillRect(Rect(0,381,bild.width,400));
bild.canvas.FillRect(Rect(0,0,20,bild.height));
bild.canvas.FillRect(Rect(580,0,bild.width,bild.height));

bild.canvas.Pen.Color:=clblack;
bild.canvas.moveto(28,20);
bild.canvas.LineTo(19,20);
bild.canvas.LineTo(19,381);
bild.Canvas.LineTo(580,381);
bild.Canvas.LineTo(580,372);

bild.Canvas.TextOut(2,385,'('+edit1.Text+'/'+edit3.Text+')');
bild.canvas.textout(585-length(edit2.text)*5,385,edit2.text);
if length(edit4.Text)<5
then
bild.Canvas.TextOut(11,5,edit4.text)
else
bild.Canvas.TextOut(2,5,edit4.text);

bild.Canvas.TextOut(275,385,'time [days]');

s:='radial velocity [m/s]';

lang:=length(s);

schraeg.Height:=15;
schraeg.width:=5*lang+5;
schraeg.canvas.Brush.Color:=clwhite;
schraeg.canvas.FillRect(rect(0,0,schraeg.width,schraeg.Height));
schraeg.canvas.TextOut(2,2,s);
verti.Height:=5*lang+5;
verti.width:=15;
for i:=0 to verti.Height-1 do
for e:=0 to verti.width-1 do
verti.Canvas.Pixels[e,i]:=schraeg.Canvas.Pixels[verti.Height-1-i,e];

bild.canvas.Draw(2,round(200-2.5*lang),verti);


paintbox1.Canvas.Draw(0,0,bild);

if checkbox1.checked=true
then
begin
memo1.Clear;
memo1.Lines.Add('time [days]  |  radial velocity [m/s]');
memo1.Lines.Add('-------------------------------------');
for i:=0 to cc-2 do
begin
memo1.Lines.Add(floattostr(roundto(VB[i].x[0],-spinedit1.value))+' | '
+floattostr(roundto(VB[i].x[4],-spinedit1.value)));
end;
end;

end;





procedure TForm15.Button4Click(Sender: TObject);
begin
if savedialog1.Execute
then
begin
Memo1.Lines.SaveToFile(Savedialog1.filename);
end;
end;

procedure TForm15.Button5Click(Sender: TObject);
begin
SavePictureDialog1.DefaultExt := GraphicExtension(Tbitmap);
SavePictureDialog1.Filter := GraphicFilter(TBitmap);
if SavePictureDialog1.Execute
then
bild.SaveToFile(SavePictureDialog1.FileName);
end;

end.
