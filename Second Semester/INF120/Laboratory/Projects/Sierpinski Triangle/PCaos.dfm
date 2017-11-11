object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Caos'
  ClientHeight = 261
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
    Left = 360
    Top = 79
    Width = 17
    Height = 16
    Alignment = taCenter
    Caption = 'X='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 360
    Top = 106
    Width = 18
    Height = 16
    Alignment = taCenter
    Caption = 'Y='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 360
    Top = 55
    Width = 80
    Height = 16
    Alignment = taCenter
    Caption = 'Punto Inicial'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 359
    Top = 167
    Width = 80
    Height = 16
    Alignment = taCenter
    Caption = 'Pasos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 360
    Top = 8
    Width = 79
    Height = 41
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 383
    Top = 79
    Width = 56
    Height = 21
    TabOrder = 1
    Text = '200'
  end
  object Edit2: TEdit
    Left = 383
    Top = 106
    Width = 56
    Height = 21
    TabOrder = 2
    Text = '200'
  end
  object Button2: TButton
    Left = 360
    Top = 136
    Width = 79
    Height = 25
    Caption = 'Comenzar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 360
    Top = 217
    Width = 79
    Height = 25
    Caption = 'Generar'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Edit3: TEdit
    Left = 360
    Top = 190
    Width = 79
    Height = 21
    TabOrder = 5
    Text = '50'
  end
end
