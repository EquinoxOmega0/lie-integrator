object Form8: TForm8
  Left = 741
  Top = 359
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - Scans - resonances'
  ClientHeight = 136
  ClientWidth = 317
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
    Left = 64
    Top = 16
    Width = 5
    Height = 16
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 144
    Top = 24
    Width = 50
    Height = 13
    Caption = 'resonance'
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 93
    Height = 13
    Caption = 'for an orbit with a of'
  end
  object Label4: TLabel
    Left = 168
    Top = 56
    Width = 15
    Height = 13
    Caption = 'AU'
  end
  object Label5: TLabel
    Left = 168
    Top = 88
    Width = 15
    Height = 13
    Caption = 'AU'
  end
  object Label6: TLabel
    Left = 8
    Top = 88
    Width = 99
    Height = 13
    Caption = 'width of resonance '#177
  end
  object Label7: TLabel
    Left = 8
    Top = 112
    Width = 190
    Height = 13
    Caption = 'Result: scan from 0,000 AU to 0,000 AU'
  end
  object SpinEdit1: TSpinEdit
    Left = 8
    Top = 16
    Width = 49
    Height = 22
    MaxValue = 1000000000
    MinValue = 1
    TabOrder = 0
    Value = 1
  end
  object SpinEdit2: TSpinEdit
    Left = 80
    Top = 16
    Width = 49
    Height = 22
    MaxValue = 1000000000
    MinValue = 1
    TabOrder = 1
    Value = 1
  end
  object Button1: TButton
    Left = 216
    Top = 48
    Width = 97
    Height = 33
    Cursor = crHandPoint
    Caption = 'accept'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 88
    Width = 97
    Height = 41
    Cursor = crHandPoint
    Caption = 'abort'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 112
    Top = 48
    Width = 49
    Height = 21
    TabOrder = 4
    Text = '1'
  end
  object Button3: TButton
    Left = 216
    Top = 8
    Width = 97
    Height = 33
    Cursor = crHandPoint
    Caption = 'pre-calculate'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Edit2: TEdit
    Left = 112
    Top = 80
    Width = 49
    Height = 21
    TabOrder = 6
    Text = '0,1'
  end
end
