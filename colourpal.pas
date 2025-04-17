unit colourpal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm10 = class(TForm)
    ColorDialog1: TColorDialog;
    ListBox1: TListBox;
    Shape1: TShape;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label1: TLabel;
    Label4: TLabel;
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ListBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.Button5Click(Sender: TObject);
begin
form10.Visible:=false;
end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form10.Visible:=false;
end;

procedure TForm10.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form10.Visible:=false;
end;

procedure TForm10.ListBox1Click(Sender: TObject);
var a,i:integer;
begin
a:=-1;
for i:=0 to listbox1.Items.Count-1 do
if listbox1.Selected[i]=true
then
a:=i;

if a<>-1
then
shape1.Brush.Color:=strtoint('$'+listbox1.Items.Strings[a]);

end;

procedure TForm10.Button1Click(Sender: TObject);
begin
if colordialog1.Execute
then
listbox1.Items.Add(inttohex(colordialog1.Color,6));
end;

procedure TForm10.Button2Click(Sender: TObject);
var a,i:integer;
begin
a:=-1;
for i:=0 to listbox1.Items.Count-1 do
if listbox1.Selected[i]=true
then
a:=i;

if a<>-1
then
listbox1.Items.Delete(a);

end;

procedure TForm10.Button3Click(Sender: TObject);
var a,i:integer;
begin
a:=-1;
for i:=0 to listbox1.Items.Count-1 do
if listbox1.Selected[i]=true
then
a:=i;

if a<>-1
then
begin
if a>0
then
listbox1.Items.Exchange(a,a-1);
end;

end;

procedure TForm10.Button4Click(Sender: TObject);
var a,i:integer;
begin
a:=-1;
for i:=0 to listbox1.Items.Count-1 do
if listbox1.Selected[i]=true
then
a:=i;

if a<>-1
then
begin
if a<listbox1.items.Count-1
then
listbox1.Items.Exchange(a,a+1);
end;

end;

end.
