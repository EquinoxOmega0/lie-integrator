unit fenster3D;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, colourpal, GL, GLu, GLext, TGA2, CgWindow,  CgUtils, CgTypes,
  CgGeometry, CgLight, math, StdCtrls, DotWindow, DotUtils, DotVideo, Glut,
  Spin;

type
  TForm17 = class(TCGForm)
    Timer1: TTimer;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    GroupBox4: TGroupBox;
    Panel2: TPanel;
    SaveDialog1: TSaveDialog;
    Label11: TLabel;
    Label10: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Bildschirmvoll;
    procedure Bildschirmnormal;
    procedure getdaten(anz:integer);
    procedure Idle(Sender: TObject; var Done: Boolean);
     procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure rechneposi;
    procedure timecontroll;
    procedure sortiere;
    procedure Panel2Click(Sender: TObject);
    procedure aufnahme;
    procedure FormDestroy(Sender: TObject);
  private
    FTime: Single;    
    FVidRec: TDotVideoRecorder;
    FRecording: Boolean;
  public
    { Public declarations }
  end;

  type
  TProc = FARPROC;
  TExtProcf = procedure (pname: GLenum; param: GLfloat); stdcall;
  TExtProcfv = procedure (pname: GLenum; params: PGLfloat); stdcall;

function wglGetProcAddress(proc: PChar): TProc; stdcall; external 'OPENGL32.DLL';

var
   glPointParameterfEXT: TExtProcf;
  glPointParameterfvEXT: TExtProcfv;
 const
    GL_POINT_SIZE_MIN_EXT            = $8126;
  GL_POINT_SIZE_MAX_EXT            = $8127;
  GL_POINT_FADE_THRESHOLD_SIZE_EXT = $8128;
  GL_DISTANCE_ATTENUATION_EXT      = $8129;
  LD: array [0..3] of GLfloat = (1, 1, 1, 1);
  LA: array [0..3] of GLfloat = (0.5, 0.5, 0.5, 1);
  winkel: GLfloat =(180);
    qua: GLfloat = 0.00005;
     


  type Tdatensaetze=record
  werte:array[0..6] of extended;
  end;

  Type Tdaten1=record
  Planeten:array of Tdatensaetze;
  end;


  type Tausgabe=record
  x,y,z,radius,d:extended;
  rot,gruen,blau:extended;
  end;

  const AEinRjup=2092.5;


var
  Form17: TForm17;

  ddevmode,ddd,dzz:TDevMode;
  dd:integer;
  ddc:hdc;
  dscrx,dscry,dfarb:Cardinal;

  cam: record
    pos: TCGVector;
    pitch, yaw, rot: Single;
  end;
   mpos: TPoint;
   dList,starcount:integer;
   lpos:TCGVector;
    ldir:array[0..5] of TCGVector;

  modecooele,fixobj,anzobj,nsichtbar:integer;
  t0,t1,timefak,timemodifi,zfakt:extended;
  fixaxis,timestandstill:boolean;
  farben:array of integer;
  radien,massen,massensicht:array of extended;
  sichtbar:array of boolean;
  dateiname,pfad:string;
  daten:array of Tdaten1;
  lauf,firstrun:boolean;
  recenttime:extended;
  zeitrechen,ndata,tastinaktiv,standardframerate,framerate:integer;
  ausgabe,backup:array of Tausgabe;
  starx,stary,starz:array[0..255] of extended;
  bgstars:boolean;


implementation

uses ani3D;

{$R *.dfm}


var
  fps: Single = 0;
  fpsc: Integer = 0;

const
  FPS_SMOOVE = 20;

function HasExtension(name: String): Boolean;
var
  exts: PChar;
begin

  exts := PChar(glGetString(GL_EXTENSIONS));
  Result := (Pos(name, String(exts)) <> 0);

end;



  procedure TForm17.Bildschirmvoll;
    begin               //full screen

       ddc:=getdc(0);
dfarb:=1 shl getdevicecaps(ddc, Bitspixel);
releaseDC(0,ddc);
dscrx:=screen.width;
dscry:=screen.height;


ddevmode.dmsize:=Sizeof(TDevmode);
ddevmode.dmdriverextra:=0;
dd:=0;


while EnumDisplaySettings(nil,dd,ddevmode)  do

begin

inc(dd);
if (ddevmode.dmpelswidth=800) and (ddevmode.dmpelsheight=600) and ((1 shl ddevmode.dmbitsperpel)=65536)
then
begin
ddd:=ddevmode;
end;

if (ddevmode.dmpelswidth=dscrx) and (ddevmode.dmpelsheight=dscry) and ((1 shl ddevmode.dmbitsperpel)=dfarb)
then
begin
dzz:=ddevmode;
end;

end;

  changedisplaySettings(Tdevmode(ddd),0);




    end;





    procedure TForm17.Idle(Sender: TObject; var Done: Boolean);
var
  dt, speed: Single;
  v: TCGVector;
begin

   Done := FALSE;

  dt := cgTimeElapsed;
  cgStartTiming;
    
    fps := fps + 1000/dt;
  INC(fpsc);

  if fpsc = FPS_SMOOVE then
  begin
    fpsc := 0;
    fps := fps / FPS_SMOOVE;
    Label3.Caption :='FPS: '+floattostr(roundto(fps,0));;
    fps := 0;
  end;

  if GetAsyncKeyState(VK_SHIFT) <> 0 then speed := 1.5
  else speed := 0.05;
  v := cgVector(0, 0, 0);

  if GetAsyncKeyState(VK_UP) <> 0 then v.z := -dt*speed
  else if GetAsyncKeyState(VK_DOWN) <> 0 then v.z := dt*speed;
  if GetAsyncKeyState(VK_LEFT) <> 0 then v.x := -dt*speed
  else if GetAsyncKeyState(VK_RIGHT) <> 0 then v.x := dt*speed;
  if GetAsyncKeyState(34) <> 0 then v.y := -dt*speed
  else if GetAsyncKeyState(33) <> 0 then v.y := dt*speed;

  cgRotateX(v, cam.pitch*PI/180);
  cgRotateY(v, cam.yaw*PI/180);
  cgRotateZ(v, cam.rot*PI/180);
  cam.pos := cgVecAdd(cam.pos, v);


  Label1.Caption:='position: '+floattostr(roundto(Cam.pos.x/AEinRjup*10,-2))+' / '+floattostr(roundto(Cam.pos.y/AEinRjup*10,-2))+' / '
  +floattostr(roundto(Cam.pos.z/AEinRjup*10,-2));
  Label2.Caption:='view angles: '+floattostr(roundto(Cam.pitch,-2))+'° / '+floattostr(roundto(Cam.yaw,-2))+'° / '+floattostr(roundto(Cam.rot,-2))+'°';
  Paint;
 end;


procedure TForm17.FormPaint(Sender: TObject);
const    att: array [0..2] of Single = (0.25, 0, 1/60);
var i:integer;
Q : PGLUQuadric;
      begin
  if lauf=true
   then
   begin
        
   rechneposi;

   glClear(GL_COLOR_BUFFER_BIT);
   

    glMatrixMode(GL_MODELVIEW);
  glLoadIdentity;


  glRotatef(-cam.pitch, 1, 0, 0);
  glRotatef(-cam.yaw, 0, 1, 0);
  glRotatef(-cam.rot, 0, 0, 1);

  glTranslatef(-cam.pos.x, -cam.pos.y, -cam.pos.z);
  

  

   glLightfv(GL_LIGHT0, GL_POSITION, @LPOS);
      glLightfv(GL_LIGHT1, GL_POSITION, @LPOS);
        glLightfv(GL_LIGHT2, GL_POSITION, @LPOS);
      glLightfv(GL_LIGHT3, GL_POSITION, @LPOS);
        glLightfv(GL_LIGHT4, GL_POSITION, @LPOS);
      glLightfv(GL_LIGHT5, GL_POSITION, @LPOS);

   // 
  

     glenable(GL_CULL_FACE);
         glCullFace(GL_BACK);
   
            Q := gluNewQuadric;
          gluQuadricDrawStyle(Q, GLU_FILL);

  
    glPushMatrix();

  glTranslatef(0, 0, 0);


glPointsize(1);
glPointParameterfvEXT(GL_DISTANCE_ATTENUATION_EXT, @att);
glPointParameterfEXT(GL_POINT_FADE_THRESHOLD_SIZE_EXT, 1);


if bgstars=true
then
begin
glColor3f(1, 1, 1);
glBegin(GL_POINTS);
for i:=0 to 255 do
glVertex3f(starx[i], stary[i], starz[i]);
glEnd;
end;

for i:=0 to nsichtbar-1 do
begin

if (ausgabe[i].radius=0) or (ausgabe[i].d>(314159*ausgabe[i].radius*ausgabe[i].radius))
then
begin

glColor3f(ausgabe[i].rot, ausgabe[i].gruen, ausgabe[i].blau);
glBegin(GL_POINTS);
glVertex3f(ausgabe[i].x, ausgabe[i].y, ausgabe[i].z);
glEnd;

end
else
begin


glColor3f(ausgabe[i].rot, ausgabe[i].gruen, ausgabe[i].blau);
glTranslatef(ausgabe[i].x,ausgabe[i].y,ausgabe[i].z);
gluSphere(Q, ausgabe[i].radius, 16, 16);

glTranslatef(-ausgabe[i].x,-ausgabe[i].y,-ausgabe[i].z);
end;


end;

      glPopMatrix();

         glFinish;

          gluDeleteQuadric(Q);
      
          gldisable(GL_CULL_FACE);




       

  
     PageFlip;
     end;




     if FRecording then                        
  begin

    if FVidRec.Snap then
      Label11.Caption := Format('Captured %d frames', [FVidRec.NumFrames])
    else
      Label11.Caption := 'Error: couldn''t capture frame!';
      
      end;


    end;



        procedure TForm17.Bildschirmnormal;
    begin               //end full screen
      changedisplaySettings(Tdevmode(dzz),0);

    end;


procedure TForm17.Timer1Timer(Sender: TObject);
var i:integer;
begin
if getasynckeystate(27)<>0
then
begin
Form17.Visible:=false;
lauf:=false;

if form7.checkbox2.checked=true
then
Bildschirmnormal;
end;


if getasynckeystate(87)<>0
then
cam.rot:=cam.rot+1;

if getasynckeystate(81)<>0
then
cam.rot:=cam.rot-1;    

if cam.rot > 360 then cam.rot := cam.rot - 360
else if cam.rot < 0 then cam.rot := cam.rot + 360;



if tastinaktiv=0
then
begin

if getasynckeystate(77)<>0
then
begin
aufnahme;
tastinaktiv:=1;
end;

if getasynckeystate(89)<>0
then
begin
dec(framerate);
Label10.Caption:='FPS-rate: '+inttostr(framerate);
tastinaktiv:=1;
end;


if getasynckeystate(88)<>0
then
begin
inc(framerate);
Label10.Caption:='FPS-rate: '+inttostr(framerate);
tastinaktiv:=1;
end;

if getasynckeystate(66)<>0
then
begin
if bgstars=true
then
begin
tastinaktiv:=1;
bgstars:=false;
label9.caption:='background stars: disabled';
end
else
begin
tastinaktiv:=1;
bgstars:=true;
label9.caption:='background: enabled';
end;
end;

if getasynckeystate(70)<>0
then
begin
timemodifi:=timemodifi*2;
tastinaktiv:=1;
end;

if getasynckeystate(83)<>0
then
begin
timemodifi:=timemodifi/2;
tastinaktiv:=1;
end;

if getasynckeystate(82)<>0
then
begin
timemodifi:=-timemodifi;
tastinaktiv:=1;
end;

if getasynckeystate(72)<>0
then
begin

if timestandstill=true
then
timestandstill:=false
else
timestandstill:=true;


tastinaktiv:=1;
end;

if getasynckeystate(73)<>0
then
begin
zfakt:=zfakt/1.1;

label8.Caption:='zoom: '+floattostr(roundto(45/zfakt,-3));

  glMatrixMode(GL_PROJECTION);
  glLoadIdentity;
  gluPerspective(zfakt, (ClientWidth)/(ClientHeight), 1, 1000000);
  glMatrixMode(GL_MODELVIEW);
tastinaktiv:=1;
end;

if getasynckeystate(79)<>0
then
begin
zfakt:=zfakt*1.1;

label8.Caption:='zoom: '+floattostr(roundto(45/zfakt,-3));

  glMatrixMode(GL_PROJECTION);
  glLoadIdentity;
  gluPerspective(zfakt, (ClientWidth)/(ClientHeight), 1, 1000000);
  glMatrixMode(GL_MODELVIEW);
tastinaktiv:=1;
end;





end
else
begin
for i:=0 to 255 do
if getasynckeystate(i)<>0
then
tastinaktiv:=tastinaktiv;


inc(tastinaktiv);
if tastinaktiv=10
then
tastinaktiv:=0;

end;





end;

procedure Tform17.getdaten(anz:integer);
var i,e,counter,lang,lz,posi,fff,rot,gruen,blau,w,zahler:integer;
    TF:TextFile;
    s:string;
    zerlegt:array[0..6] of string;
begin

tastinaktiv:=0;
zfakt:=45;
label8.Caption:='zoom: '+floattostr(roundto(45/zfakt,-3));
standardframerate:=60;

if form7.RadioButton1.checked=true
then
begin
modecooele:=0;
end
else
begin
modecooele:=1;
end;

t0:=strtofloat(form7.Edit1.Text)/365.25;
t1:=strtofloat(form7.Edit2.Text)/365.25;
timefak:=strtofloat(form7.Edit3.Text)/365.25;
recenttime:=t0;
timemodifi:=1;
timestandstill:=false;

fixaxis:=form7.checkbox1.Checked;
fixobj:=form7.ComboBox1.ItemIndex+1;

anzobj:=anz;

setlength(farben,anzobj+1);
setlength(radien,anzobj+1);
setlength(sichtbar,anzobj+1);

for i:=0 to anzobj do
radien[i]:=0;                   //radius 0 entspricht punkten , dann bei 3D grafik berücksichten

if form7.listbox3.Items.Count-1<=anzobj
then
begin      
for i:=0 to form7.ListBox3.Items.Count-1 do
radien[i]:=strtofloat(form7.ListBox3.Items.Strings[i]);
end
else
begin
for i:=0 to anzobj do
radien[i]:=strtofloat(form7.ListBox3.Items.Strings[i]);
end;

for i:=0 to anzobj do
sichtbar[i]:=false;

nsichtbar:=0;

for i:=0 to form7.listbox2.Items.Count-1 do
begin
for e:=0 to anzobj do
if (form7.ListBox2.Items.Strings[i]='object '+inttostr(e))
then
begin
sichtbar[e]:=true;
inc(nsichtbar);
end;
end;


for i:=anzobj to 0 do
if sichtbar[i]=false
then
begin
if i<=fixobj
then
dec(fixobj);
end;

setlength(ausgabe,nsichtbar);
setlength(backup,nsichtbar);

for i:=0 to nsichtbar-1 do
begin
ausgabe[i].radius:=radien[i]/10;
backup[i].radius:=radien[i]/10;
backup[i].x:=0;
backup[i].y:=0;
backup[i].z:=0;
backup[i].d:=0;
end;


for i:=0 to anzobj do
farben[i]:=clwhite;




if form7.radiobutton4.checked=true
then
begin

for i:=0 to anzobj do
farben[i]:=clsilver;

farben[0]:=clyellow;
if anzobj>0
then
farben[1]:=clgray;
if anzobj>1
then
farben[2]:=10000;
if anzobj>2
then
farben[3]:=clblue;
if anzobj>3
then
farben[4]:=clred;
if anzobj>4
then
farben[5]:=clolive;
if anzobj>5
then
farben[6]:=30000;
if anzobj>6
then
farben[7]:=clgreen;
if anzobj>7
then
farben[8]:=clNavy;

end
else if form7.radiobutton5.checked=true
then
begin

for i:=0 to anzobj do
farben[i]:=form7.Shape3.Brush.Color;

for i:=0 to form7.spinedit2.value do
farben[i]:=form7.Shape2.Brush.Color;

for i:=0 to form7.spinedit1.value do
farben[i]:=form7.Shape1.Brush.Color;

end
else
begin

for i:=0 to form10.ListBox1.Items.Count-1 do
farben[i]:=strtoint('$'+form10.listbox1.Items.Strings[i]);


end;

lz:=0;
for i:=0 to anzobj do
begin
if sichtbar[i]=true
then
begin
fff:=farben[i];

blau:=fff div (256*256);
w:=fff mod (256*256);
gruen:=w div 256;
rot:=w mod 256;

ausgabe[lz].rot:=rot/255;
ausgabe[lz].gruen:=gruen/255;
ausgabe[lz].blau:=blau/255;
backup[lz].rot:=rot/255;
backup[lz].gruen:=gruen/255;
backup[lz].blau:=blau/255;

inc(lz);
end;
end;



counter:=0;

dateiname:=form7.opendialog1.filename;

setlength(massen,anzobj+1);
setlength(massensicht,nsichtbar);

if modecooele=1
then
begin


assignfile(TF,dateiname);
reset(TF);
readln(TF,s);
readln(TF,s);
for i:=0 to anzobj do
begin
readln(TF,s);
massen[i]:=strtofloat(s);
end;
closefile(TF);


s:='';
lz:=length(dateiname);
for i:=1 to lz-7 do
s:=s+dateiname[i];

pfad:=s;
dateiname:=pfad+'ele.dat';

end;

assignfile(TF,dateiname);
reset(TF);
for i:=1 to 8 do
readln(TF,s);

while EOF(TF)=false do
begin

inc(counter);
setlength(daten,counter);


setlength(daten[counter-1].Planeten,nsichtbar);

if sichtbar[0]=true
then
begin
daten[counter-1].Planeten[0].werte[0]:=0;
daten[counter-1].Planeten[0].werte[1]:=0;
daten[counter-1].Planeten[0].werte[2]:=0;
daten[counter-1].Planeten[0].werte[3]:=0;
daten[counter-1].Planeten[0].werte[4]:=0;
daten[counter-1].Planeten[0].werte[5]:=0;
daten[counter-1].Planeten[0].werte[6]:=0;
massensicht[0]:=massen[0];
end;

zahler:=0;

for i:=0 to anzobj-1 do
begin
readln(TF,s);


if sichtbar[i+1]=true
then
begin

inc(zahler);

lang:=length(s);

for e:=0 to 6 do
zerlegt[e]:='';

posi:=0;
lz:=0;


repeat
inc(posi);

if s[posi]<>' '
then
zerlegt[lz]:=zerlegt[lz]+s[posi];

if s[posi]=' '
then
inc(lz);

until (posi=lang) or (lz>6);


for e:=0 to 6 do
if sichtbar[0]=true
then
begin
daten[counter-1].Planeten[zahler].werte[e]:=strtofloat(zerlegt[e]);
massensicht[zahler]:=massen[i+1];
end
else
begin
daten[counter-1].Planeten[zahler-1].werte[e]:=strtofloat(zerlegt[e]);
massensicht[zahler-1]:=massen[i+1];
end;

end;
end;

end;

Closefile(TF);

ndata:=counter;


 cam.pos := cgVector(0, 0, 500);
 cam.pitch := -0;
 cam.yaw := 0;
 cam.rot := 0;

 framerate:=10;
 bgstars:=false;

lauf:=true;
firstrun:=true;

end;






procedure TForm17.FormCreate(Sender: TObject);
var i:integer;
    w1,w2,w3:extended;
begin

InitGL;

try
    LoadGlut('glut32.dll');



  //  Context.QuickPF(24, 0, 24, 0);

    FVidRec := TDotVideoRecorder.Create;
    FRecording := FALSE;
    FTime := 0;
     dotStartTiming;
  except on E: Exception do
    begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
      Halt(1);
    end;
    end;


randomize;

for i:=0 to 255 do
begin
w1:=random(3600)/180*PI;
w2:=random(1800)/90*PI;
w3:=random(1000)*50;
starx[i]:=(100000+w3)*sin(w2)*cos(w1);
stary[i]:=(100000+w3)*sin(w2)*sin(w1);
starz[i]:=(100000+w3)*cos(w2);
end;

lauf:=false;

 glMatrixMode(GL_MODELVIEW);


  ldir[0]:=(cgVector(0,0,1));
    ldir[1]:=(cgVector(0,0,-1));
      ldir[2]:=(cgVector(0,1,0));
    ldir[3]:=(cgVector(0,-1,0));
      ldir[4]:=(cgVector(1,0,0));
    ldir[5]:=(cgVector(-1,0,0));
    lpos := cgVector(0,0,0);

    glEnable(GL_LIGHTING);

         glEnable(GL_NORMALIZE);


   glEnable(GL_LIGHT0);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, @LD);
    glLightfv(GL_LIGHT0, GL_AMBIENT, @LA);
    glLightfv(GL_LIGHT0, GL_POSITION, @LPOS);
    glLightfv(GL_LIGHT0, GL_SPOT_CUTOFF, @winkel);
    glLightfv(GL_LIGHT0, GL_SPOT_DIRECTION , @ldir[0]);
      glLightfv(GL_LIGHT0, GL_LINEAR_ATTENUATION , @qua);


      glEnable(GL_LIGHT1);
    glLightfv(GL_LIGHT1, GL_DIFFUSE, @LD);
    glLightfv(GL_LIGHT1, GL_AMBIENT, @LA);
    glLightfv(GL_LIGHT1, GL_POSITION, @LPOS);
    glLightfv(GL_LIGHT1, GL_SPOT_CUTOFF, @winkel);
       glLightfv(GL_LIGHT1, GL_SPOT_DIRECTION , @ldir[1]);
        glLightfv(GL_LIGHT1, GL_LINEAR_ATTENUATION , @qua);


        glEnable(GL_LIGHT2);
    glLightfv(GL_LIGHT2, GL_DIFFUSE, @LD);
    glLightfv(GL_LIGHT2, GL_AMBIENT, @LA);
    glLightfv(GL_LIGHT2, GL_POSITION, @LPOS);
    glLightfv(GL_LIGHT2, GL_SPOT_CUTOFF, @winkel);
       glLightfv(GL_LIGHT2, GL_SPOT_DIRECTION , @ldir[2]);
        glLightfv(GL_LIGHT2, GL_LINEAR_ATTENUATION , @qua);


            glEnable(GL_LIGHT3);
    glLightfv(GL_LIGHT3, GL_DIFFUSE, @LD);
    glLightfv(GL_LIGHT3, GL_AMBIENT, @LA);
    glLightfv(GL_LIGHT3, GL_POSITION, @LPOS);
    glLightfv(GL_LIGHT3, GL_SPOT_CUTOFF, @winkel);
       glLightfv(GL_LIGHT3, GL_SPOT_DIRECTION , @ldir[3]);
         glLightfv(GL_LIGHT3, GL_LINEAR_ATTENUATION , @qua);


              glEnable(GL_LIGHT4);
    glLightfv(GL_LIGHT4, GL_DIFFUSE, @LD);
    glLightfv(GL_LIGHT4, GL_AMBIENT, @LA);
    glLightfv(GL_LIGHT4, GL_POSITION, @LPOS);
    glLightfv(GL_LIGHT4, GL_SPOT_CUTOFF, @winkel);
       glLightfv(GL_LIGHT4, GL_SPOT_DIRECTION , @ldir[4]);
        glLightfv(GL_LIGHT4, GL_LINEAR_ATTENUATION , @qua);


              glEnable(GL_LIGHT5);
    glLightfv(GL_LIGHT5, GL_DIFFUSE, @LD);
    glLightfv(GL_LIGHT5, GL_AMBIENT, @LA);
    glLightfv(GL_LIGHT5, GL_POSITION, @LPOS);
    glLightfv(GL_LIGHT5, GL_SPOT_CUTOFF, @winkel);
       glLightfv(GL_LIGHT5, GL_SPOT_DIRECTION , @ldir[5]);
         glLightfv(GL_LIGHT5, GL_LINEAR_ATTENUATION , @qua);


       glEnable(GL_COLOR_MATERIAL);
    glMaterialfv(GL_FRONT_AND_BACK, GL_AMBIENT, @LA);

   glClearColor(0, 0, 0, 0);

   Resize;

    cam.pos := cgVector(0, 0, AEinRjup);
    cam.pitch := -0;
    cam.yaw := 0;
    GetCursorPos(mpos);
    mpos := ScreenToClient(mpos);




  if not HasExtension('GL_EXT_point_parameters') then
  begin

    MessageDlg('Your OpenGL implementation does not support GL_EXT_point_parameters!',
               mtError, [mbOk], 0);
    Halt(1);
  end;


  glPointParameterfEXT := TExtProcf(wglGetProcAddress(PChar('glPointParameterfEXT')));
  glPointParameterfvEXT := TExtProcfv(wglGetProcAddress(PChar('glPointParameterfvEXT')));


    glViewport(0, 100, ClientWidth, ClientHeight);
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity;
  gluPerspective(45, (ClientWidth)/(ClientHeight), 1, 1000000);
  glMatrixMode(GL_MODELVIEW);


  glEnable(GL_POINT_SMOOTH);
  glEnable(GL_BLEND);
  glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);


 cgStartTiming;
    Application.OnIdle := Idle;


end;

procedure TForm17.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 if ssLeft in Shift then
  begin
    cam.pitch := cam.pitch - (Y - mpos.Y)/5;
    cam.yaw := cam.yaw - (X - mpos.X)/5;

    if cam.pitch > 360 then cam.pitch := cam.pitch - 360
    else if cam.pitch < 0 then cam.pitch := cam.pitch + 360;

    if cam.yaw > 360 then cam.yaw := cam.yaw - 360
    else if cam.yaw < 0 then cam.yaw := cam.yaw + 360;

  end;
  mpos := Point(X, Y);
end;









procedure TForm17.rechneposi;
var i,e,ttt,ie:integer;
    posfix:array[1..6] of extended;
    kugel:array[1..3] of extended;
    orb0,orb1,orb2:array[0..6] of extended;
    rtime,uzeit:extended;
    cosom,sinom,cosgom,singom,cosi,sini:extended;
    px,py,pz,qx,qy,qz,ah,exan,cosex,sinex:extended;
begin    //Bestimmung der Planetenpositionen


Label4.Caption:='visible objects: '+inttostr(nsichtbar);
e:=0;
for i:=0 to nsichtbar-1 do
begin

ausgabe[i]:=backup[i];

if (i=0) and (sichtbar[0]=true)
then
begin
ausgabe[0].x:=0;
ausgabe[0].y:=0;
ausgabe[0].z:=0;
end
else
begin

ttt:=0;
if sichtbar[0]=true
then
begin
while (daten[ttt].Planeten[1].werte[0]<recenttime) and (ttt<ndata-1) do
begin
inc(ttt);
end;
end
else
begin
while (daten[ttt].Planeten[0].werte[0]<recenttime) and (ttt<ndata-1) do
begin
inc(ttt);
end;
end;



if modecooele=0
then          //Koordinaten
begin




ausgabe[e].x:=daten[ttt].Planeten[i].werte[1]*AEinRjup/10;
ausgabe[e].y:=daten[ttt].Planeten[i].werte[2]*AEinRjup/10;
ausgabe[e].z:=daten[ttt].Planeten[i].werte[3]*AEinRjup/10;



if fixaxis=true
then
begin

for ie:=1 to 3 do
posfix[ie]:=daten[ttt].Planeten[fixobj].werte[ie]*AEinRjup/10;

posfix[6]:=sqrt(posfix[1]*posfix[1]+posfix[2]*posfix[2]);

if posfix[2]>=0
then
begin
posfix[4]:=arccos(posfix[1]/posfix[6]);
end
else
begin
posfix[4]:=2*PI-arccos(posfix[1]/posfix[6]);
end;

posfix[5]:=PI/2-arctan(posfix[3]/posfix[6]);


kugel[1]:=ausgabe[e].x*ausgabe[e].x+ausgabe[e].y*ausgabe[e].y+ausgabe[e].z*ausgabe[e].z;
kugel[1]:=sqrt(kugel[1]);

if ausgabe[e].y>=0
then
begin
kugel[2]:=arccos(ausgabe[e].x/sqrt(ausgabe[e].x*ausgabe[e].x+ausgabe[e].y*ausgabe[e].y));
end
else
begin
kugel[2]:=2*PI-arccos(ausgabe[e].x/sqrt(ausgabe[e].x*ausgabe[e].x+ausgabe[e].y*ausgabe[e].y));
end;

kugel[3]:=PI/2-arctan(ausgabe[e].z/sqrt(ausgabe[e].x*ausgabe[e].x+ausgabe[e].y*ausgabe[e].y));

ausgabe[e].x:=kugel[1]*cos(kugel[3]-posfix[5])*cos(kugel[2]-posfix[4]);
ausgabe[e].y:=kugel[1]*cos(kugel[3]-posfix[5])*sin(kugel[2]-posfix[4]);
ausgabe[e].z:=kugel[1]*sin(kugel[3]-posfix[5]);




end;



end
else           //Elemente
begin

if (sichtbar[0]=true) and (i=0)
then
begin

ausgabe[0].x:=0;
ausgabe[0].y:=0;
ausgabe[0].z:=0;

end
else
begin

orb2[0]:=daten[ttt].Planeten[i].werte[0];
orb2[1]:=daten[ttt].Planeten[i].werte[1];
orb2[2]:=daten[ttt].Planeten[i].werte[2];
orb2[3]:=daten[ttt].Planeten[i].werte[3];
orb2[4]:=daten[ttt].Planeten[i].werte[4];
orb2[5]:=daten[ttt].Planeten[i].werte[5];
orb2[6]:=daten[ttt].Planeten[i].werte[6];

         

if ttt-1<0
then
inc(ttt);

orb1[0]:=daten[ttt-1].Planeten[i].werte[0];
orb1[1]:=daten[ttt-1].Planeten[i].werte[1];
orb1[2]:=daten[ttt-1].Planeten[i].werte[2];
orb1[3]:=daten[ttt-1].Planeten[i].werte[3];
orb1[4]:=daten[ttt-1].Planeten[i].werte[4];
orb1[5]:=daten[ttt-1].Planeten[i].werte[5];
orb1[6]:=daten[ttt-1].Planeten[i].werte[6];


if fixaxis=true
then
begin

for ie:=4 to 6 do
begin
posfix[ie]:=daten[ttt].Planeten[fixobj].werte[ie];
orb2[ie]:=orb2[ie]-posfix[ie];
end;


for ie:=4 to 6 do
begin
posfix[ie]:=daten[ttt-1].Planeten[fixobj].werte[ie];
orb1[ie]:=orb1[ie]-posfix[ie];
end;


end;




rtime:=recenttime-orb1[0];
orb0[0]:=orb2[0]-orb1[0];

orb0[1]:=(orb1[1]+orb2[1])/2;

uzeit:=sqrt(4*PI*PI*orb0[1]*orb0[1]*orb0[1]/
(massensicht[i]+massen[0]))/0.01720209895;

uzeit:=uzeit/365.25;

for ie:=1 to 5 do
orb0[ie]:=(orb1[ie]*(1-rtime/orb0[0])+orb2[ie]*rtime/orb0[0]);



uzeit:=trunc(orb0[0]/uzeit)*360;  //anzahl der Umläufe
//uzeit:=trunc(rtime/uzeit)*360;

orb0[6]:=(orb2[6]-orb1[6]);
if orb0[6]<0
then
orb0[6]:=orb0[6]+360;

uzeit:=uzeit+orb0[6];

uzeit:=uzeit*rtime/orb0[0]+orb1[6];

orb0[6]:=uzeit-trunc(uzeit/360)*360;



for ie:=4 to 6 do
orb0[ie]:=orb0[ie]*PI/180;

 
 if (orb0[2]=0)
 then
 orb0[4]:=0;

 if (orb0[3]=0)
 then
 orb0[5]:=0;


 cosom:=cos(orb0[4]);
 sinom:=sin(orb0[4]);
 cosgom:=cos(orb0[5]);
 singom:=sin(orb0[5]);
 cosi:=cos(orb0[3]);
 sini:=sin(orb0[3]);
 px:=cosom*cosgom-sinom*singom*cosi;
 py:=cosom*singom+sinom*cosgom*cosi;
 pz:=sinom*sini;
 qx:=-sinom*cosgom-cosom*singom*cosi;
 qy:=-sinom*singom+cosom*cosgom*cosi;
 qz:=cosom*sini;
 ah:=sqrt((1-orb0[2])/(1+orb0[2]))*tan(orb0[6]/2);
 exan:=2*arctan(ah);
 cosex:=cos(exan);
 sinex:=sin(exan);

 ah:=orb0[1]*sqrt(1-orb0[2]*orb0[2]);
 ausgabe[i].x:=orb0[1]*px*(cosex-orb0[2])+ah*qx*sinex;
 ausgabe[i].y:=orb0[1]*py*(cosex-orb0[2])+ah*qy*sinex;
 ausgabe[i].z:=orb0[1]*pz*(cosex-orb0[2])+ah*qz*sinex;

{ rh:=sqrt(xh1[k]*xh1[k]+xh2[k]*xh2[k]+xh3[k]*xh3[k]);

 bh:=ah*cosex;
 ah:=sqrt(m[1]+m[k])/(sqrt(a[k])*rh);
 vh1[k]:=ah*(-a[k]*px*sinex+bh*qx);
 vh2[k]:=ah*(-a[k]*py*sinex+bh*qy);
 vh3[k]:=ah*(-a[k]*pz*sinex+bh*qz); }

  ausgabe[i].x:=ausgabe[i].x*AEinRjup/10;
  ausgabe[i].y:=ausgabe[i].y*AEinRjup/10;
  ausgabe[i].z:=ausgabe[i].z*AEinRjup/10;

end;




end;


end;


inc(e);
end;

sortiere;

timecontroll;




end;



procedure Tform17.timecontroll;
begin //Realzeit - Darstellungszeit Steurung

if (recenttime>=t1) or (recenttime<t0)
then
begin
timestandstill:=true;
end;


if timestandstill=false
then
recenttime:=recenttime+timefak/standardframerate*timemodifi;

label5.Caption:='now: '+floattostr(roundto(recenttime*365.25,-3))+' [d]';
label6.Caption:='intervall: '+floattostr(roundto(t0*365.25,-3))+' - '+floattostr(roundto(t1*365.25,-3))+' [d]';

if timestandstill=false
then
label7.Caption:='rate: '+floattostr(roundto(1/(timefak*365.25*timemodifi),-6))+' [s/d]'
else
label7.Caption:='rate: 0 [s/d]';




end;

procedure Tform17.sortiere;
var i,e:integer;
    hilf:Tausgabe;
begin         //sortiere nach Entfernung

for i:=0 to nsichtbar-1 do
begin
ausgabe[i].d:=(ausgabe[i].x-cam.pos.x)*(ausgabe[i].x-cam.pos.x)+(ausgabe[i].y-cam.pos.y)*
(ausgabe[i].y-cam.pos.y)+(ausgabe[i].z-cam.pos.z)*(ausgabe[i].z-cam.pos.z);
end;

for i:=nsichtbar-1 downto 0 do
for e:=0 to nsichtbar-1 do
begin
if ausgabe[e].d<ausgabe[e+1].d
then
begin

hilf.x:=ausgabe[e].x;
hilf.y:=ausgabe[e].y;
hilf.z:=ausgabe[e].z;
hilf.d:=ausgabe[e].d;
hilf.Radius:=ausgabe[e].Radius;
hilf.rot:=ausgabe[e].rot;
hilf.gruen:=ausgabe[e].gruen;
hilf.blau:=ausgabe[e].blau;

ausgabe[e].x:=ausgabe[e+1].x;
ausgabe[e].y:=ausgabe[e+1].y;
ausgabe[e].z:=ausgabe[e+1].z;
ausgabe[e].d:=ausgabe[e+1].d;
ausgabe[e].Radius:=ausgabe[e+1].Radius;
ausgabe[e].rot:=ausgabe[e+1].rot;
ausgabe[e].gruen:=ausgabe[e+1].gruen;
ausgabe[e].blau:=ausgabe[e+1].blau;

ausgabe[e+1].x:=hilf.x;
ausgabe[e+1].y:=hilf.y;
ausgabe[e+1].z:=hilf.z;
ausgabe[e+1].d:=hilf.d;
ausgabe[e+1].Radius:=hilf.Radius;
ausgabe[e+1].rot:=hilf.rot;
ausgabe[e+1].gruen:=hilf.gruen;
ausgabe[e+1].blau:=hilf.blau;



end;
end;




end;





procedure TForm17.Panel2Click(Sender: TObject);
begin
aufnahme;
end;


 procedure TForm17.aufnahme;
 begin
 timestandstill:=true;
if not FRecording then
    begin

    if savedialog1.Execute
    then
    begin
      standardframerate:=framerate;
      FVidRec.StartCapture(savedialog1.filename, Self, framerate);
      FRecording := TRUE;
      Panel2.Caption:='stop recording';
      end;
    end
    else begin
      standardframerate:=60;
      Panel2.Caption:='start recording';
      FRecording := FALSE;
      FVidRec.EndCapture;
      end;
 timestandstill:=false;
 end;

procedure TForm17.FormDestroy(Sender: TObject);
begin
FVidRec.Free;
end;

end.
