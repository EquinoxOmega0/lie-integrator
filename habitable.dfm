object Form9: TForm9
  Left = 355
  Top = 336
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - Scans - habitable zone'
  ClientHeight = 270
  ClientWidth = 318
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
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 91
    Height = 13
    Caption = 'temperature of star:'
  end
  object Label2: TLabel
    Left = 280
    Top = 16
    Width = 7
    Height = 13
    Caption = 'K'
  end
  object Label3: TLabel
    Left = 8
    Top = 48
    Width = 63
    Height = 13
    Caption = 'radius of star:'
  end
  object Label4: TLabel
    Left = 280
    Top = 48
    Width = 21
    Height = 13
    Caption = 'Rsol'
  end
  object Label5: TLabel
    Left = 8
    Top = 80
    Width = 32
    Height = 13
    Caption = 'albedo'
  end
  object Label6: TLabel
    Left = 8
    Top = 144
    Width = 181
    Height = 13
    Caption = 'minimal surface temperature of planet: '
  end
  object Label7: TLabel
    Left = 8
    Top = 176
    Width = 184
    Height = 13
    Caption = 'maximal surface temperature of planet: '
  end
  object Label8: TLabel
    Left = 280
    Top = 144
    Width = 7
    Height = 13
    Caption = 'K'
  end
  object Label9: TLabel
    Left = 280
    Top = 176
    Width = 7
    Height = 13
    Caption = 'K'
  end
  object Label10: TLabel
    Left = 8
    Top = 208
    Width = 236
    Height = 13
    Caption = 'Result: habitable zone from 0,000 AU to 0,000 AU'
  end
  object Label11: TLabel
    Left = 8
    Top = 112
    Width = 85
    Height = 13
    Caption = 'atmosphere factor'
  end
  object Edit1: TEdit
    Left = 200
    Top = 8
    Width = 73
    Height = 21
    TabOrder = 0
    Text = '5770'
  end
  object Edit2: TEdit
    Left = 200
    Top = 40
    Width = 73
    Height = 21
    TabOrder = 1
    Text = '1'
  end
  object Edit3: TEdit
    Left = 200
    Top = 72
    Width = 73
    Height = 21
    TabOrder = 2
    Text = '0,367'
  end
  object Edit4: TEdit
    Left = 200
    Top = 136
    Width = 73
    Height = 21
    TabOrder = 3
    Text = '273'
  end
  object Edit5: TEdit
    Left = 200
    Top = 168
    Width = 73
    Height = 21
    TabOrder = 4
    Text = '323'
  end
  object Button1: TButton
    Left = 8
    Top = 232
    Width = 97
    Height = 33
    Cursor = crHandPoint
    Caption = 'pre-calculate'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 232
    Width = 97
    Height = 33
    Cursor = crHandPoint
    Caption = 'accept'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 216
    Top = 232
    Width = 97
    Height = 33
    Cursor = crHandPoint
    Caption = 'abort'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Edit6: TEdit
    Left = 200
    Top = 104
    Width = 73
    Height = 21
    TabOrder = 8
    Text = '0,81'
  end
end
