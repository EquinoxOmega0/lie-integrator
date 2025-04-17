object Form11: TForm11
  Left = 506
  Top = 87
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - Evaluation - Stability maps - colouration'
  ClientHeight = 439
  ClientWidth = 415
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 400
    Width = 401
    Height = 33
    Cursor = crHandPoint
    Caption = 'Close'
    TabOrder = 0
    OnClick = Button1Click
  end
  object RadioButton1: TRadioButton
    Left = 8
    Top = 16
    Width = 105
    Height = 17
    Cursor = crHandPoint
    Caption = 'spectral mode'
    Checked = True
    TabOrder = 1
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 8
    Top = 64
    Width = 105
    Height = 17
    Cursor = crHandPoint
    Caption = 'two color mode'
    TabOrder = 2
  end
  object RadioButton3: TRadioButton
    Left = 8
    Top = 136
    Width = 105
    Height = 17
    Cursor = crHandPoint
    Caption = 'RGB mode'
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 120
    Top = 8
    Width = 289
    Height = 41
    TabOrder = 4
    object RadioButton4: TRadioButton
      Left = 152
      Top = 16
      Width = 129
      Height = 17
      Cursor = crHandPoint
      Caption = 'violett=low; red=high'
      TabOrder = 0
    end
    object RadioButton5: TRadioButton
      Left = 8
      Top = 16
      Width = 129
      Height = 17
      Cursor = crHandPoint
      Caption = 'red=low; violett=high'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
  end
  object GroupBox2: TGroupBox
    Left = 120
    Top = 56
    Width = 289
    Height = 65
    TabOrder = 5
    object Shape1: TShape
      Left = 64
      Top = 16
      Width = 81
      Height = 33
      Cursor = crHandPoint
      OnMouseDown = Shape1MouseDown
    end
    object Shape2: TShape
      Left = 200
      Top = 16
      Width = 81
      Height = 33
      Cursor = crHandPoint
      Brush.Color = clBlack
      OnMouseDown = Shape2MouseDown
    end
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 48
      Height = 13
      Caption = 'from(=low)'
    end
    object Label2: TLabel
      Left = 152
      Top = 24
      Width = 41
      Height = 13
      Caption = 'to(=high)'
    end
  end
  object GroupBox3: TGroupBox
    Left = 120
    Top = 128
    Width = 289
    Height = 209
    TabOrder = 6
    object Label3: TLabel
      Left = 8
      Top = 72
      Width = 18
      Height = 13
      Caption = 'red:'
    end
    object Label4: TLabel
      Left = 176
      Top = 72
      Width = 9
      Height = 13
      Caption = 'to'
    end
    object Label5: TLabel
      Left = 64
      Top = 72
      Width = 20
      Height = 13
      Caption = 'from'
    end
    object Label6: TLabel
      Left = 8
      Top = 104
      Width = 30
      Height = 13
      Caption = 'green:'
    end
    object Label7: TLabel
      Left = 64
      Top = 104
      Width = 20
      Height = 13
      Caption = 'from'
    end
    object Label8: TLabel
      Left = 176
      Top = 104
      Width = 9
      Height = 13
      Caption = 'to'
    end
    object Label9: TLabel
      Left = 8
      Top = 136
      Width = 23
      Height = 13
      Caption = 'blue:'
    end
    object Label10: TLabel
      Left = 64
      Top = 136
      Width = 20
      Height = 13
      Caption = 'from'
    end
    object Label11: TLabel
      Left = 176
      Top = 136
      Width = 9
      Height = 13
      Caption = 'to'
    end
    object Edit1: TEdit
      Left = 104
      Top = 64
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Edit2: TEdit
      Left = 200
      Top = 64
      Width = 57
      Height = 21
      TabOrder = 1
      Text = '255'
    end
    object Edit3: TEdit
      Left = 104
      Top = 96
      Width = 57
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object Edit4: TEdit
      Left = 200
      Top = 96
      Width = 57
      Height = 21
      TabOrder = 3
      Text = '255'
    end
    object Edit5: TEdit
      Left = 104
      Top = 128
      Width = 57
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object Edit6: TEdit
      Left = 200
      Top = 128
      Width = 57
      Height = 21
      TabOrder = 5
      Text = '255'
    end
    object CheckBox3: TCheckBox
      Left = 200
      Top = 40
      Width = 81
      Height = 17
      Cursor = crHandPoint
      Caption = 'enable blue'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 6
    end
    object CheckBox2: TCheckBox
      Left = 104
      Top = 40
      Width = 81
      Height = 17
      Cursor = crHandPoint
      Caption = 'enable green'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 7
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 40
      Width = 81
      Height = 17
      Cursor = crHandPoint
      Caption = 'enable red'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 8
    end
    object RadioButton6: TRadioButton
      Left = 8
      Top = 16
      Width = 49
      Height = 17
      Cursor = crHandPoint
      Caption = 'mixed'
      Checked = True
      TabOrder = 9
      TabStop = True
      OnClick = RadioButton6Click
    end
    object RadioButton7: TRadioButton
      Left = 104
      Top = 16
      Width = 73
      Height = 17
      Cursor = crHandPoint
      Caption = 'sequencal'
      TabOrder = 10
      OnClick = RadioButton7Click
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 160
      Width = 249
      Height = 41
      Caption = 'sequence'
      TabOrder = 11
      object RadioButton9: TRadioButton
        Left = 8
        Top = 16
        Width = 33
        Height = 17
        Cursor = crHandPoint
        Caption = 'rgb'
        Checked = True
        Enabled = False
        TabOrder = 0
        TabStop = True
      end
      object RadioButton10: TRadioButton
        Left = 48
        Top = 16
        Width = 33
        Height = 17
        Cursor = crHandPoint
        Caption = 'gbr'
        Enabled = False
        TabOrder = 1
      end
      object RadioButton11: TRadioButton
        Left = 88
        Top = 16
        Width = 33
        Height = 17
        Cursor = crHandPoint
        Caption = 'brg'
        Enabled = False
        TabOrder = 2
      end
      object RadioButton12: TRadioButton
        Left = 128
        Top = 16
        Width = 33
        Height = 17
        Cursor = crHandPoint
        Caption = 'bgr'
        Enabled = False
        TabOrder = 3
      end
      object RadioButton13: TRadioButton
        Left = 168
        Top = 16
        Width = 33
        Height = 17
        Cursor = crHandPoint
        Caption = 'grb'
        Enabled = False
        TabOrder = 4
      end
      object RadioButton14: TRadioButton
        Left = 208
        Top = 16
        Width = 33
        Height = 17
        Cursor = crHandPoint
        Caption = 'rbg'
        Enabled = False
        TabOrder = 5
      end
    end
  end
  object RadioButton8: TRadioButton
    Left = 8
    Top = 352
    Width = 105
    Height = 17
    Cursor = crHandPoint
    Caption = 'colour sequence'
    TabOrder = 7
  end
  object GroupBox4: TGroupBox
    Left = 120
    Top = 344
    Width = 289
    Height = 49
    TabOrder = 8
    object Button2: TButton
      Left = 8
      Top = 16
      Width = 273
      Height = 25
      Cursor = crHandPoint
      Caption = 'edit colour palette'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 384
    Top = 8
  end
end
