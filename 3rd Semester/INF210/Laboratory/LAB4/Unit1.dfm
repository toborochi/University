object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 151
  ClientWidth = 472
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
    Left = 16
    Top = 79
    Width = 46
    Height = 13
    Caption = 'Columnas'
  end
  object Label2: TLabel
    Left = 41
    Top = 110
    Width = 21
    Height = 13
    Caption = 'Filas'
  end
  object StringGrid1: TStringGrid
    Left = 136
    Top = 8
    Width = 328
    Height = 129
    ColCount = 2
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 122
    Height = 25
    Caption = 'Crear'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 73
    Top = 74
    Width = 25
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 97
    Top = 74
    Width = 25
    Height = 25
    Caption = '-'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 73
    Top = 105
    Width = 25
    Height = 25
    Caption = '+'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 97
    Top = 105
    Width = 25
    Height = 25
    Caption = '-'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 39
    Width = 122
    Height = 25
    Caption = 'Aplicar'
    TabOrder = 6
    OnClick = Button6Click
  end
end
