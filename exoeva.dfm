object Form15: TForm15
  Left = 263
  Top = 206
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - Exoplanets - Evaluation'
  ClientHeight = 512
  ClientWidth = 822
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
  object PaintBox1: TPaintBox
    Left = 216
    Top = 8
    Width = 600
    Height = 400
    Cursor = crCross
    OnMouseDown = PaintBox1MouseDown
    OnMouseMove = PaintBox1MouseMove
    OnMouseUp = PaintBox1MouseUp
  end
  object Label15: TLabel
    Left = 8
    Top = 227
    Width = 148
    Height = 13
    Caption = 'visible right-of-comma positions:'
  end
  object Button1: TButton
    Left = 216
    Top = 416
    Width = 201
    Height = 41
    Cursor = crHandPoint
    Caption = 'select file'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 424
    Top = 416
    Width = 193
    Height = 41
    Cursor = crHandPoint
    Caption = 'calculate variations'
    Enabled = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 624
    Top = 416
    Width = 193
    Height = 41
    Cursor = crHandPoint
    Caption = 'calculate radial-velocity curve'
    Enabled = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 424
    Top = 464
    Width = 193
    Height = 41
    Cursor = crHandPoint
    Caption = 'save data'
    Enabled = False
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 624
    Top = 464
    Width = 193
    Height = 41
    Cursor = crHandPoint
    Caption = 'save diagramm'
    Enabled = False
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 216
    Top = 464
    Width = 201
    Height = 41
    Cursor = crHandPoint
    Caption = 'close'
    TabOrder = 5
    OnClick = Button6Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 201
    Height = 217
    Caption = 'radial-velocity curve - settings'
    TabOrder = 6
    object Label1: TLabel
      Left = 8
      Top = 88
      Width = 93
      Height = 13
      Caption = 'radial velocity: from '
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 45
      Height = 13
      Caption = 'time: from'
    end
    object Label3: TLabel
      Left = 160
      Top = 56
      Width = 28
      Height = 13
      Caption = '[days]'
    end
    object Label4: TLabel
      Left = 40
      Top = 56
      Width = 9
      Height = 13
      Caption = 'to'
    end
    object Label5: TLabel
      Left = 160
      Top = 32
      Width = 28
      Height = 13
      Caption = '[days]'
    end
    object Label6: TLabel
      Left = 160
      Top = 88
      Width = 24
      Height = 13
      Caption = '[m/s]'
    end
    object Label7: TLabel
      Left = 160
      Top = 112
      Width = 24
      Height = 13
      Caption = '[m/s]'
    end
    object Label8: TLabel
      Left = 80
      Top = 112
      Width = 9
      Height = 13
      Caption = 'to'
    end
    object Label9: TLabel
      Left = 8
      Top = 168
      Width = 80
      Height = 13
      Caption = 'angle of fix point:'
    end
    object Label10: TLabel
      Left = 160
      Top = 144
      Width = 10
      Height = 13
      Caption = '['#176']'
    end
    object Label11: TLabel
      Left = 160
      Top = 168
      Width = 10
      Height = 13
      Caption = '['#176']'
    end
    object Label12: TLabel
      Left = 8
      Top = 144
      Width = 97
      Height = 13
      Caption = 'inclination of system:'
    end
    object Edit1: TEdit
      Left = 64
      Top = 24
      Width = 89
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Edit2: TEdit
      Left = 64
      Top = 48
      Width = 89
      Height = 21
      TabOrder = 1
      Text = '356,25'
    end
    object Edit3: TEdit
      Left = 104
      Top = 80
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '-1000'
    end
    object Edit4: TEdit
      Left = 104
      Top = 104
      Width = 49
      Height = 21
      TabOrder = 3
      Text = '1000'
    end
    object Edit5: TEdit
      Left = 112
      Top = 136
      Width = 41
      Height = 21
      TabOrder = 4
      Text = '90'
    end
    object Edit6: TEdit
      Left = 112
      Top = 160
      Width = 41
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 192
      Width = 185
      Height = 17
      Cursor = crHandPoint
      Caption = 'output numerical values too'
      TabOrder = 6
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 416
    Width = 201
    Height = 89
    ScrollBars = ssBoth
    TabOrder = 7
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 248
    Width = 201
    Height = 161
    Caption = 'variations in orbit elemets - settings'
    TabOrder = 8
    object Label13: TLabel
      Left = 8
      Top = 16
      Width = 68
      Height = 13
      Caption = 'orbit elements:'
    end
    object Label14: TLabel
      Left = 8
      Top = 88
      Width = 52
      Height = 13
      Caption = 'for planets:'
    end
    object ListBox1: TListBox
      Left = 8
      Top = 32
      Width = 185
      Height = 49
      ItemHeight = 13
      Items.Strings = (
        'semi-major axis'
        'eccentricity'
        'inclination')
      MultiSelect = True
      TabOrder = 0
    end
    object ListBox2: TListBox
      Left = 8
      Top = 104
      Width = 185
      Height = 49
      ItemHeight = 13
      MultiSelect = True
      TabOrder = 1
    end
  end
  object SpinEdit1: TSpinEdit
    Left = 160
    Top = 224
    Width = 49
    Height = 22
    MaxValue = 17
    MinValue = 1
    TabOrder = 9
    Value = 3
  end
  object OpenDialog1: TOpenDialog
    Filter = 'exo-files|*exo.dat'
    Left = 720
    Top = 8
  end
  object SaveDialog1: TSaveDialog
    Left = 752
    Top = 8
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 784
    Top = 8
  end
end
