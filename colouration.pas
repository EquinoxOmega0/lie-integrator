unit colouration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, colourpal;

type
  TForm11 = class(TForm)
    Button1: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox1: TGroupBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    GroupBox2: TGroupBox;
    ColorDialog1: TColorDialog;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Label8: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit5: TEdit;
    Label11: TLabel;
    Edit6: TEdit;
    RadioButton8: TRadioButton;
    GroupBox4: TGroupBox;
    Button2: TButton;
    CheckBox3: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    GroupBox5: TGroupBox;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);
    Procedure closeandchange;
    procedure FormCreate(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  pic:Tbitmap;

implementation

uses stabmaps;

{$R *.dfm}

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
closeandchange;
end;

procedure TForm11.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
closeandchange;
end;

procedure TForm11.Button1Click(Sender: TObject);
begin
closeandchange;
end;

procedure TForm11.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.Color:=shape1.Brush.Color;
if Colordialog1.Execute
then
shape1.Brush.Color:=colordialog1.Color;
end;

procedure TForm11.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.Color:=shape2.Brush.Color;
if Colordialog1.Execute
then
shape2.Brush.Color:=colordialog1.Color;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
form10.Visible:=true;
end;


procedure TForm11.closeandchange;
var i,e,rot,gruen,blau,w,h:integer;
    r,g,b:array[1..2] of integer;
    dr,dg,db:integer;
    farben:array[0..1535] of integer;
    f:array of integer;
begin
form11.Visible:=false;

if radiobutton1.checked=true
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


if radiobutton5.checked=true
then
begin

for i:=0 to pic.Width-1 do
for e:=0 to pic.Height-1 do
begin
pic.Canvas.Pixels[i,e]:=farben[trunc(i*1535/(pic.Width-1))];
end;

end
else
begin

for i:=0 to pic.Width-1 do
for e:=0 to pic.Height-1 do
begin
pic.Canvas.Pixels[i,e]:=farben[trunc(((pic.Width-1)-i)*1535/(pic.Width-1))];
end;

end;


end
else
if radiobutton2.checked=true
then
begin

b[1]:=shape1.Brush.Color div (256*256);
w:=shape1.Brush.Color mod (256*256);
g[1]:=w div 256;
r[1]:=w mod 256;

b[2]:=shape2.Brush.Color div (256*256);
w:=shape2.Brush.Color mod (256*256);
g[2]:=w div 256;
r[2]:=w mod 256;

dr:=r[2]-r[1];
dg:=g[2]-g[1];
db:=b[2]-b[1];

for i:=0 to pic.Width-1 do
for e:=0 to pic.Height-1 do
begin
rot:=round(r[1]+i/pic.Width*dr);
gruen:=round(g[1]+i/pic.Width*dg);
blau:=round(b[1]+i/pic.Width*db);
pic.Canvas.Pixels[i,e]:=(blau shl 16)+ (gruen shl 8 )+ (rot);
end;


end
else
if radiobutton3.checked=true
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

if radiobutton6.checked=true
then
begin

for i:=0 to pic.Width-1 do
for e:=0 to pic.Height-1 do
begin
rot:=round(r[1]+i/pic.Width*dr);
gruen:=round(g[1]+i/pic.Width*dg);
blau:=round(b[1]+i/pic.Width*db);
pic.Canvas.Pixels[i,e]:=(blau shl 16)+ (gruen shl 8 )+ (rot);
end;



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


if checkbox1.checked=false
then
dr:=0;

if checkbox2.checked=false
then
dg:=0;

if checkbox3.checked=false
then
db:=0;

h:=abs(dr)+abs(dg)+abs(db);
setlength(f,h);

if radiobutton9.checked=true
then
begin

if checkbox1.checked=true
then
for i:=0 to abs(dr)-1 do
f[i]:=round(i*dr/abs(dr)+r[1]);

if checkbox2.checked=true
then
for i:=0 to abs(dg)-1 do
f[i+abs(dr)]:=(round(i*dg/abs(dg)+g[1]) shl 8);

if checkbox3.checked=true
then
for i:=0 to abs(db)-1 do
f[i+abs(dr)+abs(dg)]:=(round(i*db/abs(db)+b[1]) shl 16);

end;

if radiobutton10.checked=true
then
begin

if checkbox2.checked=true
then
for i:=0 to abs(dg)-1 do
f[i]:=(round(i*dg/abs(dg)+g[1]) shl 8);

if checkbox3.checked=true
then
for i:=0 to abs(db)-1 do
f[i+abs(dg)]:=(round(i*db/abs(db)+b[1]) shl 16);

if checkbox1.checked=true
then
for i:=0 to abs(dr)-1 do
f[i+abs(dg)+abs(dg)]:=(round(i*dr/abs(dr)+r[1]));

end;

if radiobutton11.checked=true
then
begin

if checkbox3.checked=true
then
for i:=0 to abs(db)-1 do
f[i]:=(round(i*db/abs(db)+b[1]) shl 16);

if checkbox1.checked=true
then
for i:=0 to abs(dr)-1 do
f[i+abs(db)]:=(round(i*dr/abs(dr)+r[1]));

if checkbox2.checked=true
then
for i:=0 to abs(dg)-1 do
f[i+abs(dr)+abs(db)]:=(round(i*dg/abs(dg)+g[1]) shl 8);

end;

if radiobutton12.checked=true
then
begin

if checkbox3.checked=true
then
for i:=0 to abs(db)-1 do
f[i]:=(round(i*db/abs(db)+b[1]) shl 16);

if checkbox2.checked=true
then
for i:=0 to abs(dg)-1 do
f[i+abs(db)]:=(round(i*dg/abs(dg)+g[1]) shl 8);

if checkbox1.checked=true
then
for i:=0 to abs(dr)-1 do
f[i+abs(dg)+abs(db)]:=(round(i*dr/abs(dr)+r[1]));

end;


if radiobutton13.checked=true
then
begin

if checkbox2.checked=true
then
for i:=0 to abs(dg)-1 do
f[i]:=(round(i*dg/abs(dg)+g[1]) shl 8);

if checkbox1.checked=true
then
for i:=0 to abs(dr)-1 do
f[i+abs(dg)]:=(round(i*dr/abs(dr)+r[1]));

if checkbox3.checked=true
then
for i:=0 to abs(db)-1 do
f[i+abs(dr)+abs(dg)]:=(round(i*db/abs(db)+b[1]) shl 16);

end;

if radiobutton14.checked=true
then
begin

if checkbox1.checked=true
then
for i:=0 to abs(dr)-1 do
f[i]:=(round(i*dr/abs(dr)+r[1]));

if checkbox3.checked=true
then
for i:=0 to abs(db)-1 do
f[i+abs(dr)]:=(round(i*db/abs(db)+b[1]) shl 16);

if checkbox2.checked=true
then
for i:=0 to abs(dg)-1 do
f[i+abs(dr)+abs(db)]:=(round(i*dg/abs(dg)+g[1]) shl 8);

end;



if h>0
then
for i:=0 to pic.Width-1 do
for e:=0 to pic.Height-1 do
begin
pic.Canvas.Pixels[i,e]:=f[trunc(i/pic.width*h)];
end;



end;





end
else
begin

for i:=0 to pic.Width-1 do
for e:=0 to pic.Height-1 do
begin
h:=trunc(i/pic.width*(form10.ListBox1.Items.Count));
w:=strtoint('$'+form10.listbox1.Items.Strings[h]);
pic.Canvas.Pixels[i,e]:=w;
end;



end;

form5.image1.canvas.draw(0,0,pic);

end;

procedure TForm11.FormCreate(Sender: TObject);
begin
pic:=Tbitmap.create;
pic.Width:=form5.Image1.Width;
pic.Height:=form5.Image1.Height;
end;

procedure TForm11.RadioButton7Click(Sender: TObject);
begin
Checkbox1.Enabled:=true;
Checkbox2.Enabled:=true;
Checkbox3.Enabled:=true;
radiobutton9.enabled:=true;
radiobutton10.enabled:=true;
radiobutton11.enabled:=true;
radiobutton12.enabled:=true;
radiobutton13.enabled:=true;
radiobutton14.enabled:=true;
end;

procedure TForm11.RadioButton6Click(Sender: TObject);
begin
Checkbox1.Enabled:=false;
Checkbox2.Enabled:=false;
Checkbox3.Enabled:=false;
radiobutton9.enabled:=false;
radiobutton10.enabled:=false;
radiobutton11.enabled:=false;
radiobutton12.enabled:=false;
radiobutton13.enabled:=false;
radiobutton14.enabled:=false;
end;

end.
