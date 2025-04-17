unit manuel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    ListBox1: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
Form6.Visible:=false;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form6.Visible:=false;
end;

procedure TForm6.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Form6.Visible:=false;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
listbox1.Items.LoadFromFile('help/topics.txt');
end;

procedure TForm6.ListBox1Click(Sender: TObject);
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
memo1.Clear;
memo1.Lines.LoadFromFile('help/'+listbox1.Items.Strings[a]+'.txt');
end;

end;

end.
