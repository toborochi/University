object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 226
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
  object Label1: TLabel
    Left = 170
    Top = 175
    Width = 46
    Height = 13
    Caption = 'Columnas'
  end
  object Label2: TLabel
    Left = 170
    Top = 197
    Width = 21
    Height = 21
    Caption = 'Filas'
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 431
    Height = 153
    FixedCols = 0
    FixedRows = 0
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Cargar #1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 89
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Cargar #2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 222
    Top = 170
    Width = 47
    Height = 21
    TabOrder = 3
    Text = '3'
  end
  object Edit2: TEdit
    Left = 222
    Top = 197
    Width = 47
    Height = 21
    TabOrder = 4
    Text = '3'
  end
end
