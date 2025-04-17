unit tabellen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AxCtrls, OleCtrls, VCF1, StdCtrls, Spin, math;

type
  TForm3 = class(TForm)
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    GroupBox2: TGroupBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button5: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    OpenDialog1: TOpenDialog;
    Button14: TButton;
    SpinEdit1: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure auswahlannehmen;
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type Textrem=record
  val:array[0..7] of extended;
  tt:array[0..7] of extended;
  end;

var
  Form3: TForm3;
  bahnele:array[0..7] of boolean;
  auswahlobj:array of boolean;
  recentfile:string;
  bahnbez:array[0..7] of string;
  noo:integer;

implementation

{$R *.dfm}

procedure TForm3.Button13Click(Sender: TObject);
begin
form3.visible:=false;
end;

procedure TForm3.Button12Click(Sender: TObject);
begin
if savedialog1.Execute
then
memo1.Lines.SaveToFile(savedialog1.filename);
end;

procedure TForm3.Button5Click(Sender: TObject);
var i,e,lang,posi:integer;
    TF:TextFile;
    s,zeile,schreibstr:string;
    erstesmal:boolean;
    wert:extended;
    w1,w2,w3:extended;
begin
if (listbox2.Items.count<>0) and (listbox4.Items.count<>0)
then
begin
Memo1.Clear;
auswahlannehmen;

w1:=0;
w2:=0;
w3:=0;

schreibstr:='';
if bahnele[0]=true
then
schreibstr:='time ';

for i:=0 to noo-1 do
if auswahlobj[i]=true
then
for e:=1 to 7 do
if bahnele[e]=true
then
begin
case e of
1:schreibstr:=schreibstr+'a'+inttostr(i+1)+' ';
2:schreibstr:=schreibstr+'e'+inttostr(i+1)+' ';
3:schreibstr:=schreibstr+'i'+inttostr(i+1)+' ';
4:schreibstr:=schreibstr+'sOm'+inttostr(i+1)+' ';
5:schreibstr:=schreibstr+'lOm'+inttostr(i+1)+' ';
6:schreibstr:=schreibstr+'MA'+inttostr(i+1)+' ';
7:schreibstr:=schreibstr+'soa'+inttostr(i+1)+' ';
end;
end;
Memo1.Lines.Add(schreibstr);
                      

assignfile(TF,recentfile);
reset(TF);
for i:=1 to 8 do
readln(TF,s);


while EOF(TF)=false do
begin
erstesmal:=true;
schreibstr:='';
for e:=0 to noo-1 do
begin
readln(TF,zeile);
lang:=length(zeile);

if auswahlobj[e]=true
then
begin

posi:=1;
for i:=0 to 7 do
begin
s:='';
if posi<lang
then
begin
repeat
s:=s+zeile[posi];
inc(posi);
until (zeile[posi]=' ') or (posi=lang);
inc(posi);
end;

if (bahnele[7]=true) and (i<>7)
then
begin
wert:=strtofloat(s);
case i of
4:w1:=wert;
5:w2:=wert;
6:w3:=wert;
end;
end;

if bahnele[i]=true
then
begin

if i<>7
then
begin
wert:=strtofloat(s);
wert:=roundto(wert,-spinedit1.value);
s:=floattostr(wert);
end;



if i<>7
then
begin
if (i=0)
then
begin
if (erstesmal=true)
then
begin
erstesmal:=false;
schreibstr:=schreibstr+s+' ';
end;
end
else
begin
schreibstr:=schreibstr+s+' ';
end;
end
else
begin
wert:=w1+w2+w3;
wert:=roundto(wert,-spinedit1.value);
s:=floattostr(wert);
schreibstr:=schreibstr+s+' ';

end;
end;

end;
end;
end;


Memo1.Lines.Add(schreibstr);
end;
closefile(TF);



end;
end;

procedure TForm3.Button10Click(Sender: TObject);
var i,e,lang,posi:integer;
    TF:TextFile;
    s,zeile:string;
    wert:extended;
    w1,w2,w3,jetzt:extended;
    maximum:array of Textrem;
begin
if (listbox2.Items.count<>0) and (listbox4.Items.count<>0)
then
begin
Memo1.Clear;
auswahlannehmen;

setlength(maximum,noo);
for i:=0 to noo-1 do
for e:=0 to 7 do
begin
maximum[i].val[e]:=0;
maximum[i].tt[e]:=0;
end;

w1:=0;
w2:=0;
w3:=0;
jetzt:=0;





assignfile(TF,recentfile);
reset(TF);
for i:=1 to 8 do
readln(TF,s);


while EOF(TF)=false do
begin

for e:=0 to noo-1 do
begin
readln(TF,zeile);
lang:=length(zeile);

if auswahlobj[e]=true
then
begin

posi:=1;
for i:=0 to 7 do
begin
s:='';
if posi<lang
then
begin
repeat
s:=s+zeile[posi];
inc(posi);
until (zeile[posi]=' ') or (posi=lang);
inc(posi);
end;

if i=0
then
jetzt:=strtofloat(s);

if (bahnele[7]=true) and (i<>7)
then
begin
wert:=strtofloat(s);
case i of
4:w1:=wert;
5:w2:=wert;
6:w3:=wert;
end;
end;

if bahnele[i]=true
then
begin

if i<>7
then
begin
wert:=strtofloat(s);
if wert>maximum[e].val[i]
then
begin
maximum[e].val[i]:=wert;
maximum[e].tt[i]:=jetzt;
end;
end
else
begin
wert:=w1+w2+w3;

if wert>maximum[e].val[i]
then
begin
maximum[e].val[i]:=wert;
maximum[e].tt[i]:=jetzt;
end;

end;
end;

end;
end;
end;



end;
closefile(TF);

for i:=0 to noo-1 do
for e:=1 to 7 do
if (auswahlobj[i]=true) and (bahnele[e]=true)
then
begin
Memo1.Lines.Add('maximum of '+bahnbez[e]+' '+inttostr(i+1));
Memo1.Lines.Add('value: '+floattostr(roundto(maximum[i].val[e],-spinedit1.Value)));
Memo1.Lines.Add('at time: '+floattostr(roundto(maximum[i].tt[e],-spinedit1.Value)));
Memo1.Lines.Add('');
end;


end;
end;





procedure TForm3.Button11Click(Sender: TObject);
var i,e,lang,posi:integer;
    TF:TextFile;
    s,zeile:string;
    wert:extended;
    w1,w2,w3,jetzt:extended;
    minimum:array of Textrem;
begin
if (listbox2.Items.count<>0) and (listbox4.Items.count<>0)
then
begin
Memo1.Clear;
auswahlannehmen;

setlength(minimum,noo);
for i:=0 to noo-1 do
for e:=0 to 7 do
begin
minimum[i].val[e]:=10000000;
minimum[i].tt[e]:=0;
end;

w1:=0;
w2:=0;
w3:=0;
jetzt:=0;





assignfile(TF,recentfile);
reset(TF);
for i:=1 to 8 do
readln(TF,s);


while EOF(TF)=false do
begin

for e:=0 to noo-1 do
begin
readln(TF,zeile);
lang:=length(zeile);

if auswahlobj[e]=true
then
begin

posi:=1;
for i:=0 to 7 do
begin
s:='';
if posi<lang
then
begin
repeat
s:=s+zeile[posi];
inc(posi);
until (zeile[posi]=' ') or (posi=lang);
inc(posi);
end;

if i=0
then
jetzt:=strtofloat(s);

if (bahnele[7]=true) and (i<>7)
then
begin
wert:=strtofloat(s);
case i of
4:w1:=wert;
5:w2:=wert;
6:w3:=wert;
end;
end;

if bahnele[i]=true
then
begin

if i<>7
then
begin
wert:=strtofloat(s);
if wert<minimum[e].val[i]
then
begin
minimum[e].val[i]:=wert;
minimum[e].tt[i]:=jetzt;
end;
end
else
begin
wert:=w1+w2+w3;

if wert<minimum[e].val[i]
then
begin
minimum[e].val[i]:=wert;
minimum[e].tt[i]:=jetzt;
end;

end;
end;

end;
end;
end;



end;
closefile(TF);

for i:=0 to noo-1 do
for e:=1 to 7 do
if (auswahlobj[i]=true) and (bahnele[e]=true)
then
begin
Memo1.Lines.Add('minimum of '+bahnbez[e]+' '+inttostr(i+1));
Memo1.Lines.Add('value: '+floattostr(roundto(minimum[i].val[e],-spinedit1.Value)));
Memo1.Lines.Add('at time: '+floattostr(roundto(minimum[i].tt[e],-spinedit1.Value)));
Memo1.Lines.Add('');
end;


end;
end;


procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form3.visible:=false;
end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form3.visible:=false;
end;

procedure TForm3.Button1Click(Sender: TObject);
var i,a:integer;
begin
a:=-1;
for i:=0 to listbox1.Items.Count-1 do
if listbox1.Selected[i]=true
then
a:=i;

if a>-1
then
begin
listbox2.Items.Add(listbox1.Items.Strings[a]);
listbox1.Items.Delete(a);
end;



end;



procedure TForm3.Button2Click(Sender: TObject);
var i,a:integer;
begin
a:=listbox1.Items.Count;
if a<>0
then
begin

for i:=0 to a-1 do
begin
listbox2.Items.Add(listbox1.Items.Strings[0]);
listbox1.Items.Delete(0);
end;


end;
end;

procedure TForm3.Button3Click(Sender: TObject);
var i,a:integer;
begin
a:=-1;
for i:=0 to listbox2.Items.Count-1 do
if listbox2.Selected[i]=true
then
a:=i;

if a>-1
then
begin
listbox1.Items.Add(listbox2.Items.Strings[a]);
listbox2.Items.Delete(a);
end;
end;

procedure TForm3.Button4Click(Sender: TObject);
var i,a:integer;
begin
a:=listbox2.Items.Count;
if a<>0
then
begin
for i:=0 to a-1 do
begin
listbox1.Items.Add(listbox2.Items.Strings[0]);
listbox2.Items.Delete(0);
end;

end;
end;

procedure TForm3.Button14Click(Sender: TObject);
var TF:textfile;
    s:string;
    i:integer;
begin
if opendialog1.Execute
then
begin
recentfile:=opendialog1.FileName;
assignfile(TF,recentfile);
reset(TF);
readln(TF,s);
readln(TF,s);
closefile(TF);
noo:=strtoint(s);
button5.Enabled:=true;
button10.Enabled:=true;
button11.Enabled:=true;

label7.Caption:=recentfile;

setlength(auswahlobj,noo);

for i:=1 to noo do
listbox3.Items.Add('object '+inttostr(i));

end;
end;


procedure Tform3.auswahlannehmen;
var i,e:integer;
begin

for i:=0 to 7 do
bahnele[i]:=false;

for i:=0 to noo-1 do
auswahlobj[i]:=false;

for i:=0 to listbox2.Items.Count-1 do
for e:=0 to 7 do
if listbox2.Items.Strings[i]=bahnbez[e]
then
bahnele[e]:=true;

for i:=0 to listbox4.Items.Count-1 do
for e:=0 to noo-1 do
if listbox4.items.strings[i]=('object '+inttostr(e+1))
then
auswahlobj[e]:=true;

end;

procedure TForm3.FormCreate(Sender: TObject);
var TF:TextFile;
    i:integer;
begin
assignfile(TF,'bezeichnungen.dat');
reset(TF);
for i:=0 to 7 do
begin
readln(TF,bahnbez[i]);
end;
closefile(TF);
end;

procedure TForm3.Button6Click(Sender: TObject);
var i,a:integer;
begin
a:=-1;
for i:=0 to listbox3.Items.Count-1 do
if listbox3.Selected[i]=true
then
a:=i;

if a>-1
then
begin
listbox4.Items.Add(listbox3.Items.Strings[a]);
listbox3.Items.Delete(a);
end;
end;

procedure TForm3.Button7Click(Sender: TObject);
var i,a:integer;
begin
a:=listbox3.Items.Count;
if a<>0
then
begin

for i:=0 to a-1 do
begin
listbox4.Items.Add(listbox3.Items.Strings[0]);
listbox3.Items.Delete(0);
end;


end;

end;

procedure TForm3.Button8Click(Sender: TObject);
var i,a:integer;
begin
a:=-1;
for i:=0 to listbox4.Items.Count-1 do
if listbox4.Selected[i]=true
then
a:=i;

if a>-1
then
begin
listbox3.Items.Add(listbox4.Items.Strings[a]);
listbox4.Items.Delete(a);
end;

end;

procedure TForm3.Button9Click(Sender: TObject);
var i,a:integer;
begin
a:=listbox4.Items.Count;
if a<>0
then
begin
for i:=0 to a-1 do
begin
listbox3.Items.Add(listbox4.Items.Strings[0]);
listbox4.Items.Delete(0);
end;

end;
end;

end.
