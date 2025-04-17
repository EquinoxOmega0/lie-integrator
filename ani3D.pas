unit ani3D;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, fenster3D, colourpal, ExtCtrls, Spin;

type
  TForm7 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Button4: TButton;
    RadioButton6: TRadioButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    ColorDialog1: TColorDialog;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    ListBox1: TListBox;
    ListBox2: TListBox;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    ListBox3: TListBox;
    Label11: TLabel;
    Label12: TLabel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label13: TLabel;
    Button9: TButton;
    Edit4: TEdit;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Label14: TLabel;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  dateiname:string;
  anzobj:integer;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
Form7.Visible:=false;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form7.Visible:=false;
end;

procedure TForm7.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Form7.Visible:=false;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
Form10.Visible:=true;
end;

procedure TForm7.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.Color:=shape1.Brush.Color;
if Colordialog1.Execute
then
shape1.Brush.Color:=colordialog1.Color;
end;

procedure TForm7.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.Color:=shape2.Brush.Color;
if Colordialog1.Execute
then
shape2.Brush.Color:=colordialog1.Color;
end;

procedure TForm7.Shape3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.Color:=shape3.Brush.Color;
if Colordialog1.Execute
then
shape3.Brush.Color:=colordialog1.Color;
end;

procedure TForm7.Button9Click(Sender: TObject);
begin
listbox3.Items.add(edit4.text);
edit4.Text:='';
end;

procedure TForm7.Button10Click(Sender: TObject);
var i,a:integer;
begin

a:=-1;

for i:=0 to listbox3.Items.Count-1 do
if listbox3.Selected[i]=true
then
a:=i;

if a<>-1
then
listbox3.Items.Delete(a);

end;

procedure TForm7.Button11Click(Sender: TObject);
var i,a:integer;
begin

a:=-1;

for i:=0 to listbox3.Items.Count-1 do
if listbox3.Selected[i]=true
then
a:=i;

if a>0
then
listbox3.Items.Exchange(a,a-1);

end;

procedure TForm7.Button12Click(Sender: TObject);
var i,a:integer;
begin

a:=-1;

for i:=0 to listbox3.Items.Count-1 do
if listbox3.Selected[i]=true
then
a:=i;

if (a<>-1) and (a<listbox3.items.count-1)
then
listbox3.Items.Exchange(a,a+1);
end;

procedure TForm7.Button6Click(Sender: TObject);
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

procedure TForm7.Button5Click(Sender: TObject);
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

procedure TForm7.Button7Click(Sender: TObject);
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

procedure TForm7.Button8Click(Sender: TObject);
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

procedure TForm7.Button3Click(Sender: TObject);
var TF:textfile;
    s,h:string;
    i,l:integer;
begin
if opendialog1.Execute
then
begin
button2.enabled:=true;
assignfile(TF,opendialog1.FileName);
reset(TF);
readln(TF,s);
readln(TF,s);
anzobj:=strtoint(s);
closefile(TF);

s:=Opendialog1.filename;
l:=length(s);
h:='';
for i:=l-6 to l do
h:=h+s[i];

if h='exo.dat'
then
begin
dec(anzobj);
radiobutton2.Checked:=true;
end
else
radiobutton1.Checked:=true;

listbox1.Clear;
listbox2.Clear;
for i:=0 to anzobj do
listbox1.items.Add('object '+inttostr(i));

combobox1.clear;
for i:=1 to anzobj do
combobox1.items.Add('object '+inttostr(i));

end;

end;

procedure TForm7.Button2Click(Sender: TObject);
begin



form17.getdaten(anzobj);

if checkbox2.checked=true
then
form17.Bildschirmvoll;

form17.Top:=0;
form17.left:=0;
form17.ClientHeight:=600;
form17.Clientwidth:=800;

form17.visible:=true;

end;

end.
