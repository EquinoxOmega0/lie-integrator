object Form7: TForm7
  Left = 325
  Top = 94
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - Evaluation - 3D-Animation'
  ClientHeight = 477
  ClientWidth = 511
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
  object Button1: TButton
    Left = 344
    Top = 432
    Width = 161
    Height = 41
    Cursor = crHandPoint
    Caption = 'close'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 432
    Width = 161
    Height = 41
    Cursor = crHandPoint
    Caption = 'start'
    Enabled = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 241
    Height = 73
    Caption = 'mode'
    TabOrder = 2
    object RadioButton1: TRadioButton
      Left = 8
      Top = 24
      Width = 225
      Height = 17
      Cursor = crHandPoint
      Caption = 'only values from file (coordinate file)'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 48
      Width = 225
      Height = 17
      Cursor = crHandPoint
      Caption = 'interpolate between values (exo file)'
      TabOrder = 1
    end
  end
  object Button3: TButton
    Left = 8
    Top = 432
    Width = 161
    Height = 41
    Cursor = crHandPoint
    Caption = 'select file'
    TabOrder = 3
    OnClick = Button3Click
  end
  object GroupBox2: TGroupBox
    Left = 256
    Top = 32
    Width = 249
    Height = 209
    Caption = 'colouration'
    TabOrder = 4
    object Label6: TLabel
      Left = 8
      Top = 80
      Width = 17
      Height = 13
      Caption = 'star'
    end
    object Label7: TLabel
      Left = 8
      Top = 112
      Width = 29
      Height = 13
      Caption = 'planet'
    end
    object Label8: TLabel
      Left = 8
      Top = 144
      Width = 37
      Height = 13
      Caption = 'asteroid'
    end
    object Shape1: TShape
      Left = 56
      Top = 72
      Width = 57
      Height = 25
      Cursor = crHandPoint
      Brush.Color = clYellow
      OnMouseDown = Shape1MouseDown
    end
    object Shape2: TShape
      Left = 56
      Top = 104
      Width = 57
      Height = 25
      Cursor = crHandPoint
      Brush.Color = 254
      OnMouseDown = Shape2MouseDown
    end
    object Shape3: TShape
      Left = 56
      Top = 136
      Width = 57
      Height = 25
      Cursor = crHandPoint
      Brush.Color = clSilver
      OnMouseDown = Shape3MouseDown
    end
    object Label9: TLabel
      Left = 120
      Top = 80
      Width = 56
      Height = 13
      Caption = 'up to object'
    end
    object Label10: TLabel
      Left = 120
      Top = 112
      Width = 56
      Height = 13
      Caption = 'up to object'
    end
    object RadioButton4: TRadioButton
      Left = 8
      Top = 24
      Width = 121
      Height = 17
      Cursor = crHandPoint
      Caption = 'standard colouration'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton5: TRadioButton
      Left = 8
      Top = 48
      Width = 137
      Height = 17
      Cursor = crHandPoint
      Caption = 'set colour for object type'
      TabOrder = 1
    end
    object Button4: TButton
      Left = 120
      Top = 168
      Width = 113
      Height = 25
      Cursor = crHandPoint
      Caption = 'edit colour palette'
      TabOrder = 2
      OnClick = Button4Click
    end
    object RadioButton6: TRadioButton
      Left = 8
      Top = 176
      Width = 105
      Height = 17
      Cursor = crHandPoint
      Caption = 'use colour palett'
      TabOrder = 3
    end
    object SpinEdit1: TSpinEdit
      Left = 184
      Top = 72
      Width = 57
      Height = 22
      MaxValue = 1000000000
      MinValue = 0
      TabOrder = 4
      Value = 0
    end
    object SpinEdit2: TSpinEdit
      Left = 184
      Top = 104
      Width = 57
      Height = 22
      MaxValue = 1000000000
      MinValue = 1
      TabOrder = 5
      Value = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 88
    Width = 241
    Height = 97
    Caption = 'time intervall'
    TabOrder = 5
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 23
      Height = 13
      Caption = 'from '
    end
    object Label2: TLabel
      Left = 104
      Top = 32
      Width = 9
      Height = 13
      Caption = 'to'
    end
    object Label3: TLabel
      Left = 192
      Top = 32
      Width = 28
      Height = 13
      Caption = '[days]'
    end
    object Label4: TLabel
      Left = 136
      Top = 72
      Width = 95
      Height = 13
      Caption = '[days := seconds(rt)]'
    end
    object Label5: TLabel
      Left = 8
      Top = 72
      Width = 66
      Height = 13
      Caption = 'standard-time:'
    end
    object Edit1: TEdit
      Left = 40
      Top = 24
      Width = 49
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Edit2: TEdit
      Left = 128
      Top = 24
      Width = 49
      Height = 21
      TabOrder = 1
      Text = '365,25'
    end
    object Edit3: TEdit
      Left = 80
      Top = 64
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '1'
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 248
    Width = 497
    Height = 177
    Caption = 'visible objects'
    TabOrder = 6
    object Label11: TLabel
      Left = 8
      Top = 24
      Width = 74
      Height = 13
      Caption = 'invisible objects'
    end
    object Label12: TLabel
      Left = 168
      Top = 24
      Width = 71
      Height = 13
      Caption = 'visibles objects'
    end
    object Label13: TLabel
      Left = 280
      Top = 24
      Width = 99
      Height = 13
      Caption = 'radii of objects [Rjup]'
    end
    object Label14: TLabel
      Left = 464
      Top = 48
      Width = 22
      Height = 13
      Caption = 'Rjup'
    end
    object ListBox1: TListBox
      Left = 8
      Top = 40
      Width = 105
      Height = 121
      ItemHeight = 13
      Sorted = True
      TabOrder = 0
    end
    object ListBox2: TListBox
      Left = 168
      Top = 40
      Width = 105
      Height = 121
      ItemHeight = 13
      TabOrder = 1
    end
    object ListBox3: TListBox
      Left = 280
      Top = 40
      Width = 105
      Height = 121
      ItemHeight = 13
      TabOrder = 2
    end
    object Button5: TButton
      Left = 120
      Top = 72
      Width = 41
      Height = 25
      Cursor = crHandPoint
      Caption = '>>'
      TabOrder = 3
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 120
      Top = 40
      Width = 41
      Height = 25
      Cursor = crHandPoint
      Caption = '>'
      TabOrder = 4
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 120
      Top = 104
      Width = 41
      Height = 25
      Cursor = crHandPoint
      Caption = '<'
      TabOrder = 5
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 120
      Top = 136
      Width = 41
      Height = 25
      Cursor = crHandPoint
      Caption = '<<'
      TabOrder = 6
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 392
      Top = 72
      Width = 97
      Height = 17
      Cursor = crHandPoint
      Caption = 'add'
      TabOrder = 7
      OnClick = Button9Click
    end
    object Edit4: TEdit
      Left = 392
      Top = 40
      Width = 65
      Height = 21
      TabOrder = 8
      Text = '9,375'
    end
    object Button10: TButton
      Left = 392
      Top = 96
      Width = 97
      Height = 17
      Cursor = crHandPoint
      Caption = 'remove'
      TabOrder = 9
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 392
      Top = 120
      Width = 97
      Height = 17
      Cursor = crHandPoint
      Caption = 'move up'
      TabOrder = 10
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 392
      Top = 144
      Width = 97
      Height = 17
      Cursor = crHandPoint
      Caption = 'move down'
      TabOrder = 11
      OnClick = Button12Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 192
    Width = 241
    Height = 49
    Caption = 'use rotating coordinate system'
    TabOrder = 7
    object CheckBox1: TCheckBox
      Left = 8
      Top = 16
      Width = 81
      Height = 17
      Cursor = crHandPoint
      Caption = 'fix axis:  star-'
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 88
      Top = 16
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = '--- select object ---'
    end
  end
  object CheckBox2: TCheckBox
    Left = 256
    Top = 8
    Width = 249
    Height = 17
    Cursor = crHandPoint
    Caption = 'use full screen for 3D-animation'
    Checked = True
    State = cbChecked
    TabOrder = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 24
    Top = 440
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 464
    Top = 8
  end
end
