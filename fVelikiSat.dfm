object fSat: TfSat
  Left = 317
  Top = 152
  Width = 800
  Height = 600
  Caption = 'Sat'
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 71
    Width = 777
    Height = 386
    BevelOuter = bvNone
    Color = clBlack
    TabOrder = 0
    object LMDClock1: TLMDClock
      Tag = 1
      Left = -775
      Top = 48
      Width = 1550
      Height = 265
      Bevel.EdgeStyle = etBump
      Bevel.Mode = bmCustom
      Digital.Horzsize = 80
      Digital.InActiveColor = 4276545
      Digital.Thickness = 15
      Digital.Vertsize = 80
      DigitalOnly = True
      DigitalPosX = 0
      DigitalPosY = 0
      Enabled = False
      FixedTime.Day = 31
      FixedTime.Month = 3
      FixedTime.Year = 2007
      FixedTime.Hour = 21
      FixedTime.Minute = 6
      FixedTime.Second = 57
      HourHand.Color = clAqua
      HourHand.Thickness = 5
      MinuteHand.Color = clTeal
      MinuteHand.Thickness = 3
      Mode = cmCountdown
      Options = [coShowDigital, co24Hour]
      RepeatAlarm = 0
      SecondHand.Thickness = 1
      Style = csSimple
      Transparent = True
      CustomDateTimeFormat = 'mm:ss'
      UseCustomDateTime = True
      OnCountdownEnd = LMDClock1CountdownEnd
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 524
    Width = 792
    Height = 49
    Align = alBottom
    TabOrder = 1
    object cxButton1: TcxButton
      Tag = 1
      Left = 256
      Top = 16
      Width = 75
      Height = 25
      Caption = 'START 1 min.'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object bStop: TcxButton
      Tag = 1
      Left = 458
      Top = 16
      Width = 65
      Height = 25
      Caption = 'STOP'
      Enabled = False
      TabOrder = 1
      OnClick = bStopClick
    end
    object cxButton3: TcxButton
      Tag = 2
      Left = 336
      Top = 16
      Width = 75
      Height = 25
      Caption = 'START 2 min.'
      TabOrder = 2
      OnClick = cxButton3Click
    end
  end
end
