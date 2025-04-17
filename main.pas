unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, math, Gauges, Spin, scans, tabellen,
  diagramme, stabmaps,  ani3D, about, manuel, bugs, exocal, exoeva;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Datei1: TMenuItem;
    Neu1: TMenuItem;
    ffnen1: TMenuItem;
    Speichern1: TMenuItem;
    Beenden1: TMenuItem;
    Hilfe1: TMenuItem;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit7: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Edit8: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    CheckBox1: TCheckBox;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Edit11: TEdit;
    Label19: TLabel;
    Edit12: TEdit;
    Label20: TLabel;
    Edit13: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Button6: TButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    ListBox1: TListBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Scans1: TMenuItem;
    Auswertung1: TMenuItem;
    N2DDarstellung1: TMenuItem;
    N3DDarstellung1: TMenuItem;
    Datenexportieren1: TMenuItem;
    Gauge1: TGauge;
    Label27: TLabel;
    Edit17: TEdit;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    SpinEdit1: TSpinEdit;
    ListBox2: TListBox;
    N3DAnimation1: TMenuItem;
    Label28: TLabel;
    Label29: TLabel;
    Gauge2: TGauge;
    GroupBox5: TGroupBox;
    Edit18: TEdit;
    Button7: TButton;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    SaveDialog2: TSaveDialog;
    shortManuel1: TMenuItem;
    About1: TMenuItem;
    ReportBugs1: TMenuItem;
    Exoplanets1: TMenuItem;
    Calculations1: TMenuItem;
    syntheticradialvelocitycurves1: TMenuItem;
    Label33: TLabel;
    Edit22: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    CheckBox5: TCheckBox;
    Label36: TLabel;
    procedure Beenden1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Lieberechnen;
    function XModulo(a1,a2:extended):extended;
    Procedure Facultaet(ein:integer);
    function EET(ekar,t:extended):extended;
    function PHIT(ekar,t:extended):extended;
    function TURAN(ekar,tt:extended):extended;
    procedure xtoel(mu:extended);
    procedure Konst;
    procedure Mindis;
    procedure laengesetzen;
    procedure Koeff;
    Procedure Lie_Int;
    procedure FAC1;
    procedure Trnsko(K1,K2:integer);
    procedure Trnsel(K1,K2:integer);
    procedure HEBA;
    procedure BAHE(k1,k2:integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    function getindex:integer;
    procedure param;
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Print1;
    procedure Print2;
    procedure Speichern1Click(Sender: TObject);
    procedure ffnen1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Scans1Click(Sender: TObject);
    procedure N2DDarstellung1Click(Sender: TObject);
    procedure N3DDarstellung1Click(Sender: TObject);
    procedure Datenexportieren1Click(Sender: TObject);
    procedure N3DAnimation1Click(Sender: TObject);
    procedure Scannen;
    procedure About1Click(Sender: TObject);
    procedure shortManuel1Click(Sender: TObject);
    procedure ReportBugs1Click(Sender: TObject);
    procedure Calculations1Click(Sender: TObject);
    procedure syntheticradialvelocitycurves1Click(Sender: TObject);
    procedure exoplancal;
    procedure Neu1Click(Sender: TObject);
   // procedure SOS;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type T2dim=Record
  spalte:array of extended;
  end;

  type Ttanga=Record
  x,y:array [0..6] of extended;
  end;

  type T2boolean=Record
  spalte:array of boolean;
  end;

  type T3dim=Record
  zeile:array of T2dim;
  end;

  type THimmelskoerper=Record
  a,e,i,kom,Gom,MA,masse:extended;
  name:String;
  end;

var
  Form1: TForm1;
  Elemente,Koordinaten:Textfile;
  Speicher:File of Extended;
  jaele,jakoord,jaspeicher:boolean;
  speicherint:integer;
  pfad:String;
  PI2,RSQ,Q,SQ:extended;
  ele,x:array [0..7] of extended;
  maxk,maxn,maxmax:integer;
  ko,ko1,ko2,co2,ko5:array of T2dim;
  incl0,incl,nsch,tt:array of extended;
  ignore:array of T2boolean;
  n,nk,nm,n2,nml:integer;
  sw,t,lback,xlim:extended;
  xh1,xh2,xh3,vh1,vh2,vh3,xb1,xb2,xb3,vb1,vb2,vb3:array of extended;
  tanga:array of Ttanga;
  a,e,om,gom,v,m:array of extended;
  Rfak,ks:array of extended;
  stp,swsum,prt,swprt,swak,swakpr,swmini,swmin,swmax,eps:extended;
  dxb1,dxb2,dxb3,rcur:array of T2dim;
  ini,logeps:integer;
  om0,gom0,v0:array of extended;              
  //rmin: array of T2dim;
  qfac:array of Cardinal;
  dx1,dx2,dx3,ddx1,ddx2,ddx3,R2:array of T2dim;
  dsig,dphi,diffx1,diffx2,diffx3:array of T3dim;
  firstrun,listboxfocus:boolean;
  mmm:array of extended;
  noname:integer;
  Planeten,Asteroiden:array of THimmelskoerper;
  bearbeiten,autoprt,steptosmall:boolean;
  emax:extended;
  sicher:integer;
  phi,sig,x1,x2,x3:extended;
  hillfakt:extended;
  RHill:array of extended;

implementation

{$R *.dfm}

procedure TForm1.Beenden1Click(Sender: TObject);
begin
Close;  //Programm beenenden
end;

procedure TForm1.FormCreate(Sender: TObject);
begin                //Startwerte
pfad:='';
noname:=0;
listboxfocus:=true;
bearbeiten:=false;
PI2:=2*PI;
end;


procedure TForm1.Button5Click(Sender: TObject);
var s:string;
    lang:integer;
begin
s:=edit18.text;
lang:=length(s);
if (s[lang]='/') or (s[lang]='\')
then
pfad:=s
else
pfad:=s+'/';
{$I-}
mkdir(pfad);
if listbox1.Items.count>0
then
Lieberechnen;                  //Berechnung starten
end;


procedure TForm1.Lieberechnen;
var genauig:integer;
begin           //Hauptprocedure für Lie-Integration

Gauge1.Progress:=0;
genauig:=strtoint(edit14.Text);

assignfile(Elemente,pfad+edit19.text);
rewrite(Elemente);
assignfile(Koordinaten,pfad+edit20.text);
rewrite(Koordinaten);

    autoprt:=checkbox1.checked;

  t:=0.0172020989500;
 param;

    sicher:=0;


 
 firstrun:=true;
 steptosmall:=false;

 swprt:=0;
 swak:=0;
 swakpr:=0;
// for i:=0 to maxk do
// for e:=0 to maxk do
// Rmin[i].spalte[e]:=100;

 
 konst;
 koeff;

 if (ini=0)
 then
 trnsko(2,NK);

 if (ini<2)
 then
 heba;

 mindis;


 print1;


 repeat

 lie_int;
 mindis;

 swsum:=swsum+swak;
 swprt:=swprt+swak;
 //nstep:=nstep+1;



 if autoprt=true
 then
 prt:=swprt;

 if roundto(swprt,genauig)=roundto(prt,genauig)
 then
 begin
 print2;
 Gauge1.Progress:=round(100*swsum/stp);
 swprt:=0;
 end;


 until (swsum>=stp) or (steptosmall=true);

 if swprt<>0
 then
 Print2;

    

    Gauge1.Progress:=100;
closefile(Elemente);
closefile(Koordinaten);

end;

function Tform1.XModulo(a1,a2:extended):extended;
var c:extended;
begin   //Xmodulo
c:= a1 - Trunc(a1/a2)*a2;
if ((a1<0) and (a2>0) ) or ((a1>0) and (a2<0) )
then
c:=c+a2;
XModulo:=c;
end;


Procedure TForm1.Facultaet(ein:integer);
var i:Cardinal;
begin        //Fakultät
setlength(qfac,ein+1);
qfac[0]:=1;
qfac[1]:=1;

for i:=2 to ein do
qfac[i]:=qfac[i-1]*i;



end;


function TForm1.EET(ekar,t:extended):extended;
var aa,bb,c,fc:extended;
    fertig:boolean;

begin             //EET
aa:=0;
bb:=PI2;
c:=PI;
fc:=PI;
fertig:=false;
EET:=0;

repeat

if t<fc
then
begin
if bb=c
then
begin
EET:=c;
fertig:=true;
end
else
begin
bb:=c;
end;
end
else
begin
if aa=c
then
begin
EET:=c;
fertig:=true;
end
else
begin
aa:=c;
end;
end;

if fertig=false
then
begin
c:=0.5*(aa+bb);
fc:=c-ekar*sin(c);
end;

until fertig=true;

end;


function TForm1.PHIT(ekar,t:extended):extended;
var ee,hphit:extended;
begin    //PHIT
ee:=EET(ekar,t);
hphit:=2*arctan(RSQ*tan(0.5*ee));
if hphit<0
then
hphit:=hphit+PI2;

PHIT:=hphit;

end;

 function Tform1.TURAN(ekar,tt:extended):extended;
 var rest,body,hphi:extended;
 begin //Mittlere Anomalie --> Wahre Anomalie
 Q:=(1-ekar)/(1+ekar);
 SQ:=sqrt(Q);
 RSQ:=1/SQ;
 tt:=tt*PI/180;
 rest:=XMODULO(tt,pi2);
 body:=tt-rest;

 hphi:=PHIT(ekar,rest)+body;
 hphi:=hphi*180/PI;
 if hphi<0
 then
 hphi:=hphi+360;

 TURAN:=hphi;     ///schauen ob es auch tatsächlich zurückgegeben wird

 end;



 procedure Tform1.xtoel(mu:extended);
 var v:array [1..3] of extended;
     i:integer;
     hh,rsquare,dotrv,vsquare,crossi,crossj,crossk,rvet,rsobrea,semia,ecosu,
     esinu,esquare,excen,anomu,anomalia,nodo,sinimod,incli,psubz,qsubz,argumento:extended;
 begin                 //xtoel      x und ele müssen direkt davor Werte zugewewiesen bekommen

 rsquare:=0;
 dotrv:=0;
 vsquare:=0;
 hh:=sqrt(mu);
 
 for i:=1 to 3 do
 begin
 v[i]:=x[i+3]/hh;
 rsquare:=rsquare+x[i]*x[i];
 dotrv:=dotrv+x[i]*v[i];
 vsquare:=vsquare+v[i]*v[i];
 end;

 crossi:=x[2]*v[3]-x[3]*v[2];
 crossj:=x[3]*v[1]-x[1]*v[3];
 crossk:=x[1]*v[2]-x[2]*v[1];

 rvet:=sqrt(rsquare);
 rsobrea:=2-rvet*vsquare;
 semia:=rvet/rsobrea;
 ecosu:=1-rsobrea;
 esinu:=dotrv/sqrt(semia);
 esquare:=ecosu*ecosu+esinu*esinu;
 excen:=sqrt(esquare);
 anomu:=arctan2(esinu,ecosu);
 anomalia:=anomu-excen*sin(anomu);
 nodo:=arctan2(crossi,-crossj);
 sinimod:=sqrt(crossi*crossi+crossj*crossj);
 incli:=arctan2(sinimod,crossk);
 psubz:=x[3]/rvet*cos(anomu)-v[3]*sqrt(semia)*sin(anomu);
 qsubz:=x[3]/rvet*sin(anomu)+v[3]*sqrt(semia)*(cos(anomu)-excen);
 qsubz:=qsubz/sqrt(1-esquare);
 argumento:=arctan2(psubz,qsubz);

 ele[1]:=semia;
 ele[2]:=excen;
 ele[3]:=incli;
 ele[4]:=nodo;
 ele[5]:=argumento;
 ele[6]:=anomalia;
 end;


 procedure Tform1.Konst;
 var i:integer;
 begin         //Konstanten berechnen
 N2:=N-2;
 EPS:=Power(10,LOGEPS);

 Facultaet(n-1);

 for i:=1 to nk do
 begin
// Rmin[i].spalte[i]:=0;
 Ignore[i].spalte[i]:=true;
 end;

 for i:=2 to nk do
 begin
 incl[i]:=incl0[i]*PI/180;
 om[i]:=om0[i]*PI/180;
 gom[i]:=gom0[i]*PI/180;
 v[i]:=v0[i]*PI/180;
 end;

 end;


 procedure TForm1.Mindis;
 var l,k:integer;
     hilfr:extended;
     wiederhole:boolean;
 begin
  wiederhole:=false;
 
 For k:=1 to nm do
 begin

 if hillfakt<>0
 then
 begin
 Rhill[k]:=(xb1[1]-xb1[k])*(xb1[1]-xb1[k])+(xb2[1]-xb2[k])*(xb2[1]-xb2[k])+
 (xb2[1]-xb2[k])*(xb2[1]-xb2[k]);
 Rhill[k]:=Rhill[k]*Power(M[k]/(3*M[1]),2/3)*hillfakt;
 end;

 for l:=k+1 to nk do
 begin
 dxb1[l].spalte[k]:=xb1[l]-xb1[k];
 dxb2[l].spalte[k]:=xb2[l]-xb2[k];
 dxb3[l].spalte[k]:=xb3[l]-xb3[k];
 hilfr:=dxb1[l].spalte[k]*dxb1[l].spalte[k]+dxb2[l].spalte[k]*dxb2[l].spalte[k]+dxb3[l].spalte[k]*dxb3[l].spalte[k];
 rcur[l].spalte[k]:=sqrt(hilfr);

 if hillfakt<>0
 then
 begin
 if hilfr<Rhill[k]
 then
 begin
 XB1[l]:=-15;
 XB2[l]:=-98;
 XB3[l]:=-5.5;
 VB1[l]:=0.1102;
 VB2[l]:=-0.0173;
 VB3[l]:=-0.00173;

 wiederhole:=True;
 end;
 end;

 end;
 end;

 if wiederhole=true
 then
 mindis;

 end;



   procedure TForm1.laengesetzen;
   var i,j:integer;
   begin

   maxk:=nk;
   maxn:=n;
  maxmax:=maxk+maxk;
  
 //setlength(Rmin,maxk+1);
 setlength(Ignore,maxk+1);
 for i:=0 to maxk do
 begin
// setlength(Rmin[i].spalte,maxk+1);
 setlength(Ignore[i].spalte,maxk+1);
 end;

 
 setlength(RHill,maxk+1);


 setlength(mmm,maxk+1);


 setlength(a,maxk+1);
 setlength(e,maxk+1);
 setlength(m,maxk+1);
 setlength(incl,maxk+1);
 setlength(om,maxk+1);
 setlength(gom,maxk+1);
 setlength(v,maxk+1);
 setlength(incl0,maxk+1);
 setlength(om0,maxk+1);
 setlength(gom0,maxk+1);
 setlength(v0,maxk+1);

 setlength(XH1,maxk+1);
 setlength(XH2,maxk+1);
 setlength(XH3,maxk+1);
 setlength(VH1,maxk+1);
 setlength(VH2,maxk+1);
 setlength(VH3,maxk+1);
 setlength(XB1,maxk+1);
 setlength(XB2,maxk+1);
 setlength(XB3,maxk+1);
 setlength(VB1,maxk+1);
 setlength(VB2,maxk+1);
 setlength(VB3,maxk+1);



 setlength(tanga,Maxk+1);

 setlength(rfak,maxn+1);
 setlength(ks,maxk+1);

 setlength(ko,maxn);
 for i:=0 to maxn-1 do
 setlength(ko[i].spalte,maxn);

  setlength(ko1,maxn-1);
  for i:=0 to maxn-2 do
  setlength(ko1[i].spalte,maxn-1);

  setlength(ko2,(maxn div 2)+1);
  for i:=0 to ((maxn div 2)) do
  setlength(ko2[i].spalte,maxn-1);

  setlength(co2,maxn-1);
  for i:=0 to (maxn-2) do
  setlength(co2[i].spalte,(maxn div 2)+1);

  setlength(ko5,maxn-1);
  for i:=0 to maxn-2 do
  setlength(ko5[i].spalte,maxn-1);



  setlength(tt,maxn+1);

  setlength(dxb1,maxk+1);
  setlength(dxb2,maxk+1);
  setlength(dxb3,maxk+1);
  setlength(rcur,maxk+1);
  for i:=0 to maxk do
  begin
  setlength(dxb1[i].spalte,maxk+1);
  setlength(dxb2[i].spalte,maxk+1);
  setlength(dxb3[i].spalte,maxk+1);
  setlength(rcur[i].spalte,maxk+1);
  end;

  setlength(dx1,maxk+1);
  setlength(dx2,maxk+1);
  setlength(dx3,maxk+1);
  setlength(r2,maxk+1);
  for i:=0 to maxk do
  begin
  setlength(dx1[i].spalte,maxk+1);
  setlength(dx2[i].spalte,maxk+1);
  setlength(dx3[i].spalte,maxk+1);
  setlength(r2[i].spalte,maxk+1);
  end;


  setlength(ddx1,maxn+1);
  setlength(ddx2,maxn+1);
  setlength(ddx3,maxn+1);
  for i:=0 to maxn do
  begin
  setlength(ddx1[i].spalte,maxk+1);
  setlength(ddx2[i].spalte,maxk+1);
  setlength(ddx3[i].spalte,maxk+1);
  end;


  setlength(dsig,maxn-2);
  
  for i:=0 to maxn-3 do
  setlength(dsig[i].zeile,maxk+1);

  for i:=0 to maxn-3 do
  for j:=0 to maxk do
  setlength(dsig[i].zeile[j].spalte,maxk+1);

  setlength(dphi,maxn-1);
  setlength(diffx1,maxn-1);
  setlength(diffx2,maxn-1);
  setlength(diffx3,maxn-1);

  for i:=0 to maxn-2 do
  begin
  setlength(dphi[i].zeile,maxk+1);
  setlength(diffx1[i].zeile,maxk+1);
  setlength(diffx2[i].zeile,maxk+1);
  setlength(diffx3[i].zeile,maxk+1);
  end;

  for i:=0 to maxn-2 do
  for j:=0 to maxk do
  begin
  setlength(dphi[i].zeile[j].spalte,maxk+1);
  setlength(diffx1[i].zeile[j].spalte,maxk+1);
  setlength(diffx2[i].zeile[j].spalte,maxk+1);
  setlength(diffx3[i].zeile[j].spalte,maxk+1);
  end;


  
 end;



  procedure Tform1.Koeff;
  var i,j,i1,j1:integer;
  begin           //Berechnung der Koeffizienten

  for i:=0 to n-2 do
  begin
  KO[0].spalte[i]:=1;
  KO[i].spalte[i]:=1;
  end;

  for i:=2 to n-2 do
  for j:=1 to i-1 do
  KO[j].spalte[i]:=KO[j-1].spalte[i-1]+KO[j].spalte[i-1];

  for i:=0 to n-3 do
  KO1[i].spalte[i]:=3;

  for i:=0 to n-4 do
  KO1[0].spalte[i+1]:=KO1[0].spalte[i]+2;

  for i:=2 to n-3 do
  for j:=1 to i-1 do
  KO1[j].spalte[i]:=KO1[j-1].spalte[i-1]+KO1[j].spalte[i-1];

  i1:=0;
  j1:=-1;

  i:=0;
  while i<=n-3 do
  begin
  
  i1:=i1+1;
  j1:=j1+2;

  for j:=0 to i1-1 do
  CO2[i].spalte[j]:=KO[i1+j].spalte[j1];

  i:=i+2;
  end;



  j1:=-1;

  i:=1;
  while i<=n-3 do
  begin
  
  j1:=j1+1;

  CO2[i].spalte[0]:=KO[j1+1].spalte[i];
  CO2[i].spalte[j1+1]:=KO[i].spalte[i];

  for j:=1 to j1 do
  CO2[i].spalte[j]:=KO[j1+1+j].spalte[i+1];


  i:=i+2;
  end;



  for j:=0 to n-3 do
  for i:=0 to ((n-2)div 2) do
  KO2[i].spalte[j]:=CO2[j].spalte[i];

  end;




  

  Procedure Tform1.Lie_Int;
  var maxddx,maxddt,AB:extended;
      norckw,nmak,k,l,i,i1,i2,j,j1,j2,ny:integer;
      abbruch:boolean;
  begin
       //Lie-Reihen Berechnung
  if firstrun=true
  then
  begin
     phi:=0;
    sig:=0;
    x1:=0;
    x2:=0;
    x3:=0;
    firstrun:=false;
    end;

    swmin:=999;
    swmax:=0;
    maxddx:=0;
    maxddt:=0;
    norckw:=0;




  for k:=1 to nm do
  for l:=k+1 to nk do
  begin
  R2[l].spalte[k]:=-1/(RCUR[l].spalte[k]*RCUR[l].spalte[k]);
  DPHI[0].zeile[l].spalte[k]:=1/RCUR[l].spalte[k]*R2[l].spalte[k];
  ignore[k].spalte[l]:=ignore[l].spalte[k];

  diffx1[0].zeile[l].spalte[k]:=DXB1[l].spalte[k];
  diffx2[0].zeile[l].spalte[k]:=DXB2[l].spalte[k];
  diffx3[0].zeile[l].spalte[k]:=DXB3[l].spalte[k];

  end;

  for k:=1 to nk do
  begin
  DDX1[1].spalte[k]:=VB1[k];
  DDX2[1].spalte[k]:=VB2[k];
  DDX3[1].spalte[k]:=VB3[k];

  end;


  for i:=0 to n2 do
  begin

  i1:=i+1;
  i2:=i+2;
  j1:=i1 div 2;
  j2:=i1-j1;

  for k:=1 to nm do
  begin
  nmak:=nm;
  if (k<=norckw)
  then
  nmak:=norckw;

  abbruch:=false;

  for l:=k+1 to nk do
  begin

  if (ignore[l].spalte[k]=true)
  then
  abbruch:=true;
  
  if abbruch=false
  then         
  begin



  if (i<>n2)
  then
  begin
  diffx1[i1].zeile[l].spalte[k]:=ddx1[i1].spalte[l]-ddx1[i1].spalte[k];
  diffx2[i1].zeile[l].spalte[k]:=ddx2[i1].spalte[l]-ddx2[i1].spalte[k];
  diffx3[i1].zeile[l].spalte[k]:=ddx3[i1].spalte[l]-ddx3[i1].spalte[k];



  
  for j:=0 to j1 do
  begin
  sig:=sig+KO2[j].spalte[i]*(diffx1[j1-j].zeile[l].spalte[k]*diffx1[j2+j].zeile[l].spalte[k]
  +diffx2[j1-j].zeile[l].spalte[k]*diffx2[j2+j].zeile[l].spalte[k]+
  diffx3[j1-j].zeile[l].spalte[k]*diffx3[j2+j].zeile[l].spalte[k]);
  end;

  Dsig[i].zeile[l].spalte[k]:=sig;


  for j:=0 to i do
  phi:=phi+KO1[j].spalte[i]*Dphi[i-j].zeile[l].spalte[k]*dsig[j].zeile[l].spalte[k];



  dphi[i1].zeile[l].spalte[k]:=R2[l].spalte[k]*phi;  


  end;  //1

               
  for j:=0 to i do
  begin
  AB:=KO[j].spalte[i]*dphi[j].zeile[l].spalte[k];
  x1:=x1-AB*diffx1[i-j].zeile[l].spalte[k];
  x2:=x2-AB*diffx2[i-j].zeile[l].spalte[k];
  x3:=x3-AB*diffx3[i-j].zeile[l].spalte[k];
  end;      

  DX1[k].spalte[l]:=-x1;
  DX2[k].spalte[l]:=-x2;
  DX3[k].spalte[l]:=-x3;

  DX1[l].spalte[k]:=x1;
  DX2[l].spalte[k]:=x2;
  DX3[l].spalte[k]:=x3;

  sig:=0;
  phi:=0;
  x1:=0;
  x2:=0;
  x3:=0;

  end;
  end;      //140

  abbruch:=false;
  for l:=1 to nmak do
  begin

  if (ignore[l].spalte[k]=true)
  then
  abbruch:=true;

  if abbruch=false
  then
  begin
  x1:=x1+m[l]*dx1[l].spalte[k];
  x2:=x2+m[l]*dx2[l].spalte[k];
  x3:=x3+m[l]*dx3[l].spalte[k];
  end;
  end;


  DDX1[i2].spalte[k]:=x1;
  DDX2[i2].spalte[k]:=x2;
  DDX3[i2].spalte[k]:=x3;

  x1:=0;
  x2:=0;
  x3:=0;

  end;    //130

  for k:=nm+1 to nk do
  begin

  for l:=1 to nm do
  begin
  x1:=x1+m[l]*dx1[l].spalte[k];
  x2:=x2+m[l]*dx2[l].spalte[k];
  x3:=x3+m[l]*dx3[l].spalte[k];
  end;

  DDX1[i2].spalte[k]:=x1;
  DDX2[i2].spalte[k]:=x2;
  DDX3[i2].spalte[k]:=x3;

  x1:=0;
  x2:=0;
  x3:=0;

  end;   //170


  for k:=1 to nk do
  begin
  maxddx:=max(maxddx,max(abs(ddx1[i2].spalte[k]),max(abs(ddx2[i2].spalte[k]),abs(ddx3[i2].spalte[k]))));

  if ((maxddx-maxddt)>=0)
  then
  NY:=I1;                    

  maxddt:=maxddx;
  
  end;
                   
  
  end;      //120

  SW:=Power((EPS*qfac[NY]/Maxddx),(1/NY));
  SWAK:=SW/T;
  
  if (SWAK<SWMINI)
  then
  begin
  SWAK:=SWMINI;
  if checkbox5.checked=true
  then
  begin
  steptosmall:=true;
  MessageDlg('Step smaller than minimal step! - Program aborted.', mtInformation,
      [mbOk], 0);
  end;
  end;

  SWMIN:=min(SWMIN,SWAK);
  SWMAX:=max(SWMAX,SWAK);

  if (swsum+swak>stp)
  then
  begin
  swakpr:=swak;
  swak:=stp-swsum;
  sw:=t*swak;
  end;

  if (swprt+swak>prt)
  then
  begin
  swakpr:=swak;
  swak:=prt-swprt;
  sw:=t*swak;
  end;

  fac1;

  for k:=1 to nk do
  for j:=1 to n-1 do
  begin
  XB1[k]:=XB1[k]+TT[j]*DDX1[j].spalte[k];
  XB2[k]:=XB2[k]+TT[j]*DDX2[j].spalte[k];
  XB3[k]:=XB3[k]+TT[j]*DDX3[j].spalte[k];

  VB1[k]:=VB1[k]+TT[j]*DDX1[j+1].spalte[k];
  VB2[k]:=VB2[k]+TT[j]*DDX2[j+1].spalte[k];
  VB3[k]:=VB3[k]+TT[j]*DDX3[j+1].spalte[k];
  end;




  end;

 procedure Tform1.FAC1;
 var i:integer;
 begin         //FAC1
 for i:=1 to N-1 do
 TT[i]:=Power(sw,i)/qfac[i];
 end;


 procedure Tform1.Trnsko(K1,K2:integer);
 var k:integer;
     cosom,sinom,cosgom,singom,cosi,sini:extended;
     px,py,pz,qx,qy,qz,ah,bh,rh,exan,cosex,sinex:extended;
 begin                 //koord und geschw aus Bahnelementen


 for k:=k1 to k2 do
 begin
 
 if (E[k]=0)
 then
 OM[k]:=0;

 if (incl[k]=0)
 then
 GOM[k]:=0;


 cosom:=cos(om[k]);
 sinom:=sin(om[k]);
 cosgom:=cos(gom[k]);
 singom:=sin(gom[k]);
 cosi:=cos(incl[k]);
 sini:=sin(incl[k]);
 px:=cosom*cosgom-sinom*singom*cosi;
 py:=cosom*singom+sinom*cosgom*cosi;
 pz:=sinom*sini;
 qx:=-sinom*cosgom-cosom*singom*cosi;
 qy:=-sinom*singom+cosom*cosgom*cosi;
 qz:=cosom*sini;
 ah:=sqrt((1-e[k])/(1+e[k]))*tan(v[k]/2);
 exan:=2*arctan(ah);
 cosex:=cos(exan);
 sinex:=sin(exan);

 ah:=a[k]*sqrt(1-e[k]*e[k]);
 xh1[k]:=a[k]*px*(cosex-e[k])+ah*qx*sinex;
 xh2[k]:=a[k]*py*(cosex-e[k])+ah*qy*sinex;
 xh3[k]:=a[k]*pz*(cosex-e[k])+ah*qz*sinex;
 rh:=sqrt(xh1[k]*xh1[k]+xh2[k]*xh2[k]+xh3[k]*xh3[k]);

 bh:=ah*cosex;
 ah:=sqrt(m[1]+m[k])/(sqrt(a[k])*rh);
 vh1[k]:=ah*(-a[k]*px*sinex+bh*qx);
 vh2[k]:=ah*(-a[k]*py*sinex+bh*qy);
 vh3[k]:=ah*(-a[k]*pz*sinex+bh*qz);

 end;




 end;


 procedure Tform1.Trnsel(K1,K2:integer);
 var grad,cappaq:extended;
     k:integer;
 begin        //Bahnelemente aus heliozent koord

 grad:=180/PI;


 for k:=k1 to k2 do
 begin


 cappaq:=m[1]+m[k];
 x[1]:=xh1[k];
 x[2]:=xh2[k];
 x[3]:=xh3[k];
 x[4]:=vh1[k];
 x[5]:=vh2[k];
 x[6]:=vh3[k];



 xtoel(cappaq);

 a[k]:=ele[1];
 e[k]:=ele[2];
 incl[k]:=ele[3]*grad;
 om[k]:=ele[4]*grad;

 if (om[k]<0)
 then
 om[k]:=om[k]+360;

 gom[k]:=ele[5]*grad;

 if (gom[k]<0)
 then
 gom[k]:=gom[k]+360;

 mmm[k]:=ele[6]*grad;

 if (mmm[k]<0)
 then
 mmm[k]:=mmm[k]+360;
 

 end;



 end;


 procedure Tform1.HEBA;
 var XS1,XS2,XS3,VS1,VS2,VS3,GM:extended;
     k:integer;
 begin             //Heliozentrisch - baryzentrisch
 xh1[1]:=0;
 xh2[1]:=0;
 xh3[1]:=0;
 vh1[1]:=0;
 vh2[1]:=0;
 vh3[1]:=0;

 XS1:=0;
 XS2:=0;
 XS3:=0;
 VS1:=0;
 VS2:=0;
 VS3:=0;

 GM:=0;

 for k:=1 to nm do
 GM:=GM+m[k];

 for k:=1 to nm do
 begin
 XS1:=XS1+m[k]*xh1[k];
 XS2:=XS2+m[k]*xh2[k];
 XS3:=XS3+m[k]*xh3[k];
 VS1:=VS1+m[k]*vh1[k];
 VS2:=VS2+m[k]*vh2[k];
 VS3:=VS3+m[k]*vh3[k];
 end;

 XS1:=XS1/GM;
 XS2:=XS2/GM;
 XS3:=XS3/GM;

 VS1:=VS1/GM;
 VS2:=VS2/GM;
 VS3:=VS3/GM;

 for k:=1 to nk do
 begin
 xb1[k]:=xh1[k]-xs1;
 xb2[k]:=xh2[k]-xs2;
 xb3[k]:=xh3[k]-xs3;
 vb1[k]:=vh1[k]-vs1;
 vb2[k]:=vh2[k]-vs2;
 vb3[k]:=vh3[k]-vs3;
 end;



 end;


 procedure Tform1.BAHE(k1,k2:integer);
 var k:integer;
 begin                       //Bare in Helio

 for k:=k1 to k2 do
 begin
 XH1[k]:=XB1[k]-XB1[1];
 XH2[k]:=XB2[k]-XB2[1];
 XH3[k]:=XB3[k]-XB3[1];
 VH1[k]:=VB1[k]-VB1[1];
 VH2[k]:=VB2[k]-VB2[1];
 VH3[k]:=VB3[k]-VB3[1];
 end;


 end;




procedure TForm1.Button1Click(Sender: TObject);
var Masse0:extended;
begin
bearbeiten:=false;
button4.Enabled:=false;

if (edit1.text<>'') and (edit2.text<>'') and (edit3.text<>'') and (edit4.text<>'')
and (edit5.text<>'') and (edit6.text<>'') and (edit7.text<>'')
then
begin

Masse0:=strtofloat(edit7.Text);



if (edit8.text='')
then
begin

if masse0<>0
then
begin
listbox1.items.add('planet '+inttostr(noname));
inc(noname);
end
else
begin
listbox2.items.add('asteroid '+inttostr(noname));
inc(noname);
end;

end
else
begin

if masse0<>0
then
listbox1.items.add(edit8.Text)
else
listbox2.items.add(edit8.Text);

end;


if masse0<>0
then
begin
setlength(Planeten,listbox1.Items.Count);

Planeten[listbox1.Items.Count-1].a:=strtofloat(edit1.Text);
Planeten[listbox1.Items.Count-1].e:=strtofloat(edit2.Text);
Planeten[listbox1.Items.Count-1].i:=strtofloat(edit3.Text);
Planeten[listbox1.Items.Count-1].kom:=strtofloat(edit4.Text);
Planeten[listbox1.Items.Count-1].Gom:=strtofloat(edit5.Text);
Planeten[listbox1.Items.Count-1].MA:=strtofloat(edit6.Text);
Planeten[listbox1.Items.Count-1].masse:=strtofloat(edit7.Text);
Planeten[listbox1.Items.Count-1].name:=listbox1.Items.Strings[listbox1.Items.Count-1];
end
else
begin
setlength(Asteroiden,listbox2.Items.Count);

Asteroiden[listbox2.Items.Count-1].a:=strtofloat(edit1.Text);
Asteroiden[listbox2.Items.Count-1].e:=strtofloat(edit2.Text);
Asteroiden[listbox2.Items.Count-1].i:=strtofloat(edit3.Text);
Asteroiden[listbox2.Items.Count-1].kom:=strtofloat(edit4.Text);
Asteroiden[listbox2.Items.Count-1].Gom:=strtofloat(edit5.Text);
Asteroiden[listbox2.Items.Count-1].MA:=strtofloat(edit6.Text);
Asteroiden[listbox2.Items.Count-1].masse:=strtofloat(edit7.Text);
Asteroiden[listbox2.Items.Count-1].name:=listbox2.Items.Strings[listbox2.Items.Count-1];
end;

edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
edit7.Text:='';
edit8.Text:='';

end;
end;


function Tform1.getindex:integer;
var a,i:integer;
begin

a:=-1;
for i:=0 to listbox1.Items.Count-1 do
begin
if listbox1.Selected[i]=true
then
a:=i;
end;

getindex:=a;

end;

procedure TForm1.Button2Click(Sender: TObject);
var i,hhh:integer;
begin
bearbeiten:=false;
button4.Enabled:=false;
hhh:=-1;


if listboxfocus=true
then
begin

for i:=0 to listbox1.Items.Count-1 do
if listbox1.Selected[i]=true
then
hhh:=i;

if hhh<>-1
then
begin

for i:=listbox1.items.Count-1 downto hhh+1 do
begin
Planeten[i-1]:=Planeten[i];
end;

listbox1.Items.Delete(hhh);
setlength(Planeten,listbox1.Items.Count);

end;
end
else
begin

for i:=0 to listbox2.Items.Count-1 do
if listbox2.Selected[i]=true
then
hhh:=i;

if hhh<>-1
then
begin

for i:=listbox2.items.Count-1 downto hhh+1 do
begin
Asteroiden[i-1]:=Asteroiden[i];
end;

listbox2.Items.Delete(hhh);
setlength(Asteroiden,listbox2.Items.Count);

end;
end;

end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
bearbeiten:=false;
button4.Enabled:=false;
listboxfocus:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
var hhh,i:integer;
begin
if bearbeiten=false
then
begin

hhh:=-1;

if listboxfocus=true
then
begin

for i:=0 to listbox1.Items.Count-1 do
if listbox1.Selected[i]=true
then
hhh:=i;


if hhh<>-1
then
begin
bearbeiten:=true;
button4.Enabled:=true;
Edit1.text:=floattostr(Planeten[hhh].a);
Edit2.text:=floattostr(Planeten[hhh].e);
Edit3.text:=floattostr(Planeten[hhh].i);
Edit4.text:=floattostr(Planeten[hhh].kom);
Edit5.text:=floattostr(Planeten[hhh].Gom);
Edit6.text:=floattostr(Planeten[hhh].MA);
Edit7.text:=floattostr(Planeten[hhh].masse);
Edit8.text:=Planeten[hhh].name;

end;

end
else
begin

for i:=0 to listbox2.Items.Count-1 do
if listbox2.Selected[i]=true
then
hhh:=i;


if hhh<>-1
then
begin
bearbeiten:=true;
button4.Enabled:=true;
Edit1.text:=floattostr(Asteroiden[hhh].a);
Edit2.text:=floattostr(Asteroiden[hhh].e);
Edit3.text:=floattostr(Asteroiden[hhh].i);
Edit4.text:=floattostr(Asteroiden[hhh].kom);
Edit5.text:=floattostr(Asteroiden[hhh].Gom);
Edit6.text:=floattostr(Asteroiden[hhh].MA);
Edit7.text:=floattostr(Asteroiden[hhh].masse);
Edit8.text:=Asteroiden[hhh].name;

end;

end;

end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var hhh,i:integer;
begin



if bearbeiten=true
then
begin
hhh:=-1;

if listboxfocus=true
then
begin

for i:=0 to listbox1.Items.Count-1 do
if listbox1.Selected[i]=true
then
hhh:=i;

if strtofloat(edit7.Text)<>0
then
begin

Planeten[hhh].a:=strtofloat(edit1.Text);
Planeten[hhh].e:=strtofloat(edit2.Text);
Planeten[hhh].i:=strtofloat(edit3.Text);
Planeten[hhh].kom:=strtofloat(edit4.Text);
Planeten[hhh].Gom:=strtofloat(edit5.Text);
Planeten[hhh].MA:=strtofloat(edit6.Text);
Planeten[hhh].masse:=strtofloat(edit7.Text);
if edit8.text=''
then
begin
edit8.text:='Planet '+inttostr(noname);
inc(noname);
end;

Planeten[hhh].name:=edit8.Text;
listbox1.Items.Strings[hhh]:=edit8.text;
end
else
MessageDlg('Sorry, cannot change a massive into a mass less object!', mtInformation, [mbOk], 0);


end
else
begin

for i:=0 to listbox2.Items.Count-1 do
if listbox2.Selected[i]=true
then
hhh:=i;

if strtofloat(edit7.Text)=0
then
begin

Asteroiden[hhh].a:=strtofloat(edit1.Text);
Asteroiden[hhh].e:=strtofloat(edit2.Text);
Asteroiden[hhh].i:=strtofloat(edit3.Text);
Asteroiden[hhh].kom:=strtofloat(edit4.Text);
Asteroiden[hhh].Gom:=strtofloat(edit5.Text);
Asteroiden[hhh].MA:=strtofloat(edit6.Text);
Asteroiden[hhh].masse:=strtofloat(edit7.Text);
if edit8.text=''
then
begin
edit8.text:='Planet '+inttostr(noname);
inc(noname);
end;

Asteroiden[hhh].name:=edit8.Text;
listbox2.Items.Strings[hhh]:=edit8.text;
end
else
MessageDlg('Sorry, cannot change a mass less into a massive object!', mtInformation, [mbOk], 0);

end;

edit1.Text:='';
edit2.Text:='';
edit3.Text:='';
edit4.Text:='';
edit5.Text:='';
edit6.Text:='';
edit7.Text:='';
edit8.Text:='';
end;

bearbeiten:=false;
button4.Enabled:=false;
end;



procedure Tform1.param;
var tinv:extended;
    i:integer;
begin            //Parameter Einlesen

Tinv:=1/T;

stp:=strtofloat(edit9.Text);
if radiobutton2.checked=true
then
stp:=stp*365.25
else if radiobutton3.checked=true
then
stp:=stp*365.25*1000000;

prt:=strtofloat(edit10.text);

if radiobutton4.checked=true
then
INI:=0
else if radiobutton5.checked=true
then
INI:=1
else
INI:=2;

n:=strtoint(edit11.text);

logeps:=strtoint(edit12.text);

swmini:=strtofloat(edit13.text)*power(10,strtoint(edit14.text));

swsum:=strtofloat(edit15.text);

//nstep:=strtofloat(edit16.text);

emax:=strtofloat(edit17.Text);

hillfakt:=strtofloat(edit22.Text);
hillfakt:=hillfakt*hillfakt;

jaele:=checkbox2.checked;
jakoord:=checkbox3.checked;
jaspeicher:=checkbox4.checked;
speicherint:=spinedit1.value;




NML:=listbox2.items.Count;
NM:=listbox1.Items.Count;
NK:=NML+NM;

laengesetzen;

 for i:=0 to maxk do
 begin
 XH1[i]:=0;
 XH2[i]:=0;
 XH3[i]:=0;
 VH1[i]:=0;
 VH2[i]:=0;
 VH3[i]:=0;
 end;

case ini of
0:begin

for i:=1 to nm do
begin
a[i]:=planeten[i-1].a;
e[i]:=planeten[i-1].e;
incl0[i]:=planeten[i-1].i;
Om0[i]:=planeten[i-1].kom;
Gom0[i]:=planeten[i-1].gom;
V0[i]:=planeten[i-1].MA;
M[i]:=planeten[i-1].masse;

V0[i]:=Turan(e[i],V0[i]);
end;

for i:=nm+1 to nk do
begin
a[i]:=Asteroiden[i-nm-1].a;
e[i]:=Asteroiden[i-nm-1].e;
incl0[i]:=Asteroiden[i-nm-1].i;
Om0[i]:=Asteroiden[i-nm-1].kom;
Gom0[i]:=Asteroiden[i-nm-1].gom;
V0[i]:=Asteroiden[i-nm-1].MA;
M[i]:=Asteroiden[i-nm-1].masse;

V0[i]:=Turan(e[i],V0[i]);
end;


end;
1:begin

for i:=1 to nm do
begin

XH1[i]:=planeten[i-1].a;
XH2[i]:=planeten[i-1].e;
XH3[i]:=planeten[i-1].i;
VH1[i]:=planeten[i-1].kom;
VH2[i]:=planeten[i-1].gom;
VH3[i]:=planeten[i-1].MA;
m[i]:=planeten[i-1].masse;

VH1[i]:=VH1[i]*tinv;
VH2[i]:=VH2[i]*tinv;
VH3[i]:=VH3[i]*tinv;

end;

for i:=nm+1 to nk do
begin

XH1[i]:=Asteroiden[i-nm-1].a;
XH2[i]:=Asteroiden[i-nm-1].e;
XH3[i]:=Asteroiden[i-nm-1].i;
VH1[i]:=Asteroiden[i-nm-1].kom;
VH2[i]:=Asteroiden[i-nm-1].gom;
VH3[i]:=Asteroiden[i-nm-1].MA;
m[i]:=Asteroiden[i-nm-1].masse;

VH1[i]:=VH1[i]*tinv;
VH2[i]:=VH2[i]*tinv;
VH3[i]:=VH3[i]*tinv;

end;

end;
2:begin


for i:=1 to nm do
begin
XB1[i]:=planeten[i-1].a;
XB2[i]:=planeten[i-1].e;
XB3[i]:=planeten[i-1].i;
VB1[i]:=planeten[i-1].kom;
VB2[i]:=planeten[i-1].gom;
VB3[i]:=planeten[i-1].MA;
M[i]:=planeten[i-1].masse;

VB1[i]:=VB1[i]*tinv;
VB2[i]:=VB2[i]*tinv;
VB3[i]:=VB3[i]*tinv;
end;

for i:=nm+1 to nk do
begin
XB1[i]:=Asteroiden[i-nm-1].a;
XB2[i]:=Asteroiden[i-nm-1].e;
XB3[i]:=Asteroiden[i-nm-1].i;
VB1[i]:=Asteroiden[i-nm-1].kom;
VB2[i]:=Asteroiden[i-nm-1].gom;
VB3[i]:=Asteroiden[i-nm-1].MA;
M[i]:=Asteroiden[i-nm-1].masse;

VB1[i]:=VB1[i]*tinv;
VB2[i]:=VB2[i]*tinv;
VB3[i]:=VB3[i]*tinv;
end;

end;
end;


end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
Label1.caption:='a:';
Label2.caption:='e:';
Label3.caption:='i:';
Label25.visible:=false;
Label26.Visible:=false;
Label4.visible:=true;
Label5.Visible:=true;
Label4.caption:='w:';
Label5.caption:='W:';
Label6.caption:='M:';
Label7.Caption:='AU';
Label24.caption:='';
Label8.Caption:='°';
Label9.Caption:='°';
Label10.Caption:='°';
Label11.Caption:='°';
Label12.Caption:='m:';
Label13.Caption:='Msol';
Label14.caption:='name:';
end;

procedure TForm1.RadioButton5Click(Sender: TObject);
begin
Label1.caption:='X1:';
Label2.caption:='X2:';
Label3.caption:='X3:';
Label4.visible:=false;
Label5.Visible:=false;
Label25.visible:=true;
Label26.Visible:=true;
Label25.caption:='V1:';
Label26.caption:='V2:';
Label6.caption:='V2:';
Label7.Caption:='AU';
Label24.caption:='AU';
Label8.Caption:='AU';
Label9.Caption:='AU/d';
Label10.Caption:='AU/d';
Label11.Caption:='AU/d';
Label12.Caption:='m:';
Label13.Caption:='Msol';
Label14.caption:='name:';
end;

procedure TForm1.RadioButton6Click(Sender: TObject);
begin
Label1.caption:='X1:';
Label2.caption:='X2:';
Label3.caption:='X3:';
Label4.visible:=false;
Label5.Visible:=false;
Label25.visible:=true;
Label26.Visible:=true;
Label25.caption:='V1:';
Label26.caption:='V2:';
Label6.caption:='V2:';
Label7.Caption:='AU';
Label24.caption:='AU';
Label8.Caption:='AU';
Label9.Caption:='AU/d';
Label10.Caption:='AU/d';
Label11.Caption:='AU/d';
Label12.Caption:='m:';
Label13.Caption:='Msol';
Label14.caption:='name:';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
radiobutton1.checked:=true;
Edit9.Text:='365250000';
Edit10.Text:='36525';
Checkbox1.Checked:=false;
edit11.text:='12';
edit12.text:='-11';
edit13.text:='1';
edit14.text:='-11';
edit15.text:='0';
edit17.text:='0.8';
edit22.text:='1';
Checkbox2.Checked:=true;
Checkbox3.Checked:=true;
Checkbox4.Checked:=true;
Checkbox5.Checked:=true;
spinedit1.Value:=10;
end;


procedure TForm1.Print1;
begin         //Ausgabe in Datei erste

Writeln(Elemente,'number of objects(excl. sun):');
Writeln(Elemente,inttostr(NK-1));
Writeln(Elemente,'length '+floattostr(stp)+' d');
Writeln(Elemente,'print step '+floattostr(prt)+' d');
Writeln(Elemente,'number pf Lie-terms: '+inttostr(n));
Writeln(Elemente,'Log-EPS: '+inttostr(logeps));
Writeln(Elemente,'minimal step: '+floattostr(swmini));

Writeln(Koordinaten,'number of objects(excl. sun):');
Writeln(Koordinaten,inttostr(NK-1));
Writeln(Koordinaten,'length '+floattostr(stp)+' d');
Writeln(Koordinaten,'print step '+floattostr(prt)+' d');
Writeln(Koordinaten,'number of Lie-terms: '+inttostr(n));
Writeln(Koordinaten,'Log-EPS: '+inttostr(logeps));
Writeln(Koordinaten,'minimal step: '+floattostr(swmini));

Writeln(Elemente,'time  a  e  i  som  Lom  M');
Writeln(Koordinaten,'time  x  y  z  vx  vy  vz');


Print2;

end;

procedure TForm1.Print2;
var STSUM:extended;
    k:integer;
begin         //Ausgabe in Datei

STSUM:=SWSUM/365.25;

Bahe(2,NK);
Trnsel(2,NK);    ///mmm wird berechnet

for k:=2 to NK do
begin
if (e[k]>emax) and (M[k]=0)
then                 //Zu große Exzentrizität
begin
XB1[k]:=-15;
XB2[k]:=-98;
XB3[k]:=-5.5;
VB1[k]:=0.1102;
VB2[k]:=-0.0173;
VB3[k]:=-0.00173;
end;

if jaele=true
then
begin
Write(Elemente,floattostr(stsum)+' ');
Write(Elemente,floattostr(a[k])+' ');
Write(Elemente,floattostr(e[k])+' ');
Write(Elemente,floattostr(incl[k])+' ');
Write(Elemente,floattostr(om[k])+' ');
Write(Elemente,floattostr(gom[k])+' ');
Write(Elemente,floattostr(mmm[k])+' ');
Writeln(Elemente,' ');
end;

if jakoord=true
then
begin
Write(Koordinaten,floattostr(stsum)+' ');
Write(Koordinaten,floattostr(XH1[k])+' ');
Write(Koordinaten,floattostr(XH2[k])+' ');
Write(Koordinaten,floattostr(XH3[k])+' ');
Write(Koordinaten,floattostr(VH1[k]*t)+' ');
Write(Koordinaten,floattostr(VH2[k]*t)+' ');
Write(Koordinaten,floattostr(VH3[k]*t)+' ');
Writeln(Koordinaten,' ');
end;

end;


if jaspeicher=true
then
begin
inc(sicher);
if sicher=speicherint
then
begin
sicher:=0;
for k:=2 to NK do
begin
assignfile(Speicher,pfad+edit21.text);
rewrite(Speicher);
Write(Speicher,xh1[k]);
Write(Speicher,xh2[k]);
Write(Speicher,xh3[k]);
Write(Speicher,vh1[k]);
Write(Speicher,vh2[k]);
Write(Speicher,vh3[k]);
Write(Speicher,m[k]);
closefile(Speicher);
end;
end;
end;



end;



procedure TForm1.Speichern1Click(Sender: TObject);
var F:Textfile;
    s:string;
    i:integer;
begin                   //Werte speichern

if Savedialog1.Execute
then
begin
assignfile(F,savedialog1.FileName);
rewrite(F);

Writeln(F,edit9.text);
if radiobutton1.checked=true
then
s:='1'
else if radiobutton2.checked=true
then
s:='2'
else
s:='3';

Writeln(F,s);

Writeln(F,edit10.text);

if checkbox1.checked=true
then
s:='1'
else
s:='0';

Writeln(F,s);

Writeln(F,edit11.text);

Writeln(F,edit12.text);

Writeln(F,edit13.text);

Writeln(F,edit14.text);

Writeln(F,edit15.text);

Writeln(F,'0');

Writeln(F,edit17.text);

Writeln(F,edit22.text);

if checkbox2.checked=true
then
s:='1'
else
s:='0';

Writeln(F,s);

if checkbox3.checked=true
then
s:='1'
else
s:='0';

Writeln(F,s);

if checkbox4.checked=true
then
s:='1'
else
s:='0';

Writeln(F,s);

if checkbox5.checked=true
then
s:='1'
else
s:='0';

Writeln(F,s);

s:=inttostr(spinedit1.Value);

Writeln(F,s);

if radiobutton4.checked=true
then
s:='1'
else if radiobutton5.checked=true
then
s:='2'
else
s:='3';

Writeln(F,s);

s:=edit18.text;
Writeln(F,s);

s:=edit19.text;
Writeln(F,s);

s:=edit20.text;
Writeln(F,s);

s:=edit21.text;
Writeln(F,s);


s:=inttostr(listbox1.items.count);
Writeln(F,s);

for i:=0 to listbox1.Items.Count-1 do
begin

s:=Planeten[i].name;
Writeln(F,s);
s:=floattostr(Planeten[i].a);
Writeln(F,s);
s:=floattostr(Planeten[i].e);
Writeln(F,s);
s:=floattostr(Planeten[i].i);
Writeln(F,s);
s:=floattostr(Planeten[i].kom);
Writeln(F,s);
s:=floattostr(Planeten[i].Gom);
Writeln(F,s);
s:=floattostr(Planeten[i].MA);
Writeln(F,s);
s:=floattostr(Planeten[i].masse);
Writeln(F,s);

end;


s:=inttostr(listbox2.items.count);
Writeln(F,s);

for i:=0 to listbox2.Items.Count-1 do
begin

s:=Asteroiden[i].name;
Writeln(F,s);
s:=floattostr(Asteroiden[i].a);
Writeln(F,s);
s:=floattostr(Asteroiden[i].e);
Writeln(F,s);
s:=floattostr(Asteroiden[i].i);
Writeln(F,s);
s:=floattostr(Asteroiden[i].kom);
Writeln(F,s);
s:=floattostr(Asteroiden[i].Gom);
Writeln(F,s);
s:=floattostr(Asteroiden[i].MA);
Writeln(F,s);
s:=floattostr(Asteroiden[i].masse);
Writeln(F,s);

end;




CloseFile(F);
end;

end;

procedure TForm1.ffnen1Click(Sender: TObject);
var F:Textfile;
    s:string;
    i,iii:integer;
begin             //Werte laden


if Opendialog1.Execute
then
begin

assignfile(F,Opendialog1.FileName);
reset(F);

Readln(F,s);
edit9.text:=s;

Readln(F,s);
if s='1'
then
radiobutton1.checked:=true
else if s='2'
then
radiobutton2.checked:=true
else
radiobutton3.checked:=true;

Readln(F,s);
edit10.text:=s;

Readln(F,s);
if s='1'
then
checkbox1.checked:=true
else
checkbox1.checked:=false;

Readln(F,s);
edit11.text:=s;

Readln(F,s);
edit12.text:=s;

Readln(F,s);
edit13.text:=s;

Readln(F,s);
edit14.text:=s;

Readln(F,s);
edit15.text:=s;

Readln(F,s);


Readln(F,s);
edit17.text:=s;

Readln(F,s);
edit22.text:=s;

Readln(F,s);
if s='1'
then
checkbox2.checked:=true
else
checkbox2.checked:=false;

Readln(F,s);
if s='1'
then
checkbox3.checked:=true
else
checkbox3.checked:=false;

Readln(F,s);
if s='1'
then
checkbox4.checked:=true
else
checkbox4.checked:=false;

Readln(F,s);
if s='1'
then
checkbox5.checked:=true
else
checkbox5.checked:=false;

Readln(F,s);
spinedit1.Value:=strtoint(s);



Readln(F,s);
if s='1'
then
radiobutton4.checked:=true
else if s='2'
then
radiobutton5.checked:=true
else
radiobutton6.checked:=true;



Readln(F,s);
edit18.text:=s;

Readln(F,s);
edit19.text:=s;

Readln(F,s);
edit20.text:=s;

Readln(F,s);
edit21.text:=s;



listbox1.Clear;

Readln(F,s);
iii:=strtoint(s);

setlength(Planeten,iii);

for i:=0 to iii-1 do
begin


Readln(F,s);
Planeten[i].name:=s;
listbox1.Items.Add(s);

Readln(F,s);
Planeten[i].a:=strtofloat(s);

Readln(F,s);
Planeten[i].e:=strtofloat(s);

Readln(F,s);
Planeten[i].i:=strtofloat(s);

Readln(F,s);
Planeten[i].kom:=strtofloat(s);

Readln(F,s);
Planeten[i].gom:=strtofloat(s);

Readln(F,s);
Planeten[i].MA:=strtofloat(s);

Readln(F,s);
Planeten[i].masse:=strtofloat(s);

end;


Listbox2.clear;

Readln(F,s);
iii:=strtoint(s);

setlength(Asteroiden,iii);

for i:=0 to iii-1 do
begin


Readln(F,s);
Asteroiden[i].name:=s;
listbox2.Items.Add(s);

Readln(F,s);
Asteroiden[i].a:=strtofloat(s);

Readln(F,s);
Asteroiden[i].e:=strtofloat(s);

Readln(F,s);
Asteroiden[i].i:=strtofloat(s);

Readln(F,s);
Asteroiden[i].kom:=strtofloat(s);

Readln(F,s);
Asteroiden[i].gom:=strtofloat(s);

Readln(F,s);
Asteroiden[i].MA:=strtofloat(s);

Readln(F,s);
Asteroiden[i].masse:=strtofloat(s);

end;


CloseFile(F);

end;

end;

procedure TForm1.ListBox2Click(Sender: TObject);
begin
bearbeiten:=false;
button4.Enabled:=false;
listboxfocus:=false;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
if savedialog2.Execute
then
begin
edit18.Text:=savedialog2.FileName;
end;
end;

procedure TForm1.Scans1Click(Sender: TObject);
begin
Form2.visible:=true;
end;

procedure TForm1.N2DDarstellung1Click(Sender: TObject);
begin
Form3.Visible:=true;
end;

procedure TForm1.N3DDarstellung1Click(Sender: TObject);
begin
Form4.Visible:=true;
end;

procedure TForm1.Datenexportieren1Click(Sender: TObject);
begin
Form5.Visible:=true;
end;

procedure TForm1.N3DAnimation1Click(Sender: TObject);
begin
Form7.Visible:=true;
end;

procedure TForm1.Scannen;
var s:string;
lang,i,anzprorun,totalrun,schondabei,inthisrun,hhhhh,zaehler:integer;
aa,ee,ii,kk,gg,MM,massmass,winkel:extended;                       
sta,ste,sti,stk,stg,stM,stmass:extended;
durcha,durche,durchi,durchk,durchg,durchM,durchmass:integer;
counta,counte,counti,countk,countg,countM,countmass:integer;
speichermass:array of extended;
jetztdatei:string;
infodat:TextFile;
begin                  //Scanne in Bahnelementen

s:=form2.edit1.text;
lang:=length(s);
if (s[lang]='/') or (s[lang]='\')
then
pfad:=s
else
pfad:=s+'\';
{$I-}
mkdir(pfad);

assignfile(infodat,pfad+'info.dat');
rewrite(infodat);





if form2.RadioButton1.checked=true      //masselos
then
begin
writeln(infodat,'1');

aa:=strtofloat(form2.Edit2.text);
ee:=strtofloat(form2.Edit4.text);
ii:=strtofloat(form2.Edit6.text);
kk:=strtofloat(form2.Edit8.text);
gg:=strtofloat(form2.Edit10.text);
MM:=strtofloat(form2.Edit12.text);

durcha:=form2.SpinEdit1.Value;
durche:=form2.SpinEdit2.Value;
durchi:=form2.SpinEdit3.Value;
durchk:=form2.SpinEdit4.Value;
durchg:=form2.SpinEdit5.Value;
durchM:=form2.SpinEdit6.Value;

sta:=(strtofloat(form2.Edit3.Text)-strtofloat(form2.edit2.Text))/(form2.SpinEdit1.Value-1);
ste:=(strtofloat(form2.Edit5.Text)-strtofloat(form2.edit4.Text))/(form2.SpinEdit2.Value-1);
sti:=(strtofloat(form2.Edit7.Text)-strtofloat(form2.edit6.Text))/(form2.SpinEdit3.Value-1);
stk:=(strtofloat(form2.Edit9.Text)-strtofloat(form2.edit8.Text))/(form2.SpinEdit4.Value-1);
stg:=(strtofloat(form2.Edit11.Text)-strtofloat(form2.edit10.Text))/(form2.SpinEdit5.Value-1);
stM:=(strtofloat(form2.Edit13.Text)-strtofloat(form2.edit12.Text))/(form2.SpinEdit6.Value-1);

if form2.checkbox1.checked=false
then
begin
sta:=0;
durcha:=1;
end;
if form2.checkbox2.checked=false
then
begin
ste:=0;
durche:=1;
end;
if form2.checkbox3.checked=false
then
begin
sti:=0;
durchi:=1;
end;
if form2.checkbox4.checked=false
then
begin
stk:=0;
durchk:=1;
end;
if form2.checkbox5.checked=false
then
begin
stg:=0;
durchg:=1;
end;
if form2.checkbox6.checked=false
then
begin
stM:=0;
durchM:=1;
end;

anzprorun:=form2.SpinEdit8.Value;

totalrun:=durcha*durche*durchi*durchk*durchg*durchM;

if Form2.CheckBox8.checked=true
then
anzprorun:=totalrun;

if totalrun<anzprorun
then
anzprorun:=totalrun;


s:=inttostr(totalrun);
writeln(infodat,s);
s:=inttostr(anzprorun);
writeln(infodat,s);

s:=floattostr(aa);
writeln(infodat,s);
s:=floattostr(ee);
writeln(infodat,s);
s:=floattostr(ii);
writeln(infodat,s);
s:=floattostr(kk);
writeln(infodat,s);
s:=floattostr(gg);
writeln(infodat,s);
s:=floattostr(MM);
writeln(infodat,s);

s:=inttostr(durcha);
writeln(infodat,s);
s:=inttostr(durche);
writeln(infodat,s);
s:=inttostr(durchi);
writeln(infodat,s);
s:=inttostr(durchk);
writeln(infodat,s);
s:=inttostr(durchg);
writeln(infodat,s);
s:=inttostr(durchM);
writeln(infodat,s);

s:=floattostr(sta);
writeln(infodat,s);
s:=floattostr(ste);
writeln(infodat,s);
s:=floattostr(sti);
writeln(infodat,s);
s:=floattostr(stk);
writeln(infodat,s);
s:=floattostr(stg);
writeln(infodat,s);
s:=floattostr(stM);
writeln(infodat,s);

s:=inttostr(listbox1.Items.count+listbox2.Items.count-1);
writeln(infodat,s);

for i:=1 to anzprorun do
listbox2.items.add('test-object '+inttostr(i));

setlength(Asteroiden,listbox2.Items.Count);

inthisrun:=0;
schondabei:=0;


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




Asteroiden[listbox2.Items.Count-anzprorun+inthisrun].a:=aa+sta*counta;
Asteroiden[listbox2.Items.Count-anzprorun+inthisrun].e:=ee+ste*counte;
Asteroiden[listbox2.Items.Count-anzprorun+inthisrun].i:=ii+sti*counti;
Asteroiden[listbox2.Items.Count-anzprorun+inthisrun].kom:=kk+stk*countk;
Asteroiden[listbox2.Items.Count-anzprorun+inthisrun].Gom:=gg+stg*countg;
Asteroiden[listbox2.Items.Count-anzprorun+inthisrun].MA:=MM+stM*countM;
Asteroiden[listbox2.Items.Count-anzprorun+inthisrun].masse:=0;
Asteroiden[listbox2.Items.Count-anzprorun+inthisrun].name:=listbox2.Items.Strings[listbox2.Items.Count-1];

inc(inthisrun);
inc(schondabei);


if inthisrun=anzprorun
then
begin
inthisrun:=0;

jetztdatei:=inttostr(schondabei-anzprorun+1)+'-'+inttostr(schondabei);
edit19.text:='ele'+jetztdatei+'.dat';
edit20.text:='coo'+jetztdatei+'.dat';

gauge2.Progress:=round(schondabei/totalrun*100);
Lieberechnen;

if totalrun<schondabei+anzprorun
then
begin
hhhhh:=totalrun-schondabei;

for i:=1 to (anzprorun-hhhhh) do
listbox2.Items.Delete(listbox2.Items.Count-1);

anzprorun:=hhhhh;

setlength(Asteroiden,listbox2.Items.Count);

end;

end;


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




for i:=1 to anzprorun do
listbox2.Items.Delete(listbox2.Items.Count-1);

setlength(Asteroiden,listbox2.Items.Count);


end
else if form2.RadioButton2.checked=true       //massiv
then
begin

writeln(infodat,'2');

aa:=strtofloat(form2.Edit2.text);
ee:=strtofloat(form2.Edit4.text);
ii:=strtofloat(form2.Edit6.text);
kk:=strtofloat(form2.Edit8.text);
gg:=strtofloat(form2.Edit10.text);
MM:=strtofloat(form2.Edit12.text);
massmass:=strtofloat(form2.Edit14.text);

durcha:=form2.SpinEdit1.Value;
durche:=form2.SpinEdit2.Value;
durchi:=form2.SpinEdit3.Value;
durchk:=form2.SpinEdit4.Value;
durchg:=form2.SpinEdit5.Value;
durchM:=form2.SpinEdit6.Value;
durchmass:=form2.SpinEdit7.Value;

sta:=(strtofloat(form2.Edit3.Text)-strtofloat(form2.edit2.Text))/(form2.SpinEdit1.Value-1);
ste:=(strtofloat(form2.Edit5.Text)-strtofloat(form2.edit4.Text))/(form2.SpinEdit2.Value-1);
sti:=(strtofloat(form2.Edit7.Text)-strtofloat(form2.edit6.Text))/(form2.SpinEdit3.Value-1);
stk:=(strtofloat(form2.Edit9.Text)-strtofloat(form2.edit8.Text))/(form2.SpinEdit4.Value-1);
stg:=(strtofloat(form2.Edit11.Text)-strtofloat(form2.edit10.Text))/(form2.SpinEdit5.Value-1);
stM:=(strtofloat(form2.Edit13.Text)-strtofloat(form2.edit12.Text))/(form2.SpinEdit6.Value-1);
stmass:=(strtofloat(form2.Edit15.Text)-strtofloat(form2.edit14.Text))/(form2.SpinEdit7.Value-1);

if form2.checkbox1.checked=false
then
begin
sta:=0;
durcha:=1;
end;
if form2.checkbox2.checked=false
then
begin
ste:=0;
durche:=1;
end;
if form2.checkbox3.checked=false
then
begin
sti:=0;
durchi:=1;
end;
if form2.checkbox4.checked=false
then
begin
stk:=0;
durchk:=1;
end;
if form2.checkbox5.checked=false
then
begin
stg:=0;
durchg:=1;
end;
if form2.checkbox6.checked=false
then
begin
stM:=0;
durchM:=1;
end;
if form2.checkbox7.checked=false
then
begin
stmass:=0;
durchmass:=1;
end;

totalrun:=durcha*durche*durchi*durchk*durchg*durchM*durchmass;
s:=inttostr(totalrun);
writeln(infodat,s);

s:=floattostr(aa);
writeln(infodat,s);
s:=floattostr(ee);
writeln(infodat,s);
s:=floattostr(ii);
writeln(infodat,s);
s:=floattostr(kk);
writeln(infodat,s);
s:=floattostr(gg);
writeln(infodat,s);
s:=floattostr(MM);
writeln(infodat,s);
s:=floattostr(massmass);
writeln(infodat,s);

s:=inttostr(durcha);
writeln(infodat,s);
s:=inttostr(durche);
writeln(infodat,s);
s:=inttostr(durchi);
writeln(infodat,s);
s:=inttostr(durchk);
writeln(infodat,s);
s:=inttostr(durchg);
writeln(infodat,s);
s:=inttostr(durchM);
writeln(infodat,s);
s:=inttostr(durchmass);
writeln(infodat,s);

s:=floattostr(sta);
writeln(infodat,s);
s:=floattostr(ste);
writeln(infodat,s);
s:=floattostr(sti);
writeln(infodat,s);
s:=floattostr(stk);
writeln(infodat,s);
s:=floattostr(stg);
writeln(infodat,s);
s:=floattostr(stM);
writeln(infodat,s);
s:=floattostr(stmass);
writeln(infodat,s);


s:=inttostr(listbox1.Items.count+listbox2.Items.count-1);
writeln(infodat,s);

listbox1.items.add('test-planet');
setlength(Planeten,listbox1.Items.Count);

schondabei:=0;
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

Planeten[listbox1.Items.Count-1].a:=aa+sta*counta;
Planeten[listbox1.Items.Count-1].e:=ee+ste*counte;
Planeten[listbox1.Items.Count-1].i:=ii+sti*counti;
Planeten[listbox1.Items.Count-1].kom:=kk+stk*countk;
Planeten[listbox1.Items.Count-1].Gom:=gg+stg*countg;
Planeten[listbox1.Items.Count-1].MA:=MM+stM*countM;
Planeten[listbox1.Items.Count-1].masse:=massmass+stmass*countmass;
Planeten[listbox1.Items.Count-1].name:=listbox1.Items.Strings[listbox1.Items.Count-1];

inc(zaehler);
jetztdatei:=inttostr(zaehler);

edit19.text:='ele'+jetztdatei+'.dat';
edit20.text:='coo'+jetztdatei+'.dat';

inc(schondabei);
gauge2.Progress:=round(schondabei/totalrun*100);

Lieberechnen; 

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




listbox1.items.Delete(listbox1.Items.Count-1);
setlength(Planeten,listbox1.Items.Count);


end
else if form2.RadioButton3.checked=true       //inklination
then
begin

writeln(infodat,'3');


ii:=strtofloat(form2.Edit16.text);
durchi:=form2.SpinEdit9.Value;
sti:=(strtofloat(form2.Edit17.Text)-strtofloat(form2.edit16.Text))/(form2.SpinEdit9.Value-1);

s:=floattostr(ii);
writeln(infodat,s);
s:=inttostr(durchi);
writeln(infodat,s);
s:=floattostr(sti);
writeln(infodat,s);

s:=inttostr(listbox1.Items.count+listbox2.Items.count-1);
writeln(infodat,s);

setlength(speichermass,listbox1.Items.Count);
for hhhhh:=1 to listbox1.Items.Count-1 do
speichermass[hhhhh]:=Planeten[hhhhh].masse;

for i:=0 to form2.SpinEdit9.Value-1 do
begin

winkel:=ii+sti*i;
winkel:=winkel*PI/180;
winkel:=1/sin(winkel);

for hhhhh:=1 to listbox1.Items.Count-1 do
Planeten[hhhhh].masse:=speichermass[hhhhh]*winkel;

jetztdatei:=inttostr(i+1);
edit19.text:='ele'+jetztdatei+'.dat';
edit20.text:='coo'+jetztdatei+'.dat';

gauge2.Progress:=round((i+1)/durchi*100);
Lieberechnen; 


end;

for hhhhh:=1 to listbox1.Items.Count-1 do
Planeten[hhhhh].masse:=speichermass[hhhhh];

end
else
begin    //mehrere





end;

closefile(Infodat);


end;

procedure TForm1.About1Click(Sender: TObject);
begin
form12.visible:=true;
end;

procedure TForm1.shortManuel1Click(Sender: TObject);
begin
Form6.Visible:=true;
end;

procedure TForm1.ReportBugs1Click(Sender: TObject);
begin
form13.visible:=true;
end;

procedure TForm1.Calculations1Click(Sender: TObject);
begin
form14.visible:=true;
end;

procedure TForm1.syntheticradialvelocitycurves1Click(Sender: TObject);
begin
form15.visible:=true;
end;


procedure Tform1.exoplancal;
var s:string;
    infodat:TextFile;
    lang:integer;
    uzeit:array of extended;
    i:integer;
    minzeit,reso:extended;
begin     //
s:=form14.edit2.text;
lang:=length(s);
if (s[lang]='/') or (s[lang]='\')
then
pfad:=s
else
pfad:=s+'\';
{$I-}
mkdir(pfad);

edit18.text:=pfad;
edit19.Text:='ele.dat';
edit20.text:='coo.dat';
checkbox2.Checked:=true;
checkbox3.Checked:=true;
radiobutton1.Checked:=true;
checkbox1.Checked:=false;
edit9.text:=form14.Edit3.text;
listbox2.Clear;

setlength(uzeit,listbox1.Items.Count-1);
for i:=1 to listbox1.Items.Count-1 do
begin
uzeit[i-1]:=sqrt(4*PI*PI*planeten[i].a*planeten[i].a*planeten[i].a/
(planeten[i].masse+planeten[0].masse))/0.01720209895;
end;

minzeit:=uzeit[0];
for i:=1 to listbox1.items.Count-2 do
if uzeit[i]<minzeit
then
minzeit:=uzeit[i];

reso:=minzeit/strtofloat(Form14.Edit1.text);

assignfile(infodat,pfad+'exo.dat');
rewrite(infodat);
s:=floattostr(reso);
edit10.text:=s;
writeln(infodat,s);

s:=inttostr(listbox1.Items.count);
writeln(infodat,s);

for i:=0 to listbox1.Items.Count-1 do
begin
s:=floattostr(Planeten[i].masse);
writeln(infodat,s);
end;

closefile(infodat);


if listbox1.Items.count>0
then
Lieberechnen; 


end;

procedure TForm1.Neu1Click(Sender: TObject);
begin
radiobutton1.checked:=true;
Edit9.Text:='365250000';
Edit10.Text:='36525';
Checkbox1.Checked:=false;
edit11.text:='12';
edit12.text:='-11';
edit13.text:='1';
edit14.text:='-11';
edit15.text:='0';
edit17.text:='0.8';
edit22.text:='1';
Checkbox2.Checked:=true;
Checkbox3.Checked:=true;
Checkbox4.Checked:=true;
Checkbox5.Checked:=true;
spinedit1.Value:=10;
listbox1.clear;
listbox2.clear;
edit1.text:='';
edit2.text:='';
edit3.text:='';
edit4.text:='';
edit5.text:='';
edit6.text:='';
edit7.text:='';
edit8.text:='';
radiobutton4.Checked:=true;
edit18.text:='C:\';
edit19.Text:='ele.dat';
edit20.text:='coo.dat';
edit21.text:='sav.dat';
gauge1.Progress:=0;
gauge2.Progress:=0;

end;

end.
