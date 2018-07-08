object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Laboratorio Nro.2 '
  ClientHeight = 183
  ClientWidth = 300
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
    Left = 24
    Top = 116
    Width = 38
    Height = 13
    Caption = 'Entrada'
  end
  object Label2: TLabel
    Left = 151
    Top = 116
    Width = 28
    Height = 13
    Caption = 'Salida'
  end
  object Button1: TButton
    Left = 48
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Aplicar SumDP'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 135
    Width = 121
    Height = 25
    TabOrder = 1
    Text = '0'
  end
  object Edit2: TEdit
    Left = 151
    Top = 135
    Width = 121
    Height = 25
    TabOrder = 2
    Text = '0'
  end
  object Button2: TButton
    Left = 151
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Aplicar SumDI'
    TabOrder = 3
    OnClick = Button2Click
  end
end
