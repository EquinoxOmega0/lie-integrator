object Form14: TForm14
  Left = 448
  Top = 192
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - Exoplanets - Calculations'
  ClientHeight = 158
  ClientWidth = 342
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
    Top = 120
    Width = 161
    Height = 33
    Cursor = crHandPoint
    Caption = 'calculate'
    Enabled = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 120
    Width = 161
    Height = 33
    Cursor = crHandPoint
    Caption = 'close'
    TabOrder = 1
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 161
    Height = 49
    Caption = 'resolution'
    TabOrder = 2
    object Label1: TLabel
      Left = 88
      Top = 24
      Width = 64
      Height = 13
      Caption = 'per revolution'
    end
    object Edit1: TEdit
      Left = 8
      Top = 16
      Width = 73
      Height = 21
      TabOrder = 0
      Text = '360'
    end
  end
  object GroupBox2: TGroupBox
    Left = 176
    Top = 8
    Width = 161
    Height = 105
    Caption = 'path'
    TabOrder = 3
    object Edit2: TEdit
      Left = 8
      Top = 24
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'C:\'
    end
    object Button3: TButton
      Left = 8
      Top = 56
      Width = 145
      Height = 41
      Cursor = crHandPoint
      Caption = 'change path'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 64
    Width = 161
    Height = 49
    Caption = 'duration'
    TabOrder = 4
    object Label2: TLabel
      Left = 88
      Top = 24
      Width = 22
      Height = 13
      Caption = 'days'
    end
    object Edit3: TEdit
      Left = 8
      Top = 16
      Width = 73
      Height = 21
      TabOrder = 0
      Text = '36525'
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 304
    Top = 8
  end
end
