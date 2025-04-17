object Form12: TForm12
  Left = 483
  Top = 249
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - About'
  ClientHeight = 224
  ClientWidth = 223
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
    Width = 209
    Height = 169
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 158
      Height = 29
      Caption = 'Lie-Integrator'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 64
      Width = 90
      Height = 16
      Caption = 'Version 1.0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 104
      Width = 162
      Height = 16
      Caption = 'made by Christoph Saulder'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 120
      Width = 39
      Height = 16
      Caption = #169' 2007'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 144
      Width = 167
      Height = 13
      Caption = 'free for personal and scientific use'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsItalic]
      ParentFont = False
    end
  end
  object Button1: TButton
    Left = 8
    Top = 184
    Width = 209
    Height = 33
    Cursor = crHandPoint
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
