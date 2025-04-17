object Form13: TForm13
  Left = 467
  Top = 275
  BorderStyle = bsDialog
  Caption = 'Lie-Integrator - Report bugs'
  ClientHeight = 261
  ClientWidth = 480
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
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 465
    Height = 209
    Lines.Strings = (
      
        'Bugs or small program errors can always happen, although I hope ' +
        'that I'#39've done my best to '
      
        'prevent them. But what can you do if you find one in this Lie-In' +
        'tegrator?'
      ''
      'Well, thats quite simple: just send me an E-mail!'
      ''
      
        'Make sure that you include following informations into this E-ma' +
        'il:'
      ''
      
        'x   Which feature of the program did you use when the bug appear' +
        'ed?'
      
        'x   What values have you entered into the input field and which ' +
        'button did you press?'
      
        'x   If you have an useful save-file, please append it to the E-m' +
        'ail.'
      
        'x   Discribe the effect of the bug as detailed as possible(error' +
        ' messages, did the program crash?).'
      ''
      'Thank you!'
      'My E-mail address is EquinoxOmega@yahoo.de .')
    ReadOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 224
    Width = 465
    Height = 33
    Cursor = crHandPoint
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
