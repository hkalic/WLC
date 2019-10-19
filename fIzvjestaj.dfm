object fZapisnik: TfZapisnik
  Left = 397
  Top = 201
  Width = 435
  Height = 244
  Caption = 'Zapisnici sa natjecanja'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bKlubsko: TcxButton
    Tag = 1
    Left = 16
    Top = 64
    Width = 121
    Height = 33
    Caption = 'Klubsko natjecanje'
    TabOrder = 0
    OnClick = bClick
  end
  object bPojedinacno: TcxButton
    Tag = 2
    Left = 152
    Top = 64
    Width = 121
    Height = 33
    Caption = 'Seniorsko po ktg'
    TabOrder = 1
    OnClick = bClick
  end
  object cxButton1: TcxButton
    Tag = 3
    Left = 80
    Top = 16
    Width = 121
    Height = 33
    Caption = 'Vaganje'
    TabOrder = 2
    OnClick = bClick
  end
  object cxButton2: TcxButton
    Tag = 4
    Left = 152
    Top = 112
    Width = 121
    Height = 33
    Caption = 'Juniorsko po ktg'
    TabOrder = 3
    OnClick = bClick
  end
  object cxButton3: TcxButton
    Tag = 5
    Left = 152
    Top = 160
    Width = 121
    Height = 33
    Caption = #381'ensko po ktg'
    TabOrder = 4
    OnClick = bClick
    LookAndFeel.Kind = lfUltraFlat
  end
  object cxButton4: TcxButton
    Tag = 21
    Left = 288
    Top = 64
    Width = 121
    Height = 33
    Caption = 'Seniorsko natjecanje'
    TabOrder = 5
    OnClick = bClick
  end
  object cxButton5: TcxButton
    Tag = 41
    Left = 288
    Top = 112
    Width = 121
    Height = 33
    Caption = 'Juniorsko natjecanje'
    TabOrder = 6
    OnClick = bClick
  end
  object cxButton6: TcxButton
    Tag = 51
    Left = 288
    Top = 160
    Width = 121
    Height = 33
    Caption = #381'ensko natjecanje'
    TabOrder = 7
    OnClick = bClick
    LookAndFeel.Kind = lfUltraFlat
  end
  object qReport: TADOQuery
    Active = True
    Connection = MainForm.conn1
    CursorType = ctStatic
    BeforeOpen = qReportBeforeOpen
    Parameters = <
      item
        Name = 'SifraNatjecanja'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 33
      end>
    SQL.Strings = (
      
        'SELECT u.Prezime + '#39' '#39' + u.Ime AS Ucesnik, k.NazivKluba+'#39', '#39'+ k.' +
        'MjestoKluba AS Klub,'
      
        'CASE n.OcijenaTrzaj1 WHEN '#39'X'#39' THEN '#39'x'#39' ELSE '#39#39' END + CAST(n.Trza' +
        'j1 AS varchar) AS Trzaj1,'
      
        'CASE n.OcijenaTrzaj2 WHEN '#39'X'#39' THEN '#39'x'#39' ELSE '#39#39' END + CAST(n.Trza' +
        'j2 AS varchar) AS Trzaj2,'
      
        'CASE n.OcijenaTrzaj3 WHEN '#39'X'#39' THEN '#39'x'#39' ELSE '#39#39' END + CAST(n.Trza' +
        'j3 AS varchar) AS Trzaj3,'
      
        'CASE n.OcijenaIzbacaj1 WHEN '#39'X'#39' THEN '#39'x'#39' ELSE '#39#39' END + CAST(n.Iz' +
        'bacaj1 AS varchar) AS Izbacaj1,'
      
        'CASE n.OcijenaIzbacaj2 WHEN '#39'X'#39' THEN '#39'x'#39' ELSE '#39#39' END + CAST(n.Iz' +
        'bacaj2 AS varchar) AS Izbacaj2,'
      
        'CASE n.OcijenaIzbacaj3 WHEN '#39'X'#39' THEN '#39'x'#39' ELSE '#39#39' END + CAST(n.Iz' +
        'bacaj3 AS varchar) AS Izbacaj3,'
      
        'n.TotalPodignuto, n.SinclairBodovi, n.TjelesnaTezina, Kategorije' +
        '.NazivKategorije, n.SinclairKoeficijen,'
      'n.SifraEkipno, n.SifraSeniorsko, n.SifraJuniorsko'
      'FROM NatjecanjeDetail n INNER JOIN'
      'Klubovi k ON n.SifraKluba = k.KlubID INNER JOIN'
      'Ucesnici u ON n.SifraDizaca = u.UcesnikID INNER JOIN'
      'Kategorije ON n.SifraKategorije = Kategorije.SifraKategorije'
      'WHERE n.NatjecanjeID = :SifraNatjecanja'
      'AND n.SifraEkipno <>'#39#39
      'ORDER BY Klub')
    Left = 72
    Top = 112
  end
  object frxADOComponents1: TfrxADOComponents
    DefaultDatabase = MainForm.conn1
    Left = 104
    Top = 176
  end
  object frxReport1: TfrxReport
    Version = '3.23.7'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39155.472187314800000000
    ReportOptions.LastChange = 39235.600780520800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 176
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 120.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 73.639717114999990000
          Top = 30.293283359999990000
          Width = 570.831265770000000000
          Height = 49.150188100000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'ZAPISNIK ZA: [frxDBDataset2."NazivNatjecanja"]'
            'EKIPNI POREDAK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 7.559059999999999000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'HRVATSKI DIZA'#196#346'KI SAVEZ')
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 90.708720000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Mjesto: ')
        end
        object Memo4: TfrxMemoView
          Left = 582.047620000000000000
          Top = 90.708661420000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Datum: ')
        end
        object Memo5: TfrxMemoView
          Left = 68.031540000000000000
          Top = 90.708720000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'MjestoNatjecanja'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset2."MjestoNatjecanja"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 631.181510000000000000
          Top = 90.708720000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DatumNatjecanja'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBDataset2."DatumNatjecanja"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 90.708720000000000000
        ParentFont = False
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."Klub"'
        KeepTogether = True
        OutlineText = 'frxDBDataset1."Klub"'
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677179999999990000
          Width = 495.118430000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            'Ekipa: [frxDBDataset1."Klub"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 30.236240000000000000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Kat.')
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 34.015770000000000000
          Top = 52.913420000000000000
          Width = 173.858380000000000000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Prezime i ime')
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 207.874150000000000000
          Top = 52.913420000000000000
          Width = 56.692950000000000000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'tjelesna'
            'te'#313#318'ina')
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 264.567100000000000000
          Top = 52.913420000000000000
          Width = 68.031540000000000000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Sinclair'
            'koeficient')
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 332.598640000000000000
          Top = 52.913420000000000000
          Width = 136.062992130000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TRZAJ')
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 468.661720000000000000
          Top = 52.913420000000000000
          Width = 136.062992130000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'IZBA'#196#346'AJ')
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 332.598640000000000000
          Top = 71.811070000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 377.953000000000000000
          Top = 71.811070000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 423.307360000000000000
          Top = 71.811070000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 468.661720000000000000
          Top = 71.811070000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '1')
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 514.016080000000000000
          Top = 71.811070000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '2')
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 559.370440000000000000
          Top = 71.811070000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '3')
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 604.724800000000000000
          Top = 52.913420000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 657.638220000000000000
          Top = 52.913420000000000000
          Width = 52.913420000000000000
          Height = 37.795300000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Sinclair'
            'bodovi')
          VAlign = vaCenter
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo25: TfrxMemoView
          Left = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
          DataField = 'NazivKategorije'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."NazivKategorije"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 34.015770000000000000
          Width = 173.858380000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."Ucesnik"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 207.874150000000000000
          Width = 56.692950000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."TjelesnaTezina"]')
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 264.567100000000000000
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.5f'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."SinclairKoeficijen"]')
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 332.598640000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."Trzaj1"]')
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 377.953000000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DataField = 'Trzaj2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."Trzaj2"]')
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 423.307360000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DataField = 'Trzaj3'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."Trzaj3"]')
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 468.661720000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DataField = 'Izbacaj1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."Izbacaj1"]')
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 514.016080000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DataField = 'Izbacaj2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."Izbacaj2"]')
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 559.370440000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DataField = 'Izbacaj3'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."Izbacaj3"]')
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 604.724800000000000000
          Width = 52.913420000000000000
          Height = 18.897637800000000000
          DataField = 'TotalPodignuto'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."TotalPodignuto"]')
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 657.638220000000000000
          Width = 52.913420000000000000
          Height = 18.897637800000000000
          DataField = 'SinclairBodovi'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."SinclairBodovi"]')
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 11.338590000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 389.291590000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          Left = 604.724800000000000000
          Width = 52.913420000000000000
          Height = 18.897637800000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.1n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."TotalPodignuto">,DetailData1)]')
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 657.638220000000000000
          Width = 52.913420000000000000
          Height = 18.897637800000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."SinclairBodovi">,DetailData1)]')
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 306.141930000000000000
        Top = 472.441250000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Left = 15.118120000000000000
          Top = 18.897650000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'REKORDERI za juniore:')
        end
        object Memo37: TfrxMemoView
          Left = 370.393940000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TRZAJ')
        end
        object Memo38: TfrxMemoView
          Left = 483.779840000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'IZBA'#196#346'AJ')
        end
        object Memo39: TfrxMemoView
          Left = 597.165740000000000000
          Top = 18.897650000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BIATLON')
        end
        object Memo40: TfrxMemoView
          Left = 15.118120000000000000
          Top = 105.826840000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'REKORDERI za kadete, juniore i seniore:')
        end
        object Memo41: TfrxMemoView
          Left = 370.393940000000000000
          Top = 105.826840000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TRZAJ')
        end
        object Memo42: TfrxMemoView
          Left = 483.779840000000000000
          Top = 105.826840000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'IZBA'#196#346'AJ')
        end
        object Memo43: TfrxMemoView
          Left = 597.165740000000000000
          Top = 105.826840000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'BIATLON')
        end
        object Memo44: TfrxMemoView
          Left = 7.559060000000000000
          Top = 207.874150000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataField = 'Sudac1'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset2."Sudac1"]')
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 7.559060000000000000
          Top = 226.771800000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataField = 'Sudac2'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset2."Sudac2"]')
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 7.559060000000000000
          Top = 245.669450000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataField = 'Sudac3'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset2."Sudac3"]')
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 7.559060000000000000
          Top = 188.976500000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'SUDCI:')
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 120.944960000000000000
          Top = 207.874150000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset2."S1Rang"]')
        end
        object Memo52: TfrxMemoView
          Left = 120.944960000000000000
          Top = 226.771800000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset2."S2Rang"]')
        end
        object Memo53: TfrxMemoView
          Left = 120.944960000000000000
          Top = 245.669450000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset2."S3Rang"]')
        end
        object Memo54: TfrxMemoView
          Left = 120.944960000000000000
          Top = 188.976500000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'RANG')
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 234.330860000000000000
          Top = 207.874150000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo56: TfrxMemoView
          Left = 234.330860000000000000
          Top = 226.771800000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo57: TfrxMemoView
          Left = 234.330860000000000000
          Top = 245.669450000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo58: TfrxMemoView
          Left = 234.330860000000000000
          Top = 188.976500000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'POTPIS')
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 370.393940000000000000
          Top = 207.874150000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."Zapisnicar"]')
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 370.393940000000000000
          Top = 226.771800000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DELEGAT:')
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 370.393940000000000000
          Top = 245.669450000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."Delegat"]')
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          Left = 370.393940000000000000
          Top = 188.976500000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ZAPISNI'#196#346'AR:')
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          Left = 483.779840000000000000
          Top = 207.874150000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."ZRang"]')
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 483.779840000000000000
          Top = 226.771800000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'RANG')
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 483.779840000000000000
          Top = 245.669450000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset2."DRang"]')
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 483.779840000000000000
          Top = 188.976500000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'RANG')
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 597.165740000000000000
          Top = 207.874150000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 597.165740000000000000
          Top = 226.771800000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'POTPIS')
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 597.165740000000000000
          Top = 245.669450000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Left = 597.165740000000000000
          Top = 188.976500000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'POTPIS')
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 801.260360000000000000
        Width = 718.110700000000000000
        object Memo47: TfrxMemoView
          Align = baRight
          Left = 589.606680000000000000
          Top = 3.779530000000022000
          Width = 128.504020000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Strana [<Page>] od [<TotalPages>]')
          ParentFont = False
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 72
    Top = 176
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = qReport
    Left = 104
    Top = 112
  end
  object qReportMaster: TADOQuery
    Active = True
    Connection = MainForm.conn1
    CursorType = ctStatic
    BeforeOpen = qReportBeforeOpen
    Parameters = <
      item
        Name = 'SifraNatjecanja'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 33
      end>
    SQL.Strings = (
      'SELECT NazivNatjecanja, MjestoNatjecanja, DatumNatjecanja,'
      'Sudac1, S1Rang, Sudac2, S2Rang, Sudac3, S3Rang,'
      'Zapisnicar, ZRang, Delegat, DRang'
      'FROM Natjecanja'
      'WHERE NatjecanjeID = :SifraNatjecanja')
    Left = 72
    Top = 144
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = qReportMaster
    Left = 104
    Top = 144
  end
end
