object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 442
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 40
    Top = 319
    Width = 50
    Height = 50
  end
  object Label1: TLabel
    Left = 34
    Top = 27
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 16
    Height = 13
    Caption = 'ID:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 91
    Width = 25
    Height = 13
    Caption = 'City:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 110
    Width = 33
    Height = 13
    Caption = 'state:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 40
    Top = 129
    Width = 47
    Height = 13
    Caption = 'country:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 148
    Width = 76
    Height = 13
    Caption = 'temperature:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 40
    Top = 167
    Width = 86
    Height = 13
    Caption = 'wind_direction:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 40
    Top = 186
    Width = 81
    Height = 13
    Caption = 'wind_velocity:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 40
    Top = 205
    Width = 53
    Height = 13
    Caption = 'humidity:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 40
    Top = 224
    Width = 55
    Height = 13
    Caption = 'condition:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 40
    Top = 243
    Width = 53
    Height = 13
    Caption = 'pressure:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 40
    Top = 262
    Width = 58
    Height = 13
    Caption = 'sensation:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 40
    Top = 281
    Width = 29
    Height = 13
    Caption = 'date:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 40
    Top = 300
    Width = 28
    Height = 13
    Caption = 'Icon:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblID: TLabel
    Left = 136
    Top = 72
    Width = 15
    Height = 13
    Caption = 'ID:'
  end
  object lblCity: TLabel
    Left = 136
    Top = 91
    Width = 23
    Height = 13
    Caption = 'City:'
  end
  object lblState: TLabel
    Left = 136
    Top = 110
    Width = 29
    Height = 13
    Caption = 'state:'
  end
  object lblCountry: TLabel
    Left = 136
    Top = 129
    Width = 41
    Height = 13
    Caption = 'country:'
  end
  object lbltemperature: TLabel
    Left = 136
    Top = 148
    Width = 64
    Height = 13
    Caption = 'temperature:'
  end
  object lblWindDirection: TLabel
    Left = 136
    Top = 167
    Width = 73
    Height = 13
    Caption = 'wind_direction:'
  end
  object lblWindVelocity: TLabel
    Left = 136
    Top = 186
    Width = 69
    Height = 13
    Caption = 'wind_velocity:'
  end
  object lblhumidity: TLabel
    Left = 136
    Top = 205
    Width = 44
    Height = 13
    Caption = 'humidity:'
  end
  object lblcondition: TLabel
    Left = 136
    Top = 224
    Width = 47
    Height = 13
    Caption = 'condition:'
  end
  object lblpressure: TLabel
    Left = 136
    Top = 243
    Width = 46
    Height = 13
    Caption = 'pressure:'
  end
  object lblsensation: TLabel
    Left = 136
    Top = 262
    Width = 50
    Height = 13
    Caption = 'sensation:'
  end
  object lbldate: TLabel
    Left = 136
    Top = 281
    Width = 26
    Height = 13
    Caption = 'date:'
  end
  object Button1: TButton
    Left = 50
    Top = 392
    Width = 115
    Height = 25
    Caption = 'Consultar Clima'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 189
    Top = 392
    Width = 112
    Height = 25
    Caption = 'Buscar ID Cidade'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 88
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Niter'#243'i'
  end
  object PrevisaoTempo1: TPrevisaoTempo
    CodeCity = '5980'
    Token = '97a8f41ef0d91a0b843d52c210ece558'
    Left = 248
    Top = 24
  end
end
