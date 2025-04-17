unit stabmaps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ExtDlgs, StdCtrls, colouration, stabele, colourpal;

type
  TForm5 = class(TForm)
    PaintBox1: TPaintBox;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    SavePictureDialog1: TSavePictureDialog;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    GroupBox4: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Edit7: TEdit;
    Label7: TLabel;
    Button5: TButton;
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    function getcolour(zkoord:extended):integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type TMMM=record
  masses:array of extended;
  end;

  type Tggg=record
  MMM:array of TMMM
  end;

  type Tkkk=record
  ggg:array of Tggg
  end;

  type Tiii=record
  kkk:array of Tkkk;
  end;

  type Teee=record
  iii:array of Tiii;
  end;

  type Taaa=record
  eee:array of Teee;
  end;

  type TWert=record
  datpkt:array of extended;
  end;

  type Tgrid2=record
  z:array of extended;
  end;

var
  Form5: TForm5;
  bild,schraeg,verti:Tbitmap;
  zz:string;
  scantyp:integer;

implementation



{$R *.dfm}

procedure TForm5.Button4Click(Sender: TObject);
begin
form5.Visible:=false;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form5.Visible:=false;
end;

procedure TForm5.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form5.Visible:=false;
end;

procedure TForm5.Button1Click(Sender: TObject);
var TF:textfile;
    s:string;
    lang,n,i:integer;
begin
if opendialog1.Execute
then
begin


zz:=opendialog1.FileName;
assignfile(TF,opendialog1.filename);
reset(TF);
readln(TF,s);

scantyp:=strtoint(s);

lang:=length(zz);
s:=zz;
zz:='';
for i:=1 to lang-8 do
zz:=zz+s[i];   //Pfad

if scantyp<>3
then
begin
button2.Enabled:=true;

combobox1.Clear;
combobox3.Clear;
combobox7.Clear;


for i:=1 to 8 do
readln(TF,s);

readln(TF,s);
if strtoint(s)>1
then
begin
Combobox1.Items.Add('semi-major axis');
Combobox3.Items.Add('semi-major axis');
end;

readln(TF,s);
if strtoint(s)>1
then
begin
Combobox1.Items.Add('eccentricity');
Combobox3.Items.Add('eccentricity');
end;

readln(TF,s);
if strtoint(s)>1
then
begin
Combobox1.Items.Add('inclination');
Combobox3.Items.Add('inclination');
end;

readln(TF,s);
if strtoint(s)>1
then
begin
Combobox1.Items.Add('argument of perihelion');
Combobox3.Items.Add('argument of perihelion');
end;

readln(TF,s);
if strtoint(s)>1
then
begin
Combobox1.Items.Add('longitude of ascending node');
Combobox3.Items.Add('longitude of ascending node');
end;

readln(TF,s);
if strtoint(s)>1
then
begin
Combobox1.Items.Add('mean anomaly');
Combobox3.Items.Add('mean anomaly');
end;


if scantyp=2
then
begin
readln(TF,s);
if strtoint(s)>1
then
Combobox1.Items.Add('mass');
Combobox3.Items.Add('mass');
end;

case scantyp of
1:begin


for i:=1 to 6 do
readln(TF,s);

readln(TF,s);
n:=strtoint(s);
for i:=1 to n do
combobox7.items.add('object '+inttostr(i));
combobox7.items.add('massless testbody');

end;
2:begin


for i:=1 to 7 do
readln(TF,s);

readln(TF,s);
n:=strtoint(s);
for i:=1 to n+1 do
combobox7.items.add('object '+inttostr(i));


end;
end;




end;

closefile(TF);

end;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
SavePictureDialog1.DefaultExt := GraphicExtension(Tbitmap);
SavePictureDialog1.Filter := GraphicFilter(TBitmap);
if SavePictureDialog1.Execute
then
bild.SaveToFile(SavePictureDialog1.FileName);
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
schraeg:=Tbitmap.Create;
verti:=Tbitmap.Create;
bild:=Tbitmap.create;
bild.height:=paintbox1.height;
bild.width:=paintbox1.width;
bild.canvas.brush.color:=clwhite;
bild.canvas.fillrect(Rect(0,0,paintbox1.width,paintbox1.Height));
end;

procedure TForm5.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
paintbox1.Canvas.Draw(0,0,bild);
end;

procedure TForm5.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
paintbox1.Canvas.Draw(0,0,bild);
end;

procedure TForm5.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
paintbox1.Canvas.Draw(0,0,bild);
end;

procedure TForm5.Image1Click(Sender: TObject);
begin
form11.visible:=true;
end;

procedure TForm5.Button2Click(Sender: TObject);
var xorb,yorb,feat,orbele,obj,anzprorun,gesdurch,totalobj:integer;
    role,lang,e,i,posi,lz,zaehler:integer;
    xx,yy,x,y,z,oo,sto:array[1..2] of extended;
    stretchx,stretchy,stretchz,limitval:extended;
    werte:array of TWert;
    aa,ee,ii,kk,gg,MM,massmass:extended;
    st,sta,ste,sti,stk,stg,stM,stmass:extended;
    durch,durcha,durche,durchi,durchk,durchg,durchM,durchmass:integer;
    counta,counte,counti,countk,countg,countM,countmass:integer;
    acounta,acounte,acounti,acountk,acountg,acountM,acountmass:integer;
    schonmehr:boolean;
    TF:TextFile;
    s,zerlegt,zeit:string;
    aaa,hhh:array of Taaa;
    i1,i2,i3,i4,i5,i6,i7:integer;
    wert,zeits,farbe,pixx,pixy:extended;
    grid:array of TGrid2;
    a0,e0,i0,k0,g0,M0,mass0:integer;
    rele,dd:array[1..2] of integer;
    gfak:array[1..4] of extended;
begin
button3.Enabled:=true;



schonmehr:=false;

yorb:=combobox1.ItemIndex;
xorb:=combobox3.ItemIndex;
feat:=combobox5.itemindex;
orbele:=combobox6.itemindex;
obj:=combobox7.itemindex;




durch:=0;
Durcha:=1;
durche:=1;
durchi:=1;
durchk:=1;
durchg:=1;
durchM:=1;
durchmass:=1;


y[1]:=strtofloat(edit1.text);
y[2]:=strtofloat(edit2.text);
x[1]:=strtofloat(edit3.text);
x[2]:=strtofloat(edit4.text);
z[1]:=strtofloat(edit5.text);
z[2]:=strtofloat(edit6.text);

stretchx:=560/(x[2]-x[1]);
stretchy:=-360/(y[2]-y[1]);
stretchz:=1/(z[2]-z[1]);

limitval:=strtofloat(edit7.Text);

case scantyp of
1:begin

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
durchmass:=1;

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


rele[2]:=-1;

i:=-1;
e:=-1;
while yorb<>e do
begin
inc(i);
case i of
0:begin
dd[2]:=durcha;
oo[2]:=aa;
sto[2]:=sta;
rele[2]:=0;
end;
1:begin
dd[2]:=durche;
oo[2]:=ee;
sto[2]:=ste;
rele[2]:=1;
end;
2:begin
dd[2]:=durchi;
oo[2]:=ii;
sto[2]:=sti;
rele[2]:=2;
end;
3:begin
dd[2]:=durchk;
oo[2]:=kk;
sto[2]:=stk;
rele[2]:=3;
end;
4:begin
dd[2]:=durchg;
oo[2]:=gg;
sto[2]:=stg;
rele[2]:=4;
end;
5:begin
dd[2]:=durchM;
oo[2]:=MM;
sto[2]:=stM;
rele[2]:=5;
end;
end;

if dd[2]<>1
then
inc(e);

end;



rele[1]:=-1;

i:=-1;
e:=-1;
while xorb<>e do
begin
inc(i);
case i of
0:begin
dd[1]:=durcha;
oo[1]:=aa;
sto[1]:=sta;
rele[1]:=0;
end;
1:begin
dd[1]:=durche;
oo[1]:=ee;
sto[1]:=ste;
rele[1]:=1;
end;
2:begin
dd[1]:=durchi;
oo[1]:=ii;
sto[1]:=sti;
rele[1]:=2;
end;
3:begin
dd[1]:=durchk;
oo[1]:=kk;
sto[1]:=stk;
rele[1]:=3;
end;
4:begin
dd[1]:=durchg;
oo[1]:=gg;
sto[1]:=stg;
rele[1]:=4;
end;
5:begin
dd[1]:=durchM;
oo[1]:=MM;
sto[1]:=stM;
rele[1]:=5;
end;
end;

if dd[1]<>1
then
inc(e);

end;





setlength(aaa,durcha);
setlength(hhh,durcha);
for i1:=0 to durcha-1 do
begin
setlength(aaa[i1].eee,durche);
setlength(hhh[i1].eee,durche);
for i2:=0 to durche-1 do
begin
setlength(aaa[i1].eee[i2].iii,durchi);
setlength(hhh[i1].eee[i2].iii,durchi);
for i3:=0 to durchi-1 do
begin
setlength(aaa[i1].eee[i2].iii[i3].kkk,durchk);
setlength(hhh[i1].eee[i2].iii[i3].kkk,durchk);
for i4:=0 to durchk-1 do
begin
setlength(aaa[i1].eee[i2].iii[i3].kkk[i4].ggg,durchg);
setlength(hhh[i1].eee[i2].iii[i3].kkk[i4].ggg,durchg);
for i5:=0 to durchg-1 do
begin
setlength(aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM,durchM);
setlength(hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM,durchM);
for i6:=0 to durchM-1 do
begin
setlength(aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses,1);
setlength(hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses,1);
end;
end;
end;
end;
end;
end;


for i1:=0 to durcha-1 do
for i2:=0 to durche-1 do
for i3:=0 to durchi-1 do
for i4:=0 to durchk-1 do
for i5:=0 to durchg-1 do
for i6:=0 to durchM-1 do
begin

case feat of
0:begin
aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[0]:=0;
hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[0]:=0;
end;
1:begin
aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[0]:=10000000000;
hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[0]:=10000000000;
end;
2:begin
aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[0]:=0;
hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[0]:=0;
end;
3:begin
aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[0]:=10000000000;
hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[0]:=10000000000;
end;
4:begin
aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[0]:=0;
hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[0]:=0;
end;
5:begin
aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[0]:=0;
hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[0]:=0;
end;
end;
end;





counta:=0;
counte:=0;
counti:=0;
countk:=0;
countg:=0;
countM:=0;

acounta:=0;
acounte:=0;
acounti:=0;
acountk:=0;
acountg:=0;
acountM:=0;



for i:=0 to trunc((gesdurch-1)/anzprorun) do
begin
if i<>trunc(gesdurch/anzprorun)
then
assignfile(TF,zz+'ele'+inttostr(i*anzprorun+1)+'-'+inttostr((i+1)*anzprorun)+'.dat')
else
assignfile(TF,zz+'ele'+inttostr(i*anzprorun+1)+'-'+inttostr(gesdurch)+'.dat');

reset(TF);

acounta:=counta;
acounte:=counte;
acounti:=counti;
acountk:=countk;
acountg:=countg;
acountM:=countM;

for e:=1 to 8 do
readln(TF,s);

while EOF(TF)=false do
begin

counta:=acounta;
counte:=acounte;
counti:=acounti;
countk:=acountk;
countg:=acountg;
countM:=acountM;

for e:=1 to totalobj do
readln(TF,s);

for e:=1 to anzprorun do
if (((i*anzprorun)+e)<=gesdurch)
then
begin
readln(TF,s);


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

if lz=orbele+1
then
begin
if s[posi]<>' '
then
zerlegt:=zerlegt+s[posi];
end;

if s[posi]=' '
then
inc(lz);

until (posi=lang) or (lz=orbele+2);

wert:=strtofloat(zerlegt);
zeits:=strtofloat(zeit);

case feat of
0:begin
if wert>aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[0]
then
aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[0]:=wert;
end;
1:begin
if wert<aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[0]
then
aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[0]:=wert;
end;
2:begin
if wert>hhh[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[0]
then
begin
aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[0]:=zeits;
hhh[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[0]:=wert;
end;
end;                
3:begin
if wert<hhh[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[0]
then
begin
aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[0]:=zeits;
hhh[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[0]:=wert;
end;
end;
4:begin
if (wert>limitval) and (schonmehr=false)
then
begin
aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[0]:=zeits;
schonmehr:=true;
end;
end;
5:begin
aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[0]:=wert;
end;
end;       



inc(countM);
if countM=durchM
then
begin
countM:=0;
inc(countg);

if countg=durchg
then
begin
countg:=0;
inc(countk);

if countk=durchk
then
begin
countk:=0;
inc(counti);

if counti=durchi
then
begin
counti:=0;
inc(counte);

if counte=durche
then
begin
counte:=0;
inc(counta);

end;
end;
end;
end;
end;


end;
end;


closefile(TF);
end;


end;
2:begin


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


rele[2]:=-1;

i:=-1;
e:=-1;
while yorb<>e do
begin
inc(i);
case i of
0:begin
dd[2]:=durcha;
oo[2]:=aa;
sto[2]:=sta;
rele[2]:=0;
end;
1:begin
dd[2]:=durche;
oo[2]:=ee;
sto[2]:=ste;
rele[2]:=1;
end;
2:begin
dd[2]:=durchi;
oo[2]:=ii;
sto[2]:=sti;
rele[2]:=2;
end;
3:begin
dd[2]:=durchk;
oo[2]:=kk;
sto[2]:=stk;
rele[2]:=3;
end;
4:begin
dd[2]:=durchg;
oo[2]:=gg;
sto[2]:=stg;
rele[2]:=4;
end;
5:begin
dd[2]:=durchM;
oo[2]:=MM;
sto[2]:=stM;
rele[2]:=5;
end;
6:begin
dd[2]:=durchmass;
oo[2]:=massmass;
sto[2]:=stmass;
rele[2]:=6;
end;
end;

if dd[2]<>1
then
inc(e);

end;



rele[1]:=-1;

i:=-1;
e:=-1;
while xorb<>e do
begin
inc(i);
case i of
0:begin
dd[1]:=durcha;
oo[1]:=aa;
sto[1]:=sta;
rele[1]:=0;
end;
1:begin
dd[1]:=durche;
oo[1]:=ee;
sto[1]:=ste;
rele[1]:=1;
end;
2:begin
dd[1]:=durchi;
oo[1]:=ii;
sto[1]:=sti;
rele[1]:=2;
end;
3:begin
dd[1]:=durchk;
oo[1]:=kk;
sto[1]:=stk;
rele[1]:=3;
end;
4:begin
dd[1]:=durchg;
oo[1]:=gg;
sto[1]:=stg;
rele[1]:=4;
end;
5:begin
dd[1]:=durchM;
oo[1]:=MM;
sto[1]:=stM;
rele[1]:=5;
end;
6:begin
dd[1]:=durchmass;
oo[1]:=massmass;
sto[1]:=stmass;
rele[1]:=6;
end;
end;

if dd[1]<>1
then
inc(e);

end;





setlength(aaa,durcha);
setlength(hhh,durcha);
for i1:=0 to durcha-1 do
begin
setlength(aaa[i1].eee,durche);
setlength(hhh[i1].eee,durche);
for i2:=0 to durche-1 do
begin
setlength(aaa[i1].eee[i2].iii,durchi);
setlength(hhh[i1].eee[i2].iii,durchi);
for i3:=0 to durchi-1 do
begin
setlength(aaa[i1].eee[i2].iii[i3].kkk,durchk);
setlength(hhh[i1].eee[i2].iii[i3].kkk,durchk);
for i4:=0 to durchk-1 do
begin
setlength(aaa[i1].eee[i2].iii[i3].kkk[i4].ggg,durchg);
setlength(hhh[i1].eee[i2].iii[i3].kkk[i4].ggg,durchg);
for i5:=0 to durchg-1 do
begin
setlength(aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM,durchM);
setlength(hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM,durchM);
for i6:=0 to durchM-1 do
begin
setlength(aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses,durchmass);
setlength(hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses,durchmass);
end;
end;
end;
end;
end;
end;


for i1:=0 to durcha-1 do
for i2:=0 to durche-1 do
for i3:=0 to durchi-1 do
for i4:=0 to durchk-1 do
for i5:=0 to durchg-1 do
for i6:=0 to durchM-1 do
for i7:=0 to durchmass-1 do
begin

case feat of
0:begin
aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[i7]:=0;
hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[i7]:=0;
end;
1:begin
aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[i7]:=10000000000;
hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[i7]:=10000000000;
end;
2:begin
aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[i7]:=0;
hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[i7]:=0;
end;
3:begin
aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[i7]:=10000000000;
hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[i7]:=10000000000;
end;
4:begin
aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[i7]:=0;
hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[i7]:=0;
end;
5:begin
aaa[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[i7]:=0;
hhh[i1].eee[i2].iii[i3].kkk[i4].ggg[i5].MMM[i6].masses[i7]:=0;
end;
end;
end;



zaehler:=0;

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

     

inc(zaehler);

assignfile(TF,zz+'ele'+inttostr(zaehler)+'.dat');
reset(TF);

schonmehr:=false;

for e:=1 to 8 do
readln(TF,s);


while EOF(TF)=false do
begin

for e:=1 to totalobj do
readln(TF,s);

readln(TF,s);


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

if lz=orbele+1
then
begin
if s[posi]<>' '
then
zerlegt:=zerlegt+s[posi];
end;

if s[posi]=' '
then
inc(lz);

until (posi=lang) or (lz=orbele+2);

wert:=strtofloat(zerlegt);
zeits:=strtofloat(zeit);

case feat of
0:begin
if wert>aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[countmass]
then
aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[countmass]:=wert;
end;
1:begin
if wert<aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[countmass]
then
aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[countmass]:=wert;
end;
2:begin
if wert>hhh[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[countmass]
then
begin
aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[countmass]:=zeits;
hhh[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[countmass]:=wert;
end;
end;                
3:begin
if wert<hhh[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[countmass]
then
begin
aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[countmass]:=zeits;
hhh[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[countmass]:=wert;
end;
end;
4:begin
if (wert>limitval) and (schonmehr=false)
then
begin
aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[countmass]:=zeits;
schonmehr:=true;
end;
end;
5:begin
aaa[counta].eee[counte].iii[counti].kkk[countk].ggg[countg].MMM[countm].masses[countmass]:=wert;
end;
end;       



end;




 
closefile(TF);

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
  


end;
end;

a0:=form16.SpinEdit1.Value-1;
if a0>=durcha
then
a0:=0;

e0:=form16.SpinEdit2.Value-1;
if e0>=durche
then
e0:=0;

i0:=form16.SpinEdit3.Value-1;
if i0>=durchi
then
i0:=0;

k0:=form16.SpinEdit4.Value-1;
if k0>=durchk
then
k0:=0;

g0:=form16.SpinEdit5.Value-1;
if g0>=durchg
then
g0:=0;

M0:=form16.SpinEdit6.Value-1;
if M0>=durchm
then
M0:=0;

mass0:=form16.SpinEdit7.Value-1;
if mass0>=durchmass
then
mass0:=0;

setlength(grid,dd[1]);
for i:=0 to dd[1]-1 do
setlength(grid[i].z,dd[2]);

i:=0;

repeat

case rele[1] of
0:a0:=i;
1:e0:=i;
2:i0:=i;
3:k0:=i;
4:g0:=i;
5:M0:=i;
6:mass0:=i;
end;

e:=0;

repeat

case rele[2] of
0:a0:=e;
1:e0:=e;
2:i0:=e;
3:k0:=e;
4:g0:=e;
5:M0:=e;
6:mass0:=e;
end;

grid[i].z[e]:=aaa[a0].eee[e0].iii[i0].kkk[k0].ggg[g0].MMM[m0].masses[mass0];
inc(e);
until e=dd[2];
inc(i);
until i=dd[1];


bild.canvas.Brush.Color:=clwhite;
bild.Canvas.FillRect(Rect(0,0,bild.Width,bild.Height));
bild.canvas.Pen.Color:=clblack;


if checkbox3.checked=false
then
begin

for i:=0 to dd[1]-1 do
for e:=0 to dd[2]-1 do
begin
bild.canvas.Brush.Color:=getcolour((grid[i].z[e]-z[1])*stretchz);
xx[1]:=stretchx*((oo[1]+sto[1]*(i-0.5))-x[1])+20;
yy[1]:=stretchy*((oo[2]+sto[2]*(e-0.5))-y[1])+380;
xx[2]:=stretchx*((oo[1]+sto[1]*(i+0.5))-x[1])+20;
yy[2]:=stretchy*((oo[2]+sto[2]*(e+0.5))-y[1])+380;
bild.canvas.FillRect(Rect(round(xx[1]),round(yy[1]),round(xx[2]),round(yy[2])));
end;


end
else
begin

for i:=0 to dd[1]-2 do
for e:=0 to dd[2]-2 do
begin
xx[1]:=stretchx*((oo[1]+sto[1]*(i))-x[1])+20;
yy[1]:=stretchy*((oo[2]+sto[2]*(e))-y[1])+380;
xx[2]:=stretchx*((oo[1]+sto[1]*(i+1))-x[1])+20;
yy[2]:=stretchy*((oo[2]+sto[2]*(e+1))-y[1])+380;
for i1:=0 to round(abs(xx[2]-xx[1])) do
for i2:=0 to round(abs(yy[2]-yy[1])) do
begin
pixx:=i1*(xx[2]-xx[1])/abs(xx[2]-xx[1]);
pixy:=i2*(yy[2]-yy[1])/abs(yy[2]-yy[1]);

gfak[1]:=(xx[2]-xx[1]-pixx)/(xx[2]-xx[1]);
gfak[2]:=(yy[2]-yy[1]-pixy)/(yy[2]-yy[1]);
gfak[3]:=pixx/(xx[2]-xx[1]);
gfak[4]:=pixy/(yy[2]-yy[1]);

farbe:=((grid[i].z[e]-z[1])*gfak[1]*gfak[2]);
farbe:=farbe+((grid[i+1].z[e]-z[1])*gfak[2]*gfak[3]);
farbe:=farbe+((grid[i].z[e+1]-z[1])*gfak[1]*gfak[4]);
farbe:=farbe+((grid[i+1].z[e+1]-z[1])*gfak[3]*gfak[4]);

farbe:=stretchz*farbe;
bild.canvas.Pixels[round(xx[1]+pixx),round(yy[1]+pixy)]:=getcolour(farbe);
end;
end;


end;

bild.canvas.brush.color:=clwhite;
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

bild.Canvas.TextOut(2,385,'('+edit3.Text+'/'+edit1.Text+')');
bild.canvas.textout(585-length(edit4.text)*5,385,edit4.text);
if length(edit2.Text)<5
then
bild.Canvas.TextOut(11,5,edit2.text)
else
bild.Canvas.TextOut(2,5,edit2.text);



     

s:=combobox3.items.strings[xorb];

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



s:=combobox1.items.strings[yorb];


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



if checkbox1.checked=true
then
begin
for i:=1 to 9 do
begin
bild.Canvas.MoveTo(20+i*56,381);
bild.canvas.LineTo(20+i*56,384);
end;

for i:=1 to 4 do
begin
bild.Canvas.MoveTo(19,20+i*72);
bild.canvas.LineTo(16,20+i*72);
end;
                 
end;

if checkbox2.checked=true
then
begin
s:=Combobox5.items.strings[feat]+' of '+Combobox6.items.strings[orbele]+' of '+Combobox7.items.Strings[obj];

if (feat>1) and (feat<5)
then
begin
s:=s+' [years]';
end
else
begin

case orbele of
0:s:=s+' [AU]';
1:s:=s;
2:s:=s+' [°]';
3:s:=s+' [°]';
4:s:=s+' [°]';
5:s:=s+' [°]';
end;

end;

lang:=length(s);
bild.canvas.textout(575-5*lang,2,s);


s:=edit5.Text+edit6.text;
lang:=length(s);

schraeg.Height:=15;
schraeg.width:=5*lang+195;
verti.Height:=5*lang+195;
verti.width:=15;
schraeg.canvas.Brush.Color:=clwhite;
schraeg.canvas.FillRect(rect(0,0,schraeg.width,schraeg.Height));

schraeg.canvas.TextOut(2,2,edit5.text);
s:=edit5.text;
lang:=length(s);
schraeg.Canvas.draw(5*lang+10,4,image1.Picture.Bitmap);
schraeg.canvas.TextOut(5*lang+185,2,edit6.text);
for i:=0 to verti.Height-1 do
for e:=0 to verti.width-1 do
verti.Canvas.Pixels[e,i]:=schraeg.Canvas.Pixels[verti.Height-1-i,e];

bild.canvas.Draw(582,5,verti);

end;





paintbox1.Canvas.Draw(0,0,bild);
end;








procedure TForm5.Button5Click(Sender: TObject);
begin
form16.visible:=true;
end;

function TForm5.getcolour(zkoord:extended):integer;
var i,e,rot,gruen,blau,w,h:integer;
    r,g,b:array[1..2] of integer;
    dr,dg,db:integer;
    farben:array[0..1535] of integer;
    f:array of integer;
begin

getcolour:=0;

if zkoord<0
then
zkoord:=0;

if zkoord>1
then
zkoord:=1;

if Form11.radiobutton1.checked=true
then
begin

for i:=0 to 127 do
farben[i]:=128+i;

for i:=0 to 255 do
farben[i+128]:=255+(i shl 8);

for i:=0 to 255 do
farben[256+128+i]:=(255 shl 8)+255-i;

for i:=0 to 255 do
farben[512+128+i]:=(255 shl 8)+(i shl 16);

for i:=0 to 255 do
farben[768+128+i]:=((255-i) shl 8)+(255 shl 16);

for i:=0 to 255 do
farben[1024+128+i]:=(255 shl 16)+i;

for i:=0 to 127 do
farben[1280+128+i]:=((255-i) shl 16)+(255-i);


if Form11.radiobutton5.checked=true
then
getcolour:=farben[trunc(zkoord*1535)]
else
getcolour:=farben[trunc((1-zkoord)*1535)];



end
else
if Form11.radiobutton2.checked=true
then
begin

b[1]:=Form11.shape1.Brush.Color div (256*256);
w:=Form11.shape1.Brush.Color mod (256*256);
g[1]:=w div 256;
r[1]:=w mod 256;

b[2]:=Form11.shape2.Brush.Color div (256*256);
w:=Form11.shape2.Brush.Color mod (256*256);
g[2]:=w div 256;
r[2]:=w mod 256;

dr:=r[2]-r[1];
dg:=g[2]-g[1];
db:=b[2]-b[1];

rot:=round(r[1]+zkoord*dr);
gruen:=round(g[1]+zkoord*dg);
blau:=round(b[1]+zkoord*db);
getcolour:=(blau shl 16)+ (gruen shl 8 )+ (rot);


end
else
if Form11.radiobutton3.checked=true
then
begin


r[1]:=strtoint(edit1.text);
r[2]:=strtoint(edit2.text);
g[1]:=strtoint(edit3.text);
g[2]:=strtoint(edit4.text);
b[1]:=strtoint(edit5.text);
b[2]:=strtoint(edit6.text);

dr:=r[2]-r[1];
dg:=g[2]-g[1];
db:=b[2]-b[1];

if Form11.radiobutton6.checked=true
then
begin


rot:=round(r[1]+zkoord*dr);
gruen:=round(g[1]+zkoord*dg);
blau:=round(b[1]+zkoord*db);
getcolour:=(blau shl 16)+ (gruen shl 8 )+ (rot);




end
else
begin

if dr<0
then
dec(dr)
else
inc(dr);

if dg<0
then
dec(dg)
else
inc(dg);

if dr<0
then
dec(db)
else
inc(db);


if Form11.checkbox1.checked=false
then
dr:=0;

if Form11.checkbox2.checked=false
then
dg:=0;

if Form11.checkbox3.checked=false
then
db:=0;

h:=abs(dr)+abs(dg)+abs(db);
setlength(f,h);

if Form11.radiobutton9.checked=true
then
begin

if Form11.checkbox1.checked=true
then
for i:=0 to abs(dr)-1 do
f[i]:=round(i*dr/abs(dr)+r[1]);

if Form11.checkbox2.checked=true
then
for i:=0 to abs(dg)-1 do
f[i+abs(dr)]:=(round(i*dg/abs(dg)+g[1]) shl 8);

if Form11.checkbox3.checked=true
then
for i:=0 to abs(db)-1 do
f[i+abs(dr)+abs(dg)]:=(round(i*db/abs(db)+b[1]) shl 16);

end;

if Form11.radiobutton10.checked=true
then
begin

if Form11.checkbox2.checked=true
then
for i:=0 to abs(dg)-1 do
f[i]:=(round(i*dg/abs(dg)+g[1]) shl 8);

if Form11.checkbox3.checked=true
then
for i:=0 to abs(db)-1 do
f[i+abs(dg)]:=(round(i*db/abs(db)+b[1]) shl 16);

if Form11.checkbox1.checked=true
then
for i:=0 to abs(dr)-1 do
f[i+abs(dg)+abs(dg)]:=(round(i*dr/abs(dr)+r[1]));

end;

if Form11.radiobutton11.checked=true
then
begin

if Form11.checkbox3.checked=true
then
for i:=0 to abs(db)-1 do
f[i]:=(round(i*db/abs(db)+b[1]) shl 16);

if Form11.checkbox1.checked=true
then
for i:=0 to abs(dr)-1 do
f[i+abs(db)]:=(round(i*dr/abs(dr)+r[1]));

if Form11.checkbox2.checked=true
then
for i:=0 to abs(dg)-1 do
f[i+abs(dr)+abs(db)]:=(round(i*dg/abs(dg)+g[1]) shl 8);

end;

if Form11.radiobutton12.checked=true
then
begin

if Form11.checkbox3.checked=true
then
for i:=0 to abs(db)-1 do
f[i]:=(round(i*db/abs(db)+b[1]) shl 16);

if Form11.checkbox2.checked=true
then
for i:=0 to abs(dg)-1 do
f[i+abs(db)]:=(round(i*dg/abs(dg)+g[1]) shl 8);

if Form11.checkbox1.checked=true
then
for i:=0 to abs(dr)-1 do
f[i+abs(dg)+abs(db)]:=(round(i*dr/abs(dr)+r[1]));

end;


if Form11.radiobutton13.checked=true
then
begin

if Form11.checkbox2.checked=true
then
for i:=0 to abs(dg)-1 do
f[i]:=(round(i*dg/abs(dg)+g[1]) shl 8);

if Form11.checkbox1.checked=true
then
for i:=0 to abs(dr)-1 do
f[i+abs(dg)]:=(round(i*dr/abs(dr)+r[1]));

if Form11.checkbox3.checked=true
then
for i:=0 to abs(db)-1 do
f[i+abs(dr)+abs(dg)]:=(round(i*db/abs(db)+b[1]) shl 16);

end;

if Form11.radiobutton14.checked=true
then
begin

if Form11.checkbox1.checked=true
then
for i:=0 to abs(dr)-1 do
f[i]:=(round(i*dr/abs(dr)+r[1]));

if Form11.checkbox3.checked=true
then
for i:=0 to abs(db)-1 do
f[i+abs(dr)]:=(round(i*db/abs(db)+b[1]) shl 16);

if Form11.checkbox2.checked=true
then
for i:=0 to abs(dg)-1 do
f[i+abs(dr)+abs(db)]:=(round(i*dg/abs(dg)+g[1]) shl 8);

end;



if h>0
then

getcolour:=f[trunc(zkoord*h)];




end;





end
else
begin


h:=trunc(zkoord*(form10.ListBox1.Items.Count));
w:=strtoint('$'+form10.listbox1.Items.Strings[h]);
getcolour:=w;


end;


end;

end.
