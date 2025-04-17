object Form4: TForm4
  Left = 235
  Top = 127
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - Evaluation - Diagrams'
  ClientHeight = 452
  ClientWidth = 792
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
    Left = 184
    Top = 8
    Width = 600
    Height = 400
    Cursor = crCross
    OnMouseDown = PaintBox1MouseDown
    OnMouseMove = PaintBox1MouseMove
    OnMouseUp = PaintBox1MouseUp
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 169
    Height = 401
    Caption = 'normal file setting'
    Enabled = False
    TabOrder = 5
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 65
      Height = 13
      Caption = 'orbit elements'
    end
    object Label2: TLabel
      Left = 8
      Top = 136
      Width = 34
      Height = 13
      Caption = 'objects'
    end
    object Label3: TLabel
      Left = 8
      Top = 304
      Width = 20
      Height = 13
      Caption = 'from'
    end
    object Label4: TLabel
      Left = 92
      Top = 304
      Width = 9
      Height = 13
      Caption = 'to'
    end
    object Label5: TLabel
      Left = 8
      Top = 280
      Width = 66
      Height = 13
      Caption = 'y-axis  values:'
    end
    object Label6: TLabel
      Left = 8
      Top = 328
      Width = 106
      Height = 13
      Caption = 'time intervall (in years):'
    end
    object Label7: TLabel
      Left = 8
      Top = 352
      Width = 20
      Height = 13
      Caption = 'from'
    end
    object Label8: TLabel
      Left = 92
      Top = 352
      Width = 9
      Height = 13
      Caption = 'to'
    end
    object ListBox1: TListBox
      Left = 8
      Top = 40
      Width = 145
      Height = 89
      ItemHeight = 13
      Items.Strings = (
        'semi-major axis'
        'eccentricity'
        'inclination'
        'argument of perihelion'
        'longitude of ascending node'
        'mean anomaly')
      TabOrder = 0
    end
    object ListBox2: TListBox
      Left = 8
      Top = 152
      Width = 145
      Height = 121
      ItemHeight = 13
      MultiSelect = True
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 32
      Top = 296
      Width = 57
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object Edit2: TEdit
      Left = 104
      Top = 296
      Width = 57
      Height = 21
      TabOrder = 3
      Text = '1'
    end
    object Edit3: TEdit
      Left = 32
      Top = 344
      Width = 57
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object Edit4: TEdit
      Left = 104
      Top = 344
      Width = 57
      Height = 21
      TabOrder = 5
      Text = '1000000'
    end
    object CheckBox1: TCheckBox
      Left = 32
      Top = 376
      Width = 105
      Height = 17
      Cursor = crHandPoint
      Caption = 'show minor ticks'
      TabOrder = 6
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 169
    Height = 401
    Caption = 'scan file setting'
    Enabled = False
    TabOrder = 7
    Visible = False
    object Label9: TLabel
      Left = 8
      Top = 16
      Width = 33
      Height = 13
      Caption = 'y-axis'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 224
      Width = 20
      Height = 13
      Caption = 'from'
    end
    object Label11: TLabel
      Left = 88
      Top = 224
      Width = 9
      Height = 13
      Caption = 'to'
    end
    object Label12: TLabel
      Left = 8
      Top = 280
      Width = 33
      Height = 13
      Caption = 'x-axis'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 8
      Top = 352
      Width = 20
      Height = 13
      Caption = 'from'
    end
    object Label14: TLabel
      Left = 88
      Top = 352
      Width = 9
      Height = 13
      Caption = 'to'
    end
    object Label15: TLabel
      Left = 8
      Top = 32
      Width = 36
      Height = 13
      Caption = 'feature:'
    end
    object Label16: TLabel
      Left = 8
      Top = 72
      Width = 81
      Height = 13
      Caption = 'for orbit element: '
    end
    object Label17: TLabel
      Left = 8
      Top = 112
      Width = 52
      Height = 13
      Caption = 'for objects:'
    end
    object Label19: TLabel
      Left = 8
      Top = 296
      Width = 93
      Height = 13
      Caption = 'variable parameter: '
    end
    object Label18: TLabel
      Left = 8
      Top = 256
      Width = 49
      Height = 13
      Caption = 'limit value:'
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 48
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = '---select here ---'
      Items.Strings = (
        'maximum'
        'minimum'
        'time until maximum'
        'time until minimum'
        'time until greater than a limit'
        'final value')
    end
    object ComboBox2: TComboBox
      Left = 8
      Top = 88
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = '---select here ---'
      Items.Strings = (
        'semi-major axis'
        'eccentricity'
        'inclination'
        'argument of perihelion'
        'longitude of ascending node'
        'mean anomaly')
    end
    object Edit5: TEdit
      Left = 32
      Top = 216
      Width = 49
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object Edit6: TEdit
      Left = 104
      Top = 216
      Width = 49
      Height = 21
      TabOrder = 3
      Text = '1'
    end
    object ComboBox3: TComboBox
      Left = 8
      Top = 312
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Text = '---select here ---'
    end
    object Edit7: TEdit
      Left = 32
      Top = 344
      Width = 49
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object Edit8: TEdit
      Left = 104
      Top = 344
      Width = 49
      Height = 21
      TabOrder = 6
      Text = '1'
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 376
      Width = 97
      Height = 17
      Cursor = crHandPoint
      Caption = 'show minor ticks'
      TabOrder = 7
    end
    object ListBox3: TListBox
      Left = 8
      Top = 128
      Width = 145
      Height = 81
      ItemHeight = 13
      MultiSelect = True
      TabOrder = 8
    end
    object Edit9: TEdit
      Left = 64
      Top = 248
      Width = 89
      Height = 21
      TabOrder = 9
      Text = '0,8'
    end
    object Button7: TButton
      Left = 112
      Top = 376
      Width = 51
      Height = 17
      Cursor = crHandPoint
      Caption = 'stable ele.'
      TabOrder = 10
      OnClick = Button7Click
    end
  end
  object Button1: TButton
    Left = 136
    Top = 416
    Width = 121
    Height = 33
    Cursor = crHandPoint
    Caption = 'select scan file'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 648
    Top = 416
    Width = 137
    Height = 33
    Cursor = crHandPoint
    Caption = 'close'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 392
    Top = 416
    Width = 121
    Height = 33
    Cursor = crHandPoint
    Caption = 'draw diagram'
    Enabled = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 520
    Top = 416
    Width = 121
    Height = 33
    Cursor = crHandPoint
    Caption = 'save graphic'
    Enabled = False
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 416
    Width = 121
    Height = 33
    Cursor = crHandPoint
    Caption = 'select normal file'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 264
    Top = 416
    Width = 121
    Height = 33
    Cursor = crHandPoint
    Caption = 'edit colour palette'
    TabOrder = 6
    OnClick = Button6Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 'scan-files|*info.dat'
    Left = 232
    Top = 416
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 616
    Top = 416
  end
  object OpenDialog2: TOpenDialog
    Left = 104
    Top = 416
  end
end
