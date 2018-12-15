object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 203
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 185
    Height = 185
    ColCount = 7
    DefaultColWidth = 24
    FixedCols = 0
    RowCount = 7
    FixedRows = 0
    TabOrder = 0
  end
  object Edit1: TButton
    Left = 199
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Aplicar'
    TabOrder = 1
    OnClick = Edit1Click
  end
end
