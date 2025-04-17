unit diagramme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ExtDlgs, colourpal, stabele;

type
  TForm4 = class(TForm)
    PaintBox1: TPaintBox;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    SavePictureDialog1: TSavePictureDialog;
    Button5: TButton;
    OpenDialog2: TOpenDialog;
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    Label1: TLabel;
    ListBox2: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Label8: TLabel;
    Edit4: TEdit;
    Button6: TButton;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Edit5: TEdit;
    Label11: TLabel;
    Edit6: TEdit;
    Label12: TLabel;
    ComboBox3: TComboBox;
    Label13: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label14: TLabel;
    CheckBox2: TCheckBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    ListBox3: TListBox;
    Edit9: TEdit;
    Label18: TLabel;
    Button7: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type Tdatpkt=record
  x:array of extended;
  end;

var
  Form4: TForm4;
  bild,schraeg,verti:Tbitmap;
  datenpkt:array of Tdatpkt;
  noo,scantyp:integer;
  normalf:boolean;

implementation

{$R *.dfm}

procedure TForm4.Button2Click(Sender: TObject);
begin
Form4.Visible:=false;
end;

procedure TForm4.Button3Click(Sender: TObject);
var TF:textfile;
    s,zerlegt,zeit,zz:string;
    wert,zeits,limitval:extended;
    i,a,u,e,lang,posi,nnn,npkt,lz,reco,anzprorun,gesdurch,roele:integer;
    aaa:array of boolean;
    x0,y0,stretchx,stretchy:extended;
    feat,oele,varpar,totalobj,vorkomm,dabei,aktu:integer;
    oo,aa,ee,ii,kk,gg,MM,massmass,winkel:extended;
    st,sta,ste,sti,stk,stg,stM,stmass:extended;
    durch,durcha,durche,durchi,durchk,durchg,durchM,durchmass:integer;
    counta,counte,counti,countk,countg,countM,countmass:integer;
    acounta,acounte,acounti,acountk,acountg,acountM,acountmass:integer;
    hilfzeit:array of Tdatpkt;
    schonmehr:boolean;
    verwendbar:array of boolean;
    fixa,fixe,fixi,fixk,fixg,fixM,fixmass:integer;
begin

button4.Enabled:=true;


fixa:=form16.SpinEdit1.value;
fixe:=form16.SpinEdit2.value;
fixi:=form16.SpinEdit3.value;
fixk:=form16.SpinEdit4.value;
fixg:=form16.SpinEdit5.value;
fixM:=form16.SpinEdit6.value;
fixmass:=form16.SpinEdit7.value;



if normalf=true
then
begin

a:=-1;
for i:=0 to listbox1.Items.Count-1 do
if listbox1.Selected[i]=true
then
a:=i;

if a<>-1
then
begin

u:=0;
setlength(aaa,listbox2.Items.Count);
for i:=0 to listbox2.Items.Count-1 do
if listbox2.Selected[i]=true
then
begin
inc(u);
aaa[i]:=true;
end
else
aaa[i]:=false;

if u>0
then
begin

assignfile(TF,opendialog2.FileName);
reset(TF);
for i:=1 to 8 do
readln(TF,s);

setlength(datenpkt,u+1);
npkt:=-1;

while EOF(TF)=false do
begin

inc(npkt);
for i:=0 to noo do
setlength(datenpkt[i].x,npkt+1);

reco:=0;

for i:=1 to noo do
begin
readln(TF,s);
lang:=length(s);

posi:=1;
for e:=0 to a+1 do
begin
zerlegt:='';
if posi<lang
then
begin
repeat
zerlegt:=zerlegt+s[posi];
inc(posi);
until (s[posi]=' ') or (posi=lang);
inc(posi);
end;

if (e=0) and (i=1)
then
begin
wert:=strtofloat(zerlegt);
datenpkt[0].x[npkt]:=wert;
end;

end;

if aaa[i-1]=true
then
begin
wert:=strtofloat(zerlegt);
inc(reco);
datenpkt[reco].x[npkt]:=wert;
end;


end;


end;

bild.Canvas.FillRect(Rect(0,0,bild.Width,bild.Height));
bild.canvas.Pen.Color:=clblack;
bild.canvas.moveto(20,20);
bild.canvas.LineTo(20,380);
bild.Canvas.LineTo(580,380);

x0:=strtofloat(edit3.text);
y0:=strtofloat(edit1.text);
stretchx:=560/(strtofloat(edit4.text)-strtofloat(edit3.text));
stretchy:=-360/(strtofloat(edit2.text)-strtofloat(edit1.text));

for e:=1 to u do
begin
bild.canvas.MoveTo(round(stretchx*(datenpkt[0].x[0]-x0))+20,round(stretchy*(datenpkt[e].x[0]-y0))+380);
bild.canvas.Pen.Color:=strtoint('$'+form10.listbox1.Items.Strings[e-1]);
for i:=1 to npkt-1 do
begin
bild.canvas.lineto(round(stretchx*(datenpkt[0].x[i]-x0))+20,round(stretchy*(datenpkt[e].x[i]-y0))+380);
end;
end;

bild.Canvas.FillRect(Rect(580,0,bild.Width,bild.Height));
bild.canvas.Pen.Color:=clblack;
bild.canvas.moveto(28,20);
bild.canvas.LineTo(19,20);
bild.canvas.LineTo(19,381);
bild.Canvas.LineTo(580,381);
bild.Canvas.LineTo(580,372);
bild.Canvas.TextOut(2,385,'('+edit3.Text+'/'+edit1.Text+')');
bild.canvas.textout(585-length(edit4.text)*5,385,edit4.text);
if length(edit2.Text)<5
then
bild.Canvas.TextOut(11,5,edit2.text)
else
bild.Canvas.TextOut(2,5,edit2.text);

bild.Canvas.TextOut(275,385,'time [years]');

if checkbox1.checked=true
then
begin
for i:=1 to 9 do
begin
bild.Canvas.MoveTo(20+i*56,380);
bild.canvas.LineTo(20+i*56,376);
end;

for i:=1 to 4 do
begin
bild.Canvas.MoveTo(20,20+i*72);
bild.canvas.LineTo(24,20+i*72);
end;

end;


s:=listbox1.Items.Strings[a];

if a=0
then
s:=s+' [AU]';



if a>1
then
s:=s+' [°]';


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

closefile(TF);
button4.Enabled:=true;
end;
end;

end
else
begin//scan file

u:=0;
setlength(aaa,listbox3.Items.Count);
for i:=0 to listbox3.Items.Count-1 do
if listbox3.Selected[i]=true
then
begin
inc(u);
aaa[i]:=true;
end
else
aaa[i]:=false;

feat:=combobox1.ItemIndex;
oele:=combobox2.ItemIndex;
varpar:=combobox3.ItemIndex;

durch:=0;

x0:=strtofloat(edit7.text);
y0:=strtofloat(edit5.text);
stretchx:=560/(strtofloat(edit8.text)-strtofloat(edit7.text));
stretchy:=-360/(strtofloat(edit6.text)-strtofloat(edit5.text));

limitval:=strtofloat(edit9.Text);
schonmehr:=false;






case scantyp of
1:begin         //masselos

assignfile(TF,opendialog1.FileName);
reset(TF);

readln(TF,s);
readln(TF,s);
readln(TF,s);
anzprorun:=strtoint(s);


readln(TF,s);
aa:=strtofloat(s);
readln(TF,s);
ee:=strtofloat(s);
readln(TF,s);
ii:=strtofloat(s);
readln(TF,s);
kk:=strtofloat(s);
readln(TF,s);
gg:=strtofloat(s);
readln(TF,s);
MM:=strtofloat(s);

readln(TF,s);
durcha:=strtoint(s);
readln(TF,s);
durche:=strtoint(s);
readln(TF,s);
durchi:=strtoint(s);
readln(TF,s);
durchk:=strtoint(s);
readln(TF,s);
durchg:=strtoint(s);
readln(TF,s);
durchM:=strtoint(s);

gesdurch:=durcha*durche*durchi*durchk*durchg*durchM;

readln(TF,s);
sta:=strtofloat(s);
readln(TF,s);
ste:=strtofloat(s);
readln(TF,s);
sti:=strtofloat(s);
readln(TF,s);
stk:=strtofloat(s);
readln(TF,s);
stg:=strtofloat(s);
readln(TF,s);
stM:=strtofloat(s);

readln(TF,s);
totalobj:=strtoint(s);

closefile(TF);

roele:=-1;

i:=-1;
e:=-1;
while varpar<>e do
begin
inc(i);
case i of
0:begin
durch:=durcha;
st:=sta;
oo:=aa;
roele:=0;
end;
1:begin
durch:=durche;
st:=ste;
oo:=ee;
roele:=1;
end;
2:begin
durch:=durchi;
st:=sti;
oo:=ii;
roele:=2;
end;
3:begin
durch:=durchk;
st:=stk;
oo:=kk;
roele:=3;
end;
4:begin
durch:=durchg;
st:=stg;
oo:=gg;
roele:=4;
end;
5:begin
durch:=durchM;
st:=stM;
oo:=MM;
roele:=5;
end;
end;

if durch<>1
then
inc(e);

end;



setlength(datenpkt,durch);
setlength(hilfzeit,durch);
for i:=0 to durch-1 do
begin
setlength(datenpkt[i].x,u+1);
setlength(hilfzeit[i].x,u+1);
end;

case feat of
0:begin
for i:=0 to durch-1 do
for e:=0 to u do
datenpkt[i].x[e]:=0;
end;
1:begin
for i:=0 to durch-1 do
for e:=0 to u do
datenpkt[i].x[e]:=10000000000;
end;
2:begin
for i:=0 to durch-1 do
for e:=0 to u do
begin
hilfzeit[i].x[e]:=0;
datenpkt[i].x[e]:=0;
end
end;
3:begin
for i:=0 to durch-1 do
for e:=0 to u do
begin
hilfzeit[i].x[e]:=10000000000;
datenpkt[i].x[e]:=10000000000;
end;
end;
4:begin
for i:=0 to durch-1 do
for e:=0 to u do
begin
datenpkt[i].x[e]:=0;
end;
end;
5:begin
for i:=0 to durch-1 do
for e:=0 to u do
datenpkt[i].x[e]:=0;
end;
end;

s:=opendialog1.FileName;
lang:=length(s);
zerlegt:='';
for e:=1 to lang-8 do
zerlegt:=zerlegt+s[e];

zz:=zerlegt;

setlength(verwendbar,gesdurch);
for i:=0 to gesdurch-1 do
verwendbar[i]:=false;




if durcha<fixa
then
fixa:=durcha;

if durche<fixe
then
fixe:=durche;

if durchi<fixi
then
fixi:=durchi;

if durchk<fixk
then
fixk:=durchk;

if durchg<fixg
then
fixg:=durchg;

if durchM<fixM
then
fixM:=durchM;


//fixmass:=1;



i:=-1;
counta:=0;
repeat
counte:=0;
repeat
counti:=0;
repeat
countk:=0;
repeat
countg:=0;
repeat
countM:=0;
repeat

inc(i);




case roele of
0:fixa:=counta+1;
1:fixe:=counte+1;
2:fixi:=counti+1;
3:fixk:=countk+1;
4:fixg:=countg+1;
5:fixM:=countM+1;
end;

if (fixa=counta+1) and (fixe=counte+1) and (fixi=counti+1) and
   (fixk=countk+1) and (fixg=countg+1) and (fixM=countM+1)
then
verwendbar[i]:=true;


inc(countM);
until countM=durchM;
inc(countg);
until countg=durchg;
inc(countk);
until countk=durchk;
inc(counti);
until counti=durchi;
inc(counte);
until counte=durche;
inc(counta);
until counta=durcha;






{
verwendbar[0]:=true;

acounta:=0;
acounte:=0;
acounti:=0;
acountk:=0;
acountg:=0;
acountM:=0;

i:=-1;
counta:=0;
repeat
counte:=0;
repeat
counti:=0;
repeat
countk:=0;
repeat
countg:=0;
repeat
countM:=0;
repeat

inc(i);




case roele of
0:begin
if acounta<>counta
then
verwendbar[i]:=true;
end;
1:begin
if acounte<>counte
then
verwendbar[i]:=true;
end;
2:begin
if acounti<>counti
then
verwendbar[i]:=true;
end;
3:begin
if acountk<>countk
then
verwendbar[i]:=true;
end;
4:begin
if acountg<>countg
then
verwendbar[i]:=true;
end;
5:begin
if acountM<>countM
then
verwendbar[i]:=true;
end;
end;

acounta:=counta;
acounte:=counte;
acounti:=counti;
acountk:=countk;
acountg:=countg;
acountM:=countM;

inc(countM);
until countM=durchM;
inc(countg);
until countg=durchg;
inc(countk);
until countk=durchk;
inc(counti);
until counti=durchi;
inc(counte);
until counte=durche;
inc(counta);
until counta=durcha;    }



for i:=0 to durch-1 do
datenpkt[i].x[0]:=oo+i*st;

vorkomm:=0;
dabei:=0;


for i:=0 to trunc((gesdurch-1)/anzprorun) do
begin
dabei:=vorkomm;

if i<>trunc(gesdurch/anzprorun)
then
assignfile(TF,zz+'ele'+inttostr(i*anzprorun+1)+'-'+inttostr((i+1)*anzprorun)+'.dat')
else
assignfile(TF,zz+'ele'+inttostr(i*anzprorun+1)+'-'+inttostr(gesdurch)+'.dat');

reset(TF);

for e:=1 to 8 do
readln(TF,s);

while EOF(TF)=false do
begin

vorkomm:=dabei;

for e:=1 to totalobj do
readln(TF,s);

for e:=1 to anzprorun do
if (((i*anzprorun)+e)<=gesdurch)
then
begin
readln(TF,s);



if (verwendbar[(i*anzprorun)+e-1]=true) and (vorkomm<durch)
then
begin

inc(vorkomm);  

lang:=length(s);
zerlegt:='';
zeit:='';
posi:=0;
lz:=0;


repeat
inc(posi);

if (lz=0) and (s[posi]<>' ')
then
zeit:=zeit+s[posi];

if lz=oele+1
then
begin
if s[posi]<>' '
then
zerlegt:=zerlegt+s[posi];
end;

if s[posi]=' '
then
inc(lz);

until (posi=lang) or (lz=oele+2);

wert:=strtofloat(zerlegt);
zeits:=strtofloat(zeit);

case feat of
0:begin
if wert>datenpkt[vorkomm-1].x[1]
then
datenpkt[vorkomm-1].x[1]:=wert;
end;
1:begin
if wert<datenpkt[vorkomm-1].x[1]
then
datenpkt[vorkomm-1].x[1]:=wert;
end;
2:begin
if wert>hilfzeit[vorkomm-1].x[1]
then
begin
datenpkt[vorkomm-1].x[1]:=zeits;
hilfzeit[vorkomm-1].x[1]:=wert;
end;
end;                
3:begin
if wert<hilfzeit[vorkomm-1].x[1]
then
begin
datenpkt[vorkomm-1].x[1]:=zeits;
hilfzeit[vorkomm-1].x[1]:=wert;
end;
end;
4:begin
if (wert>limitval) and (schonmehr=false)
then
begin
datenpkt[vorkomm-1].x[1]:=zeits;
schonmehr:=true;
end;
end;
5:begin
datenpkt[vorkomm-1].x[1]:=wert;
end;
end;       




end;
end;
end;

closefile(TF);
end;



end;
2:begin       //massiv


assignfile(TF,opendialog1.FileName);
reset(TF);

readln(TF,s);
readln(TF,s);



readln(TF,s);
aa:=strtofloat(s);
readln(TF,s);
ee:=strtofloat(s);
readln(TF,s);
ii:=strtofloat(s);
readln(TF,s);
kk:=strtofloat(s);
readln(TF,s);
gg:=strtofloat(s);
readln(TF,s);
MM:=strtofloat(s);
readln(TF,s);
massmass:=strtofloat(s);

readln(TF,s);
durcha:=strtoint(s);
readln(TF,s);
durche:=strtoint(s);
readln(TF,s);
durchi:=strtoint(s);
readln(TF,s);
durchk:=strtoint(s);
readln(TF,s);
durchg:=strtoint(s);
readln(TF,s);
durchM:=strtoint(s);
readln(TF,s);
durchmass:=strtoint(s);

gesdurch:=durcha*durche*durchi*durchk*durchg*durchM*durchmass;

readln(TF,s);
sta:=strtofloat(s);
readln(TF,s);
ste:=strtofloat(s);
readln(TF,s);
sti:=strtofloat(s);
readln(TF,s);
stk:=strtofloat(s);
readln(TF,s);
stg:=strtofloat(s);
readln(TF,s);
stM:=strtofloat(s);
readln(TF,s);
stmass:=strtofloat(s);

readln(TF,s);
totalobj:=strtoint(s);

closefile(TF);




roele:=-1;

i:=-1;
e:=-1;
while varpar<>e do
begin
inc(i);
case i of
0:begin
durch:=durcha;
st:=sta;
oo:=aa;
roele:=0;
end;
1:begin
durch:=durche;
st:=ste;
oo:=ee;
roele:=1;
end;
2:begin
durch:=durchi;
st:=sti;
oo:=ii;
roele:=2;
end;
3:begin
durch:=durchk;
st:=stk;
oo:=kk;
roele:=3;
end;
4:begin
durch:=durchg;
st:=stg;
oo:=gg;
roele:=4;
end;
5:begin
durch:=durchM;
st:=stM;
oo:=MM;
roele:=5;
end;
6:begin
durch:=durchmass;
st:=stmass;
oo:=massmass;
roele:=6;
end;
end;

if durch<>1
then
inc(e);

end;



setlength(datenpkt,durch);
setlength(hilfzeit,durch);
for i:=0 to durch-1 do
begin
setlength(datenpkt[i].x,u+1);
setlength(hilfzeit[i].x,u+1);
end;

case feat of
0:begin
for i:=0 to durch-1 do
for e:=0 to u do
datenpkt[i].x[e]:=0;
end;
1:begin
for i:=0 to durch-1 do
for e:=0 to u do
datenpkt[i].x[e]:=10000000000;
end;
2:begin
for i:=0 to durch-1 do
for e:=0 to u do
begin
hilfzeit[i].x[e]:=0;
datenpkt[i].x[e]:=0;
end
end;
3:begin
for i:=0 to durch-1 do
for e:=0 to u do
begin
hilfzeit[i].x[e]:=10000000000;
datenpkt[i].x[e]:=10000000000;
end;
end;
4:begin
for i:=0 to durch-1 do
for e:=0 to u do
begin
datenpkt[i].x[e]:=0;
end;
end;
5:begin
for i:=0 to durch-1 do
for e:=0 to u do
datenpkt[i].x[e]:=0;
end;
end;

s:=opendialog1.FileName;
lang:=length(s);
zerlegt:='';
for e:=1 to lang-8 do
zerlegt:=zerlegt+s[e];

zz:=zerlegt;



setlength(verwendbar,gesdurch);
for i:=0 to gesdurch-1 do
verwendbar[i]:=false;





if durcha<fixa
then
fixa:=durcha;

if durche<fixe
then
fixe:=durche;

if durchi<fixi
then
fixi:=durchi;

if durchk<fixk
then
fixk:=durchk;

if durchg<fixg
then
fixg:=durchg;

if durchM<fixM
then
fixM:=durchM;

if durchmass<fixmass
then
fixmass:=durchmass;

i:=-1;
counta:=0;
repeat
counte:=0;
repeat
counti:=0;
repeat
countk:=0;
repeat
countg:=0;
repeat
countM:=0;
repeat
countmass:=0;
repeat

inc(i);




case roele of
0:fixa:=counta+1;
1:fixe:=counte+1;
2:fixi:=counti+1;
3:fixk:=countk+1;
4:fixg:=countg+1;
5:fixM:=countM+1;
6:fixmass:=countmass+1;
end;

if (fixa=counta+1) and (fixe=counte+1) and (fixi=counti+1) and
   (fixk=countk+1) and (fixg=countg+1) and (fixM=countM+1) and (fixmass=countmass+1)
then
verwendbar[i]:=true;

inc(countmass);
until countmass=durchmass;
inc(countM);
until countM=durchM;
inc(countg);
until countg=durchg;
inc(countk);
until countk=durchk;
inc(counti);
until counti=durchi;
inc(counte);
until counte=durche;
inc(counta);
until counta=durcha;

{
verwendbar[0]:=true;

acounta:=0;
acounte:=0;
acounti:=0;
acountk:=0;
acountg:=0;
acountM:=0;
acountmass:=0;

i:=-1;
counta:=0;
repeat
counte:=0;
repeat
counti:=0;
repeat
countk:=0;
repeat
countg:=0;
repeat
countM:=0;
repeat
countmass:=0;
repeat

inc(i);

case roele of
0:begin
if acounta<>counta
then
verwendbar[i]:=true;
end;
1:begin
if acounte<>counte
then
verwendbar[i]:=true;
end;
2:begin
if acounti<>counti
then
verwendbar[i]:=true;
end;
3:begin
if acountk<>countk
then
verwendbar[i]:=true;
end;
4:begin
if acountg<>countg
then
verwendbar[i]:=true;
end;
5:begin
if acountM<>countM
then
verwendbar[i]:=true;
end;
6:begin
if acountmass<>countmass
then
verwendbar[i]:=true;
end;
end;

acounta:=counta;
acounte:=counte;
acounti:=counti;
acountk:=countk;
acountg:=countg;
acountM:=countM;
acountmass:=countmass;

inc(countmass);
until countmass=durchmass;
inc(countM);
until countM=durchM;
inc(countg);
until countg=durchg;
inc(countk);
until countk=durchk;
inc(counti);
until counti=durchi;
inc(counte);
until counte=durche;
inc(counta);
until counta=durcha;
                       }


for i:=0 to durch-1 do
datenpkt[i].x[0]:=oo+i*st;

vorkomm:=0;
dabei:=0;


for i:=1 to gesdurch do
begin
assignfile(TF,zz+'ele'+inttostr(i)+'.dat');
reset(TF);

vorkomm:=vorkomm+dabei;
dabei:=0;

for e:=1 to 8 do
readln(TF,s);

while EOF(TF)=false do
begin
nnn:=0;

for e:=0 to listbox3.Items.count-1 do
begin
readln(TF,s);

if aaa[e]=true
then
begin

inc(nnn);

if (verwendbar[i-1]=true) and (vorkomm<durch)
then
begin

dabei:=1; 

lang:=length(s);
zerlegt:='';
zeit:='';
posi:=0;
lz:=0;


repeat
inc(posi);

if (lz=0) and (s[posi]<>' ')
then
zeit:=zeit+s[posi];

if lz=oele+1
then
begin
if s[posi]<>' '
then
zerlegt:=zerlegt+s[posi];
end;

if s[posi]=' '
then
inc(lz);

until (posi=lang) or (lz=oele+2);

wert:=strtofloat(zerlegt);
zeits:=strtofloat(zeit);

case feat of
0:begin
if wert>datenpkt[vorkomm].x[nnn]
then
datenpkt[vorkomm].x[nnn]:=wert;
end;
1:begin
if wert<datenpkt[vorkomm].x[nnn]
then
datenpkt[vorkomm].x[nnn]:=wert;
end;
2:begin
if wert>hilfzeit[vorkomm].x[nnn]
then
begin
datenpkt[vorkomm].x[nnn]:=zeits;
hilfzeit[vorkomm].x[nnn]:=wert;
end;
end;                
3:begin
if wert<hilfzeit[vorkomm].x[nnn]
then
begin
datenpkt[vorkomm].x[nnn]:=zeits;
hilfzeit[vorkomm].x[nnn]:=wert;
end;
end;
4:begin
if (wert>limitval) and (schonmehr=false)
then
begin
datenpkt[vorkomm].x[nnn]:=zeits;
schonmehr:=true;
end;
end;
5:begin
datenpkt[vorkomm].x[nnn]:=wert;
end;
end;       




end;








end;

end;
end;

closefile(TF);
end;




end;
3:begin     //incli sys

assignfile(TF,opendialog1.FileName);
reset(TF);

readln(TF,s);

readln(TF,s);
ii:=strtofloat(s);

readln(TF,s);
durchi:=strtoint(s);

readln(TF,s);
sti:=strtofloat(s);

readln(TF,s);
totalobj:=strtoint(s);

closefile(TF);

setlength(datenpkt,durchi);
setlength(hilfzeit,durchi);
for i:=0 to durchi-1 do
begin
setlength(datenpkt[i].x,u+1);
setlength(hilfzeit[i].x,u+1);
end;


durch:=durchi;


case feat of
0:begin
for i:=0 to durchi-1 do
for e:=0 to u do
datenpkt[i].x[e]:=0;
end;
1:begin
for i:=0 to durchi-1 do
for e:=0 to u do
datenpkt[i].x[e]:=10000000000;
end;
2:begin
for i:=0 to durchi-1 do
for e:=0 to u do
begin
hilfzeit[i].x[e]:=0;
datenpkt[i].x[e]:=0;
end
end;
3:begin
for i:=0 to durchi-1 do
for e:=0 to u do
begin
hilfzeit[i].x[e]:=10000000000;
datenpkt[i].x[e]:=10000000000;
end;
end;
4:begin
for i:=0 to durchi-1 do
for e:=0 to u do
begin
datenpkt[i].x[e]:=0;
end;
end;
5:begin
for i:=0 to durchi-1 do
for e:=0 to u do
datenpkt[i].x[e]:=0;
end;
end;


s:=opendialog1.FileName;
lang:=length(s);
zerlegt:='';
for e:=1 to lang-8 do
zerlegt:=zerlegt+s[e];

zz:=zerlegt;

for i:=0 to durchi-1 do
datenpkt[i].x[0]:=ii+i*sti;


for i:=1 to durchi do
begin
assignfile(TF,zz+'ele'+inttostr(i)+'.dat');
reset(TF);

for e:=1 to 8 do
readln(TF,s);

while EOF(TF)=false do
begin

nnn:=0;
for e:=0 to totalobj-1 do
begin
readln(TF,s);

if aaa[e]=true
then
begin
inc(nnn);
lang:=length(s);
zerlegt:='';
zeit:='';
posi:=0;
lz:=0;


repeat
inc(posi);

if (lz=0) and (s[posi]<>' ')
then
zeit:=zeit+s[posi];

if lz=oele+1
then
begin
if s[posi]<>' '
then
zerlegt:=zerlegt+s[posi];
end;

if s[posi]=' '
then
inc(lz);

until (posi=lang) or (lz=oele+2);

wert:=strtofloat(zerlegt);
zeits:=strtofloat(zeit);


case feat of
0:begin
if wert>datenpkt[i-1].x[nnn]
then
datenpkt[i-1].x[nnn]:=wert;
end;
1:begin
if wert<datenpkt[i-1].x[nnn]
then
datenpkt[i-1].x[nnn]:=wert;
end;
2:begin
if wert>hilfzeit[i-1].x[nnn]
then
begin
datenpkt[i-1].x[nnn]:=zeits;
hilfzeit[i-1].x[nnn]:=wert;
end;
end;                
3:begin
if wert<hilfzeit[i-1].x[nnn]
then
begin
datenpkt[i-1].x[nnn]:=zeits;
hilfzeit[i-1].x[nnn]:=wert;
end;
end;
4:begin
if (wert>limitval) and (schonmehr=false)
then
begin
datenpkt[i-1].x[nnn]:=zeits;
schonmehr:=true;
end;
end;
5:begin
datenpkt[i-1].x[nnn]:=wert;
end;
end;


end;

end;


end;


Closefile(TF);
end;
                                        

end;
end;



bild.Canvas.FillRect(Rect(0,0,bild.Width,bild.Height));
bild.canvas.Pen.Color:=clblack;
bild.canvas.moveto(20,20);
bild.canvas.LineTo(20,380);
bild.Canvas.LineTo(580,380);


for e:=1 to u do
begin
bild.canvas.MoveTo(round(stretchx*(datenpkt[0].x[0]-x0))+20,round(stretchy*(datenpkt[0].x[e]-y0))+380);
bild.canvas.Pen.Color:=strtoint('$'+form10.listbox1.Items.Strings[e-1]);
for i:=1 to durch-1 do
begin
bild.canvas.lineto(round(stretchx*(datenpkt[i].x[0]-x0))+20,round(stretchy*(datenpkt[i].x[e]-y0))+380);
end;
end;

bild.Canvas.FillRect(Rect(580,0,bild.Width,bild.Height));
bild.canvas.Pen.Color:=clblack;
bild.canvas.moveto(28,20);
bild.canvas.LineTo(19,20);
bild.canvas.LineTo(19,381);
bild.Canvas.LineTo(580,381);
bild.Canvas.LineTo(580,372);

bild.Canvas.TextOut(2,385,'('+edit7.Text+'/'+edit5.Text+')');
bild.canvas.textout(585-length(edit8.text)*5,385,edit8.text);
if length(edit6.Text)<5
then
bild.Canvas.TextOut(11,5,edit6.text)
else
bild.Canvas.TextOut(2,5,edit6.text);


if checkbox2.checked=true
then
begin
for i:=1 to 9 do
begin
bild.Canvas.MoveTo(20+i*56,380);
bild.canvas.LineTo(20+i*56,376);
end;

for i:=1 to 4 do
begin
bild.Canvas.MoveTo(20,20+i*72);
bild.canvas.LineTo(24,20+i*72);
end;

end;


s:=combobox3.items.strings[varpar];

if s='semi-major axis'
then
s:=s+' [AU]'
else
if s='eccentricity'
then
s:=s
else
if s='mass'
then
s:=s+' [Msol]'
else
s:=s+' [°]';


bild.Canvas.TextOut(round(300-2.5*length(s)),385,s);


s:=combobox1.items.strings[feat]+' of '+combobox2.items.strings[oele];


if (feat<2) or (feat>4)
then
begin
if oele=0
then
s:=s+' [AU]';
end
else
s:=s+' [years]';



if (feat<2) or (feat>4)
then
if oele>1
then
s:=s+' [°]';

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


end;

end;

procedure TForm4.Button6Click(Sender: TObject);
begin
form10.Visible:=true;
end;

procedure TForm4.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Form4.Visible:=false;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form4.Visible:=false;
end;

procedure TForm4.Button5Click(Sender: TObject);
var TF:textfile;
    s:string;
    i:integer;
begin
if opendialog2.Execute
then
begin
listbox2.Clear;
groupbox2.Enabled:=false;
groupbox2.Visible:=false;
groupbox1.Enabled:=true;
groupbox1.Visible:=true;
button3.Enabled:=true;
normalf:=true;

assignfile(TF,opendialog2.FileName);
reset(TF);
readln(TF,s);
readln(TF,s);
noo:=strtoint(s);

for i:=1 to noo do
listbox2.Items.Add('object '+inttostr(i));
Closefile(TF);

end;
end;

procedure TForm4.Button1Click(Sender: TObject);
var TF:textfile;
    s:string;
    i,a:integer;
begin
if opendialog1.Execute
then
begin
listbox2.Clear;
Combobox3.Clear;
groupbox1.Enabled:=false;
groupbox1.Visible:=false;
groupbox2.Enabled:=true;
groupbox2.Visible:=true;
button3.Enabled:=true;
normalf:=false;

assignfile(TF,Opendialog1.FileName);
reset(TF);
readln(TF,s);
scantyp:=strtoint(s);

case scantyp of
1:begin

combobox3.Clear;
listbox3.Clear;

for i:=1 to 8 do
readln(TF,s);

readln(TF,s);
if strtoint(s)>1
then
Combobox3.Items.Add('semi-major axis');

readln(TF,s);
if strtoint(s)>1
then
Combobox3.Items.Add('eccentricity');

readln(TF,s);
if strtoint(s)>1
then
Combobox3.Items.Add('inclination');

readln(TF,s);
if strtoint(s)>1
then
Combobox3.Items.Add('argument of perihelion');

readln(TF,s);
if strtoint(s)>1
then
Combobox3.Items.Add('longitude of ascending node');

readln(TF,s);
if strtoint(s)>1
then
Combobox3.Items.Add('mean anomaly');


listbox3.items.Add('massless testbody');



end;
2:begin

combobox3.Clear;
listbox3.Clear;

for i:=1 to 8 do
readln(TF,s);

readln(TF,s);
if strtoint(s)>1
then
Combobox3.Items.Add('semi-major axis');

readln(TF,s);
if strtoint(s)>1
then
Combobox3.Items.Add('eccentricity');

readln(TF,s);
if strtoint(s)>1
then
Combobox3.Items.Add('inclination');

readln(TF,s);
if strtoint(s)>1
then
Combobox3.Items.Add('argument of perihelion');

readln(TF,s);
if strtoint(s)>1
then
Combobox3.Items.Add('longitude of ascending node');

readln(TF,s);
if strtoint(s)>1
then
Combobox3.Items.Add('mean anomaly');

readln(TF,s);
if strtoint(s)>1
then
Combobox3.Items.Add('mass');

for i:=1 to 7 do
readln(TF,s);

readln(TF,s);
a:=strtoint(s);
for i:=1 to a+1 do
listbox3.items.Add('object '+inttostr(i));

end;
3:begin
combobox3.Clear;
listbox3.Clear;

readln(TF,s);
readln(TF,s);
readln(TF,s);

readln(TF,s);
a:=strtoint(s);
for i:=1 to a do
listbox3.items.Add('object '+inttostr(i));


combobox3.Items.Add('inclination of system')

end;
end;

closefile(TF);





end;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
bild:=Tbitmap.Create;
schraeg:=Tbitmap.Create;
verti:=Tbitmap.Create;
bild.Width:=paintbox1.Width;
bild.Height:=paintbox1.Height;
bild.Canvas.Brush.Color:=clwhite;
bild.Canvas.FillRect(Rect(0,0,bild.Width,bild.Height));
normalf:=true;
end;

procedure TForm4.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
paintbox1.Canvas.Draw(0,0,bild);
end;

procedure TForm4.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
paintbox1.Canvas.Draw(0,0,bild);
end;

procedure TForm4.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
paintbox1.Canvas.Draw(0,0,bild);
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
SavePictureDialog1.DefaultExt := GraphicExtension(Tbitmap);
SavePictureDialog1.Filter := GraphicFilter(TBitmap);
if SavePictureDialog1.Execute
then
bild.SaveToFile(SavePictureDialog1.FileName);
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
form16.visible:=true;
end;

end.
