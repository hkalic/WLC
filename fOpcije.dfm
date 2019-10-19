object fSetup: TfSetup
  Left = 437
  Top = 201
  Width = 262
  Height = 341
  Caption = 'WLC - Postvke programa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 48
    Top = 280
    Width = 75
    Height = 25
    Caption = 'ZAPAMTI'
    ModalResult = 1
    TabOrder = 0
  end
  object cxButton2: TcxButton
    Left = 136
    Top = 280
    Width = 75
    Height = 25
    Caption = 'ODUSTANI'
    ModalResult = 7
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 233
    Height = 161
    Caption = ' Sinclair konstanta '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object eSinclairM: TcxTextEdit
      Left = 96
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object eSinclairZ: TcxTextEdit
      Left = 96
      Top = 96
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object cxLabel2: TcxLabel
      Left = 18
      Top = 32
      Width = 74
      Height = 17
      Caption = 'za mu'#353'ke A:'
    end
    object cxLabel3: TcxLabel
      Left = 14
      Top = 96
      Width = 78
      Height = 17
      Caption = 'za '#382'enske A:'
    end
    object eSinclairZ2: TcxTextEdit
      Left = 96
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object eSinclairM2: TcxTextEdit
      Left = 96
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object cxLabel4: TcxLabel
      Left = 75
      Top = 56
      Width = 17
      Height = 17
      Caption = 'B:'
    end
    object cxLabel5: TcxLabel
      Left = 75
      Top = 120
      Width = 17
      Height = 17
      Caption = 'B:'
    end
  end
end
