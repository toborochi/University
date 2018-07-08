object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Sierpinsky Triangle'
  ClientHeight = 326
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 368
    Top = 8
    Width = 71
    Height = 25
    Caption = 'Comenzar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 368
    Top = 39
    Width = 71
    Height = 21
    TabOrder = 1
    Text = '120'
  end
  object Edit2: TEdit
    Left = 368
    Top = 66
    Width = 71
    Height = 21
    TabOrder = 2
    Text = '120'
  end
  object Button2: TButton
    Left = 368
    Top = 93
    Width = 71
    Height = 25
    Caption = 'Colocar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 368
    Top = 148
    Width = 71
    Height = 25
    Caption = 'Generar'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Edit3: TEdit
    Left = 368
    Top = 124
    Width = 71
    Height = 21
    TabOrder = 5
    Text = '100'
  end
end
