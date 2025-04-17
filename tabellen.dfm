object Form3: TForm3
  Left = 538
  Top = 265
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - Evaluation -  Tables'
  ClientHeight = 600
  ClientWidth = 583
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
  object Label5: TLabel
    Left = 368
    Top = 208
    Width = 148
    Height = 13
    Caption = 'visible right-of-comma positions:'
  end
  object Label6: TLabel
    Left = 8
    Top = 208
    Width = 52
    Height = 13
    Caption = 'recent file: '
  end
  object Label7: TLabel
    Left = 64
    Top = 208
    Width = 297
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '-'
  end
  object Memo1: TMemo
    Left = 8
    Top = 272
    Width = 569
    Height = 321
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 193
    Caption = 'orbit elements'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 42
      Height = 13
      Caption = 'selection'
    end
    object Label3: TLabel
      Left = 168
      Top = 16
      Width = 35
      Height = 13
      Caption = 'chosen'
    end
    object ListBox1: TListBox
      Left = 8
      Top = 32
      Width = 105
      Height = 153
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'time'
        'semi-major axis'
        'eccentricity'
        'inclination'
        'argument of perihelion'
        'longitude of ascending node'
        'mean anomaly'
        'sum of angles')
      ParentFont = False
      TabOrder = 0
    end
    object ListBox2: TListBox
      Left = 168
      Top = 32
      Width = 105
      Height = 153
      ItemHeight = 13
      TabOrder = 1
    end
    object Button1: TButton
      Left = 120
      Top = 32
      Width = 41
      Height = 33
      Cursor = crHandPoint
      Caption = '>'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 120
      Top = 72
      Width = 41
      Height = 33
      Cursor = crHandPoint
      Caption = '>>'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 120
      Top = 112
      Width = 41
      Height = 33
      Cursor = crHandPoint
      Caption = '<'
      TabOrder = 4
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 120
      Top = 152
      Width = 41
      Height = 33
      Cursor = crHandPoint
      Caption = '<<'
      TabOrder = 5
      OnClick = Button4Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 296
    Top = 8
    Width = 281
    Height = 193
    Caption = 'for objects'
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 42
      Height = 13
      Caption = 'selection'
    end
    object Label4: TLabel
      Left = 168
      Top = 16
      Width = 35
      Height = 13
      Caption = 'chosen'
    end
    object ListBox3: TListBox
      Left = 8
      Top = 32
      Width = 105
      Height = 153
      ItemHeight = 13
      TabOrder = 0
    end
    object ListBox4: TListBox
      Left = 168
      Top = 32
      Width = 105
      Height = 153
      ItemHeight = 13
      TabOrder = 1
    end
    object Button6: TButton
      Left = 120
      Top = 32
      Width = 41
      Height = 33
      Cursor = crHandPoint
      Caption = '>'
      TabOrder = 2
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 120
      Top = 72
      Width = 41
      Height = 33
      Cursor = crHandPoint
      Caption = '>>'
      TabOrder = 3
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 120
      Top = 112
      Width = 41
      Height = 33
      Cursor = crHandPoint
      Caption = '<'
      TabOrder = 4
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 120
      Top = 152
      Width = 41
      Height = 33
      Cursor = crHandPoint
      Caption = '<<'
      TabOrder = 5
      OnClick = Button9Click
    end
  end
  object Button5: TButton
    Left = 104
    Top = 232
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'show full data'
    Enabled = False
    TabOrder = 3
    OnClick = Button5Click
  end
  object Button10: TButton
    Left = 200
    Top = 232
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'search maximas'
    Enabled = False
    TabOrder = 4
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 296
    Top = 232
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'search minimas'
    Enabled = False
    TabOrder = 5
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 392
    Top = 232
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'save'
    TabOrder = 6
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 488
    Top = 232
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'close window'
    TabOrder = 7
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 8
    Top = 232
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = 'select result file'
    TabOrder = 8
    OnClick = Button14Click
  end
  object SpinEdit1: TSpinEdit
    Left = 528
    Top = 208
    Width = 49
    Height = 22
    MaxValue = 17
    MinValue = 1
    TabOrder = 9
    Value = 3
  end
  object SaveDialog1: TSaveDialog
    Left = 544
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 512
    Top = 8
  end
end
