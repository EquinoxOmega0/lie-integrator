object Form6: TForm6
  Left = 295
  Top = 173
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - Short Manual'
  ClientHeight = 373
  ClientWidth = 533
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
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 43
    Height = 16
    Caption = 'topics'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 144
    Top = 8
    Width = 40
    Height = 13
    Caption = 'help-text'
  end
  object Button1: TButton
    Left = 8
    Top = 336
    Width = 521
    Height = 33
    Cursor = crHandPoint
    Caption = 'close'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 144
    Top = 24
    Width = 385
    Height = 305
    Lines.Strings = (
      ''
      '- - - please select topic - - -')
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object ListBox1: TListBox
    Left = 8
    Top = 24
    Width = 129
    Height = 305
    Cursor = crHandPoint
    ItemHeight = 13
    Sorted = True
    TabOrder = 2
    OnClick = ListBox1Click
  end
end
