object Form1: TForm1
  Left = 400
  Top = 80
  Width = 242
  Height = 389
  Caption = 'Mouse Saver V2'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object shp: TShape
    Left = 192
    Top = 8
    Width = 33
    Height = 25
    Brush.Color = clRed
    Shape = stRoundSquare
  end
  object mmo1: TMemo
    Left = 8
    Top = 40
    Width = 209
    Height = 281
    Color = 9240460
    TabOrder = 0
  end
  object btn1: TButton
    Left = 8
    Top = 8
    Width = 177
    Height = 25
    Caption = 'Record'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 8
    Top = 328
    Width = 121
    Height = 17
    Caption = 'Execute'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 2
    OnClick = btn2Click
  end
  object se1: TSpinEdit
    Left = 136
    Top = 328
    Width = 81
    Height = 23
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxValue = 5000
    MinValue = 1
    ParentFont = False
    TabOrder = 3
    Value = 1
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = tmr1Timer
    Left = 96
    Top = 64
  end
  object xpmnfst1: TXPManifest
    Left = 152
    Top = 64
  end
end
