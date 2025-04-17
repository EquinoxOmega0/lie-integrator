object Form1: TForm1
  Left = 188
  Top = 101
  Width = 708
  Height = 554
  Caption = 'Lie-Integrator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 320
    Top = 8
    Width = 377
    Height = 265
    Caption = 'main settings'
    TabOrder = 0
    object Label15: TLabel
      Left = 8
      Top = 24
      Width = 32
      Height = 13
      Caption = 'length:'
    end
    object Label17: TLabel
      Left = 8
      Top = 56
      Width = 46
      Height = 13
      Caption = 'print step:'
    end
    object Label18: TLabel
      Left = 152
      Top = 56
      Width = 22
      Height = 13
      Caption = 'days'
    end
    object Label16: TLabel
      Left = 8
      Top = 88
      Width = 95
      Height = 13
      Caption = 'number of Lie-terms:'
    end
    object Label19: TLabel
      Left = 224
      Top = 88
      Width = 45
      Height = 13
      Caption = 'Log EPS:'
    end
    object Label20: TLabel
      Left = 8
      Top = 120
      Width = 60
      Height = 13
      Caption = 'minimal step:'
    end
    object Label21: TLabel
      Left = 8
      Top = 152
      Width = 35
      Height = 13
      Caption = 'swsum:'
    end
    object Label22: TLabel
      Left = 168
      Top = 120
      Width = 26
      Height = 13
      Caption = 'x 10^'
    end
    object Label27: TLabel
      Left = 8
      Top = 184
      Width = 28
      Height = 13
      Caption = 'emax:'
    end
    object Label33: TLabel
      Left = 8
      Top = 216
      Width = 26
      Height = 13
      Caption = 'eject:'
    end
    object Label34: TLabel
      Left = 104
      Top = 216
      Width = 22
      Height = 13
      Caption = 'RHill'
    end
    object Label35: TLabel
      Left = 336
      Top = 208
      Width = 25
      Height = 13
      Caption = 'steps'
    end
    object Label36: TLabel
      Left = 112
      Top = 152
      Width = 22
      Height = 13
      Caption = 'days'
    end
    object Edit9: TEdit
      Left = 64
      Top = 16
      Width = 81
      Height = 21
      TabOrder = 0
      Text = '365250000'
    end
    object Edit10: TEdit
      Left = 64
      Top = 48
      Width = 81
      Height = 21
      TabOrder = 1
      Text = '36525'
    end
    object CheckBox1: TCheckBox
      Left = 216
      Top = 56
      Width = 145
      Height = 17
      Cursor = crHandPoint
      Caption = 'automatic'
      TabOrder = 2
    end
    object GroupBox3: TGroupBox
      Left = 152
      Top = 8
      Width = 217
      Height = 33
      TabOrder = 3
      object RadioButton1: TRadioButton
        Left = 8
        Top = 8
        Width = 49
        Height = 17
        Cursor = crHandPoint
        Caption = 'days'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 64
        Top = 8
        Width = 49
        Height = 17
        Cursor = crHandPoint
        Caption = 'years'
        TabOrder = 1
      end
      object RadioButton3: TRadioButton
        Left = 120
        Top = 8
        Width = 81
        Height = 17
        Cursor = crHandPoint
        Caption = 'million years'
        TabOrder = 2
      end
    end
    object Edit11: TEdit
      Left = 120
      Top = 80
      Width = 41
      Height = 21
      TabOrder = 4
      Text = '12'
    end
    object Edit12: TEdit
      Left = 280
      Top = 80
      Width = 41
      Height = 21
      TabOrder = 5
      Text = '-11'
    end
    object Edit13: TEdit
      Left = 120
      Top = 112
      Width = 41
      Height = 21
      TabOrder = 6
      Text = '1'
    end
    object Edit14: TEdit
      Left = 200
      Top = 112
      Width = 41
      Height = 21
      TabOrder = 7
      Text = '-11'
    end
    object Edit15: TEdit
      Left = 56
      Top = 144
      Width = 49
      Height = 21
      TabOrder = 8
      Text = '0'
    end
    object Button6: TButton
      Left = 8
      Top = 240
      Width = 361
      Height = 17
      Cursor = crHandPoint
      Caption = 'set to defaults'
      TabOrder = 9
      OnClick = Button6Click
    end
    object Edit17: TEdit
      Left = 56
      Top = 176
      Width = 49
      Height = 21
      TabOrder = 10
      Text = '0,8'
    end
    object CheckBox2: TCheckBox
      Left = 160
      Top = 160
      Width = 169
      Height = 17
      Cursor = crHandPoint
      Caption = 'print orbit elements'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object CheckBox3: TCheckBox
      Left = 160
      Top = 184
      Width = 169
      Height = 17
      Cursor = crHandPoint
      Caption = 'print heliocentric coordinates'
      Checked = True
      State = cbChecked
      TabOrder = 12
    end
    object CheckBox4: TCheckBox
      Left = 160
      Top = 208
      Width = 121
      Height = 17
      Cursor = crHandPoint
      Caption = 'backup values every'
      Checked = True
      State = cbChecked
      TabOrder = 13
    end
    object SpinEdit1: TSpinEdit
      Left = 280
      Top = 200
      Width = 57
      Height = 22
      MaxValue = 100000
      MinValue = 1
      TabOrder = 14
      Value = 10
    end
    object Edit22: TEdit
      Left = 56
      Top = 208
      Width = 49
      Height = 21
      TabOrder = 15
      Text = '0,25'
    end
    object CheckBox5: TCheckBox
      Left = 256
      Top = 112
      Width = 113
      Height = 17
      Cursor = crHandPoint
      Caption = 'abort if step to small'
      Checked = True
      State = cbChecked
      TabOrder = 16
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 305
    Height = 489
    Caption = 'objects'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 9
      Height = 13
      Caption = 'a:'
    end
    object Label2: TLabel
      Left = 16
      Top = 48
      Width = 9
      Height = 13
      Caption = 'e:'
    end
    object Label3: TLabel
      Left = 16
      Top = 72
      Width = 5
      Height = 13
      Caption = 'i:'
    end
    object Label4: TLabel
      Left = 16
      Top = 96
      Width = 11
      Height = 13
      Caption = 'w:'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 160
      Top = 24
      Width = 12
      Height = 13
      Caption = 'W:'
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Symbol'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 160
      Top = 48
      Width = 12
      Height = 13
      Caption = 'M:'
    end
    object Label7: TLabel
      Left = 128
      Top = 24
      Width = 15
      Height = 13
      Caption = 'AU'
    end
    object Label8: TLabel
      Left = 128
      Top = 72
      Width = 4
      Height = 13
      Caption = #176
    end
    object Label9: TLabel
      Left = 128
      Top = 96
      Width = 4
      Height = 13
      Caption = #176
    end
    object Label10: TLabel
      Left = 272
      Top = 24
      Width = 4
      Height = 13
      Caption = #176
    end
    object Label11: TLabel
      Left = 272
      Top = 48
      Width = 4
      Height = 13
      Caption = #176
    end
    object Label12: TLabel
      Left = 160
      Top = 72
      Width = 11
      Height = 13
      Caption = 'm:'
    end
    object Label13: TLabel
      Left = 272
      Top = 72
      Width = 22
      Height = 13
      Caption = 'Msol'
    end
    object Label14: TLabel
      Left = 160
      Top = 96
      Width = 29
      Height = 13
      Caption = 'name:'
    end
    object Label24: TLabel
      Left = 128
      Top = 48
      Width = 3
      Height = 13
    end
    object Label25: TLabel
      Left = 16
      Top = 96
      Width = 3
      Height = 13
      Visible = False
    end
    object Label26: TLabel
      Left = 160
      Top = 24
      Width = 3
      Height = 13
      Visible = False
    end
    object Edit1: TEdit
      Left = 32
      Top = 16
      Width = 89
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 32
      Top = 40
      Width = 89
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 32
      Top = 64
      Width = 89
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 32
      Top = 88
      Width = 89
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 176
      Top = 16
      Width = 89
      Height = 21
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 176
      Top = 40
      Width = 89
      Height = 21
      TabOrder = 5
    end
    object Button1: TButton
      Left = 8
      Top = 120
      Width = 73
      Height = 25
      Cursor = crHandPoint
      Caption = 'add'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 88
      Top = 120
      Width = 73
      Height = 25
      Cursor = crHandPoint
      Caption = 'remove'
      TabOrder = 7
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 168
      Top = 120
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'edit'
      TabOrder = 8
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 248
      Top = 120
      Width = 49
      Height = 25
      Cursor = crHandPoint
      Caption = 'ok'
      Enabled = False
      TabOrder = 9
      OnClick = Button4Click
    end
    object Edit7: TEdit
      Left = 176
      Top = 64
      Width = 89
      Height = 21
      TabOrder = 10
    end
    object Edit8: TEdit
      Left = 200
      Top = 88
      Width = 97
      Height = 21
      TabOrder = 11
    end
    object RadioButton4: TRadioButton
      Left = 8
      Top = 464
      Width = 73
      Height = 17
      Cursor = crHandPoint
      Caption = 'elements'
      Checked = True
      TabOrder = 12
      TabStop = True
      OnClick = RadioButton4Click
    end
    object RadioButton5: TRadioButton
      Left = 104
      Top = 464
      Width = 89
      Height = 17
      Cursor = crHandPoint
      Caption = 'heliocentric'
      TabOrder = 13
      OnClick = RadioButton5Click
    end
    object RadioButton6: TRadioButton
      Left = 208
      Top = 464
      Width = 89
      Height = 17
      Cursor = crHandPoint
      Caption = 'barycentric'
      TabOrder = 14
      OnClick = RadioButton6Click
    end
    object ListBox1: TListBox
      Left = 8
      Top = 152
      Width = 289
      Height = 153
      Cursor = crHandPoint
      ItemHeight = 13
      TabOrder = 15
      OnClick = ListBox1Click
    end
    object ListBox2: TListBox
      Left = 8
      Top = 304
      Width = 289
      Height = 153
      Cursor = crHandPoint
      ItemHeight = 13
      TabOrder = 16
      OnClick = ListBox2Click
    end
  end
  object Button5: TButton
    Left = 320
    Top = 280
    Width = 377
    Height = 49
    Cursor = crHandPoint
    Caption = 'calculate'
    TabOrder = 2
    OnClick = Button5Click
  end
  object GroupBox4: TGroupBox
    Left = 488
    Top = 336
    Width = 209
    Height = 161
    Caption = 'state of calculation'
    TabOrder = 3
    object Gauge1: TGauge
      Left = 8
      Top = 40
      Width = 193
      Height = 33
      ForeColor = clBlue
      Progress = 0
    end
    object Label28: TLabel
      Left = 8
      Top = 24
      Width = 87
      Height = 13
      Caption = 'recent calculation:'
    end
    object Label29: TLabel
      Left = 8
      Top = 88
      Width = 50
      Height = 13
      Caption = 'sequence:'
    end
    object Gauge2: TGauge
      Left = 8
      Top = 104
      Width = 193
      Height = 33
      ForeColor = clBlue
      Progress = 0
    end
  end
  object GroupBox5: TGroupBox
    Left = 320
    Top = 336
    Width = 161
    Height = 161
    Caption = 'save-path for results'
    TabOrder = 4
    object Label30: TLabel
      Left = 8
      Top = 88
      Width = 68
      Height = 13
      Caption = 'orbit elements:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 8
      Top = 112
      Width = 58
      Height = 13
      Caption = 'coordinates:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 8
      Top = 136
      Width = 73
      Height = 13
      Caption = 'backup values:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit18: TEdit
      Left = 8
      Top = 24
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'C:\'
    end
    object Button7: TButton
      Left = 8
      Top = 48
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Caption = 'change path'
      TabOrder = 1
      OnClick = Button7Click
    end
    object Edit19: TEdit
      Left = 96
      Top = 80
      Width = 57
      Height = 21
      TabOrder = 2
      Text = 'ele.dat'
    end
    object Edit20: TEdit
      Left = 96
      Top = 104
      Width = 57
      Height = 21
      TabOrder = 3
      Text = 'coo.dat'
    end
    object Edit21: TEdit
      Left = 96
      Top = 128
      Width = 57
      Height = 21
      TabOrder = 4
      Text = 'sav.dat'
    end
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 320
    object Datei1: TMenuItem
      Caption = 'File'
      ShortCut = 16467
      object Neu1: TMenuItem
        Caption = 'New'
        ShortCut = 16462
        OnClick = Neu1Click
      end
      object ffnen1: TMenuItem
        Caption = 'Open'
        ShortCut = 16463
        OnClick = ffnen1Click
      end
      object Speichern1: TMenuItem
        Caption = 'Save'
        ShortCut = 16467
        OnClick = Speichern1Click
      end
      object Beenden1: TMenuItem
        Caption = 'Close'
        ShortCut = 16499
        OnClick = Beenden1Click
      end
    end
    object Scans1: TMenuItem
      Caption = 'Scans'
      OnClick = Scans1Click
    end
    object Exoplanets1: TMenuItem
      Caption = 'Exoplanets'
      object Calculations1: TMenuItem
        Caption = 'Calculation'
        OnClick = Calculations1Click
      end
      object syntheticradialvelocitycurves1: TMenuItem
        Caption = 'Evaluation'
        OnClick = syntheticradialvelocitycurves1Click
      end
    end
    object Auswertung1: TMenuItem
      Caption = 'Evaluation'
      object N2DDarstellung1: TMenuItem
        Caption = 'Tables'
        OnClick = N2DDarstellung1Click
      end
      object N3DDarstellung1: TMenuItem
        Caption = 'Diagrams'
        OnClick = N3DDarstellung1Click
      end
      object Datenexportieren1: TMenuItem
        Caption = 'Stability maps'
        OnClick = Datenexportieren1Click
      end
      object N3DAnimation1: TMenuItem
        Caption = '3D-Animation'
        OnClick = N3DAnimation1Click
      end
    end
    object Hilfe1: TMenuItem
      Caption = 'Help'
      object shortManuel1: TMenuItem
        Caption = 'Short manual'
        ShortCut = 112
        OnClick = shortManuel1Click
      end
      object ReportBugs1: TMenuItem
        Caption = 'Report bugs'
        OnClick = ReportBugs1Click
      end
      object About1: TMenuItem
        Caption = 'About'
        OnClick = About1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 64
    Top = 320
  end
  object SaveDialog1: TSaveDialog
    Left = 96
    Top = 320
  end
  object SaveDialog2: TSaveDialog
    Left = 432
    Top = 384
  end
end
