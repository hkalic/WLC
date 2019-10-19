object fGlavniSemafor: TfGlavniSemafor
  Left = 267
  Top = 165
  Width = 800
  Height = 532
  Caption = 'Semafor'
  Color = clBtnFace
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
  object Panel4: TPanel
    Left = 8
    Top = 8
    Width = 777
    Height = 449
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 777
      Height = 249
      Align = alTop
      TabOrder = 0
      object LMDLabel1: TLMDLabel
        Left = 136
        Top = 32
        Width = 165
        Height = 29
        Bevel.Mode = bmCustom
        FontFX.Style = tdRaisedShadow
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = []
        ParentFont = False
        Caption = 'IME I PREZIME'
      end
      object LMDLabel2: TLMDLabel
        Left = 568
        Top = 40
        Width = 61
        Height = 29
        Bevel.Mode = bmCustom
        FontFX.Style = tdRaisedShadow
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = []
        ParentFont = False
        Caption = 'KLUB'
      end
      object cxDBLabel2: TcxDBLabel
        Left = 8
        Top = 64
        Width = 433
        Height = 177
        DataBinding.DataField = 'Dizac'
        DataBinding.DataSource = dsDizac
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.LabelStyle = cxlsRaised
        Properties.ShadowedColor = clHighlightText
        Properties.WordWrap = True
        Style.Font.Charset = EASTEUROPE_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -53
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.StyleController = cxEditStyleController2
      end
      object cxDBLabel3: TcxDBLabel
        Left = 440
        Top = 80
        Width = 321
        Height = 129
        DataBinding.DataField = 'NazivKluba'
        DataBinding.DataSource = dsDizac
        ParentColor = False
        ParentFont = False
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.LabelStyle = cxlsRaised
        Properties.ShadowedColor = clHighlightText
        Properties.WordWrap = True
        Style.Color = clBtnFace
        Style.StyleController = cxEditStyleController2
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 249
      Width = 777
      Height = 192
      Align = alTop
      TabOrder = 1
      object LMDLabel5: TLMDLabel
        Left = 120
        Top = 40
        Width = 179
        Height = 29
        Bevel.Mode = bmCustom
        FontFX.Style = tdRaisedShadow
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = []
        ParentFont = False
        Caption = 'BROJ POKU'#352'AJA'
      end
      object LMDLabel14: TLMDLabel
        Left = 528
        Top = 38
        Width = 161
        Height = 29
        Bevel.Mode = bmCustom
        FontFX.Style = tdRaisedShadow
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = []
        ParentFont = False
        Caption = 'TE'#381'INA UTEGA'
      end
      object P1: TPanel
        Left = 84
        Top = 72
        Width = 81
        Height = 81
        BevelInner = bvLowered
        BevelOuter = bvNone
        BorderWidth = 1
        TabOrder = 0
        Visible = False
        object lP1: TLMDLabel
          Left = 23
          Top = 6
          Width = 36
          Height = 66
          Bevel.Mode = bmCustom
          FontFX.Style = tdRaisedShadow
          Alignment = agCenter
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlue
          Font.Height = -51
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = []
          ParentFont = False
          Caption = '1'
        end
      end
      object P2: TPanel
        Left = 164
        Top = 72
        Width = 81
        Height = 81
        BevelInner = bvLowered
        BevelOuter = bvNone
        BorderWidth = 1
        TabOrder = 1
        Visible = False
        object lP2: TLMDLabel
          Left = 25
          Top = 6
          Width = 36
          Height = 66
          Bevel.Mode = bmCustom
          FontFX.Style = tdRaisedShadow
          Alignment = agCenter
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlue
          Font.Height = -51
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = []
          ParentFont = False
          Caption = '2'
        end
      end
      object P3: TPanel
        Left = 244
        Top = 72
        Width = 81
        Height = 81
        BevelInner = bvLowered
        BevelOuter = bvNone
        BorderWidth = 1
        TabOrder = 2
        Visible = False
        object lP3: TLMDLabel
          Left = 25
          Top = 6
          Width = 36
          Height = 66
          Bevel.Mode = bmCustom
          FontFX.Style = tdRaisedShadow
          Alignment = agCenter
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlue
          Font.Height = -51
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = []
          ParentFont = False
          Caption = '3'
        end
      end
      object Panel14: TPanel
        Left = 448
        Top = 76
        Width = 217
        Height = 69
        BevelInner = bvLowered
        BevelOuter = bvNone
        BorderWidth = 1
        TabOrder = 3
        object cxDBLabel1: TcxDBLabel
          Left = 16
          Top = 8
          Width = 185
          Height = 52
          DataBinding.DataField = 'DizeSe'
          DataBinding.DataSource = dsDizac
          ParentFont = False
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.LabelStyle = cxlsRaised
          Properties.ShadowedColor = clHighlightText
          Style.Font.Charset = EASTEUROPE_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -53
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.StyleController = cxEditStyleController1
        end
      end
      object Panel16: TPanel
        Left = 664
        Top = 76
        Width = 73
        Height = 69
        BevelInner = bvLowered
        BevelOuter = bvNone
        BorderWidth = 1
        TabOrder = 4
        object LMDLabel20: TLMDLabel
          Left = 17
          Top = 19
          Width = 39
          Height = 39
          Bevel.Mode = bmCustom
          FontFX.Style = tdRaisedShadow
          Alignment = agCenter
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlue
          Font.Height = -29
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = []
          ParentFont = False
          Caption = 'kg'
        end
      end
    end
  end
  object qDizac: TADOQuery
    Connection = MainForm.conn1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT TOP 1 n.DizeSe, n.Pokusaj, n.TjelesnaTezina, '
      'n.SifraDizaca, n.SifraKluba, n.SifraKategorije, '
      'n.Trzaj1, n.Trzaj2, n.Trzaj3, '
      'n.OcijenaTrzaj1, n.OcijenaTrzaj2, n.OcijenaTrzaj3, '
      'n.Izbacaj1, n.Izbacaj2, n.Izbacaj3, '
      'n.OcijenaIzbacaj1, n.OcijenaIzbacaj2, n.OcijenaIzbacaj3, '
      'u.Ime + '#39' '#39' + u.Prezime AS Dizac, k.NazivKluba'
      'FROM NatjecanjeDetail n, Ucesnici u, Klubovi k'
      'WHERE NatjecanjeID = 9'
      'AND n.SifraDizaca = u.UcesnikID '
      'AND n.SifraKluba = k.KlubID '
      'AND n.Pokusaj BETWEEN 3 AND 7'
      'ORDER BY n.DizeSe, n.Pokusaj, n.TjelesnaTezina, n.Prioritet')
    Left = 360
    Top = 289
  end
  object dsDizac: TDataSource
    DataSet = qDizac
    Left = 392
    Top = 289
  end
  object cxEditStyleController1: TcxEditStyleController
    Style.Font.Charset = EASTEUROPE_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -29
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.Kind = lfStandard
    Style.Shadow = False
    Style.TextColor = clBlue
    Style.TextStyle = [fsBold]
    Left = 24
    Top = 17
  end
  object cxEditStyleController2: TcxEditStyleController
    Style.Font.Charset = EASTEUROPE_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -40
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.Kind = lfStandard
    Style.Shadow = False
    Style.TextColor = clBlue
    Style.TextStyle = [fsBold]
    Left = 56
    Top = 17
  end
  object Timer1: TTimer
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 376
    Top = 385
  end
  object qStatus: TADOQuery
    Connection = MainForm.conn1
    CursorType = ctStatic
    BeforeOpen = qStatusBeforeOpen
    Parameters = <
      item
        Name = 'SifraNatjecanja'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 33
      end>
    SQL.Strings = (
      'SELECT Grupa, IzbacajIliTrzaj '
      'FROM PomocniStatus'
      'WHERE NatjecanjeID=:SifraNatjecanja')
    Left = 400
    Top = 176
  end
end
