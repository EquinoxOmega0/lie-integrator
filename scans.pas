unit scans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, resonances,  habitable;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    SaveDialog1: TSaveDialog;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    SpinEdit1: TSpinEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    SpinEdit2: TSpinEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    SpinEdit3: TSpinEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    SpinEdit4: TSpinEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    SpinEdit5: TSpinEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    SpinEdit6: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    CheckBox7: TCheckBox;
    Edit14: TEdit;
    Edit15: TEdit;
    SpinEdit7: TSpinEdit;
    Label16: TLabel;
    Label17: TLabel;
    Button4: TButton;
    Button5: TButton;
    Label18: TLabel;
    Edit16: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    SpinEdit8: TSpinEdit;
    Label21: TLabel;
    Edit17: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    SpinEdit9: TSpinEdit;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    CheckBox8: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation


uses main;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
form2.Visible:=false;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form2.Visible:=false;
end;

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form2.Visible:=false;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Form8.Visible:=true;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
Form9.Visible:=true;
end;

procedure TForm2.RadioButton1Click(Sender: TObject);
begin
Checkbox1.visible:=true;
Checkbox2.visible:=true;
Checkbox3.visible:=true;
Checkbox4.visible:=true;
Checkbox5.visible:=true;
Checkbox6.visible:=true;
Checkbox7.visible:=false;
Checkbox8.visible:=true;
edit2.Visible:=true;
edit3.Visible:=true;
edit4.Visible:=true;
edit5.Visible:=true;
edit6.Visible:=true;
edit7.Visible:=true;
edit8.Visible:=true;
edit9.Visible:=true;
edit10.Visible:=true;
edit11.Visible:=true;
edit12.Visible:=true;
edit13.Visible:=true;
edit14.Visible:=false;
edit15.Visible:=false;
edit16.Visible:=false;
edit17.Visible:=false;
spinedit1.Visible:=true;
spinedit2.Visible:=true;
spinedit3.Visible:=true;
spinedit4.Visible:=true;
spinedit5.Visible:=true;
spinedit6.Visible:=true;
spinedit7.Visible:=false;
spinedit8.Visible:=true;
spinedit9.Visible:=false;
label2.visible:=true;
label3.visible:=true;
label4.visible:=true;
label5.visible:=true;
label6.visible:=true;
label7.visible:=true;
label8.visible:=true;
label9.visible:=true;
label10.visible:=true;
label11.visible:=true;
label12.visible:=true;
label13.visible:=true;
label14.visible:=true;
label15.visible:=true;
label16.visible:=false;
label17.visible:=false;
label18.visible:=false;
label19.visible:=false;
label20.visible:=true;
label21.visible:=false;
label22.visible:=false;
label23.visible:=false;
label24.visible:=false;
button4.Visible:=true;
button5.Visible:=true;

Groupbox2.Caption:='mass less testbody';
end;

procedure TForm2.RadioButton2Click(Sender: TObject);
begin
Checkbox1.visible:=true;
Checkbox2.visible:=true;
Checkbox3.visible:=true;
Checkbox4.visible:=true;
Checkbox5.visible:=true;
Checkbox6.visible:=true;
Checkbox7.visible:=true;
Checkbox8.visible:=false;
edit2.Visible:=true;
edit3.Visible:=true;
edit4.Visible:=true;
edit5.Visible:=true;
edit6.Visible:=true;
edit7.Visible:=true;
edit8.Visible:=true;
edit9.Visible:=true;
edit10.Visible:=true;
edit11.Visible:=true;
edit12.Visible:=true;
edit13.Visible:=true;
edit14.Visible:=true;
edit15.Visible:=true;
edit16.Visible:=false;
edit17.Visible:=false;
spinedit1.Visible:=true;
spinedit2.Visible:=true;
spinedit3.Visible:=true;
spinedit4.Visible:=true;
spinedit5.Visible:=true;
spinedit6.Visible:=true;
spinedit7.Visible:=true;
spinedit8.Visible:=false;
spinedit9.Visible:=false;
label2.visible:=true;
label3.visible:=true;
label4.visible:=true;
label5.visible:=true;
label6.visible:=true;
label7.visible:=true;
label8.visible:=true;
label9.visible:=true;
label10.visible:=true;
label11.visible:=true;
label12.visible:=true;
label13.visible:=true;
label14.visible:=true;
label15.visible:=true;
label16.visible:=true;
label17.visible:=true;
label18.visible:=false;
label19.visible:=false;
label20.visible:=false;
label21.visible:=false;
label22.visible:=false;
label23.visible:=false;
label24.visible:=false;
button4.Visible:=true;
button5.Visible:=true;

Groupbox2.Caption:='massive planet';
end;

procedure TForm2.RadioButton3Click(Sender: TObject);
begin
Checkbox1.visible:=false;
Checkbox2.visible:=false;
Checkbox3.visible:=false;
Checkbox4.visible:=false;
Checkbox5.visible:=false;
Checkbox6.visible:=false;
Checkbox7.visible:=false;
Checkbox8.visible:=false;
edit2.Visible:=false;
edit3.Visible:=false;
edit4.Visible:=false;
edit5.Visible:=false;
edit6.Visible:=false;
edit7.Visible:=false;
edit8.Visible:=false;
edit9.Visible:=false;
edit10.Visible:=false;
edit11.Visible:=false;
edit12.Visible:=false;
edit13.Visible:=false;
edit14.Visible:=false;
edit15.Visible:=false;
edit16.Visible:=true;
edit17.Visible:=true;
spinedit1.Visible:=false;
spinedit2.Visible:=false;
spinedit3.Visible:=false;
spinedit4.Visible:=false;
spinedit5.Visible:=false;
spinedit6.Visible:=false;
spinedit7.Visible:=false;
spinedit8.Visible:=false;
spinedit9.Visible:=true;
label2.visible:=false;
label3.visible:=false;
label4.visible:=false;
label5.visible:=false;
label6.visible:=false;
label7.visible:=false;
label8.visible:=false;
label9.visible:=false;
label10.visible:=false;
label11.visible:=false;
label12.visible:=false;
label13.visible:=false;
label14.visible:=false;
label15.visible:=false;
label16.visible:=false;
label17.visible:=false;
label18.visible:=true;
label19.visible:=true;
label20.visible:=false;
label21.visible:=true;
label22.visible:=true;
label23.visible:=true;
label24.visible:=true;
button4.Visible:=false;
button5.Visible:=false;

Groupbox2.Caption:='inclination of system';
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Form2.Visible:=false;
Form1.Scannen;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin

if savedialog1.Execute
then
begin
edit1.text:=savedialog1.FileName+'\';
button3.Enabled:=true;
end;

end;

end.
