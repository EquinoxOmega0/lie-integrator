object Form16: TForm16
  Left = 303
  Top = 184
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - Evaluation - stable elements'
  ClientHeight = 310
  ClientWidth = 311
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
    Left = 8
    Top = 272
    Width = 297
    Height = 33
    Cursor = crHandPoint
    Caption = 'close'
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 297
    Height = 257
    Caption = 'counter posistions for variable elements not used as axis'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 76
      Height = 13
      Caption = 'semi-major axis: '
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 60
      Height = 13
      Caption = 'eccentricity: '
    end
    object Label3: TLabel
      Left = 16
      Top = 96
      Width = 53
      Height = 13
      Caption = 'inclination: '
    end
    object Label4: TLabel
      Left = 16
      Top = 128
      Width = 110
      Height = 13
      Caption = 'argument of perihelion: '
    end
    object Label5: TLabel
      Left = 16
      Top = 160
      Width = 137
      Height = 13
      Caption = 'longitude of ascending node:'
    end
    object Label6: TLabel
      Left = 16
      Top = 192
      Width = 74
      Height = 13
      Caption = 'mean anomaly: '
    end
    object Label7: TLabel
      Left = 16
      Top = 224
      Width = 27
      Height = 13
      Caption = 'mass:'
    end
    object SpinEdit1: TSpinEdit
      Left = 192
      Top = 24
      Width = 73
      Height = 22
      MaxValue = 1000000000
      MinValue = 1
      TabOrder = 0
      Value = 1
    end
    object SpinEdit3: TSpinEdit
      Left = 192
      Top = 88
      Width = 73
      Height = 22
      MaxValue = 1000000000
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
    object SpinEdit4: TSpinEdit
      Left = 192
      Top = 120
      Width = 73
      Height = 22
      MaxValue = 1000000000
      MinValue = 1
      TabOrder = 2
      Value = 1
    end
    object SpinEdit5: TSpinEdit
      Left = 192
      Top = 152
      Width = 73
      Height = 22
      MaxValue = 1000000000
      MinValue = 1
      TabOrder = 3
      Value = 1
    end
    object SpinEdit6: TSpinEdit
      Left = 192
      Top = 184
      Width = 73
      Height = 22
      MaxValue = 1000000000
      MinValue = 1
      TabOrder = 4
      Value = 1
    end
    object SpinEdit7: TSpinEdit
      Left = 192
      Top = 216
      Width = 73
      Height = 22
      MaxValue = 1000000000
      MinValue = 1
      TabOrder = 5
      Value = 1
    end
  end
  object SpinEdit2: TSpinEdit
    Left = 200
    Top = 64
    Width = 73
    Height = 22
    MaxValue = 1000000000
    MinValue = 1
    TabOrder = 2
    Value = 1
  end
end
