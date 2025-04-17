object Form2: TForm2
  Left = 376
  Top = 340
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - Scans'
  ClientHeight = 319
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 145
    Height = 97
    Caption = 'scan mode'
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 8
      Top = 24
      Width = 129
      Height = 17
      Cursor = crHandPoint
      Caption = 'mass less testbody'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 48
      Width = 129
      Height = 17
      Cursor = crHandPoint
      Caption = 'massive planet'
      TabOrder = 1
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 8
      Top = 72
      Width = 129
      Height = 17
      Cursor = crHandPoint
      Caption = 'inclination of system'
      TabOrder = 2
      OnClick = RadioButton3Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 160
    Top = 8
    Width = 345
    Height = 305
    Caption = 'mass less testbody'
    TabOrder = 1
    object Label2: TLabel
      Left = 80
      Top = 24
      Width = 20
      Height = 13
      Caption = 'from'
    end
    object Label3: TLabel
      Left = 176
      Top = 24
      Width = 9
      Height = 13
      Caption = 'to'
    end
    object Label4: TLabel
      Left = 272
      Top = 24
      Width = 45
      Height = 13
      Caption = 'resolution'
    end
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 63
      Height = 13
      Caption = 'scan element'
    end
    object Label6: TLabel
      Left = 136
      Top = 56
      Width = 15
      Height = 13
      Caption = 'AU'
    end
    object Label7: TLabel
      Left = 232
      Top = 56
      Width = 15
      Height = 13
      Caption = 'AU'
    end
    object Label8: TLabel
      Left = 136
      Top = 112
      Width = 4
      Height = 13
      Caption = #176
    end
    object Label9: TLabel
      Left = 232
      Top = 112
      Width = 4
      Height = 13
      Caption = #176
    end
    object Label10: TLabel
      Left = 136
      Top = 144
      Width = 4
      Height = 13
      Caption = #176
    end
    object Label11: TLabel
      Left = 232
      Top = 144
      Width = 4
      Height = 13
      Caption = #176
    end
    object Label12: TLabel
      Left = 136
      Top = 176
      Width = 4
      Height = 13
      Caption = #176
    end
    object Label13: TLabel
      Left = 232
      Top = 176
      Width = 4
      Height = 13
      Caption = #176
    end
    object Label14: TLabel
      Left = 136
      Top = 208
      Width = 4
      Height = 13
      Caption = #176
    end
    object Label15: TLabel
      Left = 232
      Top = 208
      Width = 4
      Height = 13
      Caption = #176
    end
    object Label16: TLabel
      Left = 136
      Top = 248
      Width = 22
      Height = 13
      Caption = 'Msol'
      Visible = False
    end
    object Label17: TLabel
      Left = 232
      Top = 248
      Width = 22
      Height = 13
      Caption = 'Msol'
      Visible = False
    end
    object Label18: TLabel
      Left = 8
      Top = 32
      Width = 5
      Height = 13
      Caption = 'i:'
      Visible = False
    end
    object Label19: TLabel
      Left = 104
      Top = 24
      Width = 4
      Height = 13
      Caption = #176
      Visible = False
    end
    object Label20: TLabel
      Left = 8
      Top = 240
      Width = 73
      Height = 13
      Caption = 'objects per run:'
    end
    object Label21: TLabel
      Left = 24
      Top = 32
      Width = 20
      Height = 13
      Caption = 'from'
      Visible = False
    end
    object Label22: TLabel
      Left = 112
      Top = 32
      Width = 9
      Height = 13
      Caption = 'to'
      Visible = False
    end
    object Label23: TLabel
      Left = 184
      Top = 24
      Width = 4
      Height = 13
      Caption = #176
      Visible = False
    end
    object Label24: TLabel
      Left = 200
      Top = 32
      Width = 67
      Height = 13
      Caption = 'with resolution'
      Visible = False
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 48
      Width = 33
      Height = 17
      Cursor = crHandPoint
      Caption = 'a'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 80
      Width = 33
      Height = 17
      Cursor = crHandPoint
      Caption = 'e'
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 8
      Top = 112
      Width = 33
      Height = 17
      Cursor = crHandPoint
      Caption = 'i'
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 8
      Top = 144
      Width = 33
      Height = 17
      Cursor = crHandPoint
      Caption = 'w'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CheckBox5: TCheckBox
      Left = 8
      Top = 176
      Width = 33
      Height = 17
      Cursor = crHandPoint
      Caption = 'W'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object CheckBox6: TCheckBox
      Left = 8
      Top = 208
      Width = 33
      Height = 17
      Cursor = crHandPoint
      Caption = 'M'
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 80
      Top = 48
      Width = 49
      Height = 21
      TabOrder = 6
      Text = '1'
    end
    object Edit3: TEdit
      Left = 176
      Top = 48
      Width = 49
      Height = 21
      TabOrder = 7
      Text = '1'
    end
    object SpinEdit1: TSpinEdit
      Left = 272
      Top = 48
      Width = 49
      Height = 22
      MaxValue = 1000000000
      MinValue = 2
      TabOrder = 8
      Value = 2
    end
    object Edit4: TEdit
      Left = 80
      Top = 80
      Width = 49
      Height = 21
      TabOrder = 9
      Text = '0'
    end
    object Edit5: TEdit
      Left = 176
      Top = 80
      Width = 49
      Height = 21
      TabOrder = 10
      Text = '0'
    end
    object SpinEdit2: TSpinEdit
      Left = 272
      Top = 80
      Width = 49
      Height = 22
      MaxValue = 1000000000
      MinValue = 2
      TabOrder = 11
      Value = 2
    end
    object Edit6: TEdit
      Left = 80
      Top = 112
      Width = 49
      Height = 21
      TabOrder = 12
      Text = '0'
    end
    object Edit7: TEdit
      Left = 176
      Top = 112
      Width = 49
      Height = 21
      TabOrder = 13
      Text = '0'
    end
    object SpinEdit3: TSpinEdit
      Left = 272
      Top = 112
      Width = 49
      Height = 22
      MaxValue = 1000000000
      MinValue = 2
      TabOrder = 14
      Value = 2
    end
    object Edit8: TEdit
      Left = 80
      Top = 144
      Width = 49
      Height = 21
      TabOrder = 15
      Text = '0'
    end
    object Edit9: TEdit
      Left = 176
      Top = 144
      Width = 49
      Height = 21
      TabOrder = 16
      Text = '0'
    end
    object SpinEdit4: TSpinEdit
      Left = 272
      Top = 144
      Width = 49
      Height = 22
      MaxValue = 1000000000
      MinValue = 2
      TabOrder = 17
      Value = 2
    end
    object Edit10: TEdit
      Left = 80
      Top = 176
      Width = 49
      Height = 21
      TabOrder = 18
      Text = '0'
    end
    object Edit11: TEdit
      Left = 176
      Top = 176
      Width = 49
      Height = 21
      TabOrder = 19
      Text = '0'
    end
    object SpinEdit5: TSpinEdit
      Left = 272
      Top = 176
      Width = 49
      Height = 22
      MaxValue = 1000000000
      MinValue = 2
      TabOrder = 20
      Value = 2
    end
    object Edit12: TEdit
      Left = 80
      Top = 208
      Width = 49
      Height = 21
      TabOrder = 21
      Text = '0'
    end
    object Edit13: TEdit
      Left = 176
      Top = 208
      Width = 49
      Height = 21
      TabOrder = 22
      Text = '0'
    end
    object SpinEdit6: TSpinEdit
      Left = 272
      Top = 208
      Width = 49
      Height = 22
      MaxValue = 1000000000
      MinValue = 2
      TabOrder = 23
      Value = 2
    end
    object CheckBox7: TCheckBox
      Left = 8
      Top = 240
      Width = 33
      Height = 17
      Cursor = crHandPoint
      Caption = 'm'
      TabOrder = 24
      Visible = False
    end
    object Edit14: TEdit
      Left = 80
      Top = 240
      Width = 49
      Height = 21
      TabOrder = 25
      Text = '0,001'
      Visible = False
    end
    object Edit15: TEdit
      Left = 176
      Top = 240
      Width = 49
      Height = 21
      TabOrder = 26
      Text = '0,001'
      Visible = False
    end
    object SpinEdit7: TSpinEdit
      Left = 272
      Top = 240
      Width = 49
      Height = 22
      MaxValue = 1000000000
      MinValue = 2
      TabOrder = 27
      Value = 2
      Visible = False
    end
    object Button4: TButton
      Left = 8
      Top = 272
      Width = 161
      Height = 25
      Cursor = crHandPoint
      Caption = 'resonances'
      TabOrder = 28
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 176
      Top = 272
      Width = 161
      Height = 25
      Cursor = crHandPoint
      Caption = 'habitable zone'
      TabOrder = 29
      OnClick = Button5Click
    end
    object Edit16: TEdit
      Left = 48
      Top = 24
      Width = 49
      Height = 21
      TabOrder = 30
      Text = '45'
      Visible = False
    end
    object SpinEdit8: TSpinEdit
      Left = 88
      Top = 240
      Width = 89
      Height = 22
      MaxValue = 1000000000
      MinValue = 1
      TabOrder = 31
      Value = 10
    end
    object Edit17: TEdit
      Left = 128
      Top = 24
      Width = 49
      Height = 21
      TabOrder = 32
      Text = '90'
      Visible = False
    end
    object SpinEdit9: TSpinEdit
      Left = 272
      Top = 24
      Width = 49
      Height = 22
      MaxValue = 1000000
      MinValue = 2
      TabOrder = 33
      Value = 2
      Visible = False
    end
    object CheckBox8: TCheckBox
      Left = 184
      Top = 240
      Width = 41
      Height = 17
      Cursor = crHandPoint
      Caption = 'all'
      TabOrder = 34
    end
  end
  object Button1: TButton
    Left = 8
    Top = 248
    Width = 145
    Height = 65
    Cursor = crHandPoint
    Caption = 'close'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 168
    Width = 145
    Height = 33
    Cursor = crHandPoint
    Caption = 'location for save files'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 208
    Width = 145
    Height = 33
    Cursor = crHandPoint
    Caption = 'calculate'
    Enabled = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 112
    Width = 145
    Height = 49
    Caption = 'path'
    TabOrder = 5
    object Edit1: TEdit
      Left = 8
      Top = 16
      Width = 129
      Height = 21
      TabOrder = 0
      Text = 'C:\'
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 120
    Top = 8
  end
end
