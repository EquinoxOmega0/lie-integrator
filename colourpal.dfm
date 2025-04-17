object Form10: TForm10
  Left = 556
  Top = 273
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - Evaluation - Colour palette'
  ClientHeight = 165
  ClientWidth = 374
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
  object Shape1: TShape
    Left = 112
    Top = 24
    Width = 49
    Height = 137
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 68
    Height = 13
    Caption = 'blue green red'
  end
  object Label4: TLabel
    Left = 120
    Top = 8
    Width = 29
    Height = 13
    Caption = 'colour'
  end
  object ListBox1: TListBox
    Left = 8
    Top = 24
    Width = 97
    Height = 137
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 20
    Items.Strings = (
      'FF0000'
      '00FF00'
      '0000FF'
      'FFFF00'
      '00FFFF'
      'FF00FF')
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object Button1: TButton
    Left = 168
    Top = 8
    Width = 201
    Height = 25
    Cursor = crHandPoint
    Caption = 'add colour'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 40
    Width = 201
    Height = 25
    Cursor = crHandPoint
    Caption = 'remove colour'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 168
    Top = 72
    Width = 201
    Height = 25
    Cursor = crHandPoint
    Caption = 'move up'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 168
    Top = 104
    Width = 201
    Height = 25
    Cursor = crHandPoint
    Caption = 'move down'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 168
    Top = 136
    Width = 201
    Height = 25
    Cursor = crHandPoint
    Caption = 'close'
    TabOrder = 5
    OnClick = Button5Click
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 336
    Top = 8
  end
end
