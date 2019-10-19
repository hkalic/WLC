object fNatjecanjeDetails: TfNatjecanjeDetails
  Left = 258
  Top = 157
  Width = 923
  Height = 565
  Caption = 'Natjecanje - Redosljed dizanja'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 915
    Height = 41
    Align = alTop
    TabOrder = 0
    object bOsvjezi: TcxButton
      Left = 16
      Top = 8
      Width = 154
      Height = 25
      Caption = 'Osvje'#382'i podatke'
      TabOrder = 0
      TabStop = False
      OnClick = Timer1Timer
    end
    object cxButton1: TcxButton
      Left = 336
      Top = 8
      Width = 154
      Height = 25
      Caption = 'POKA'#381'I IZBA'#268'AJ'
      TabOrder = 1
      TabStop = False
      OnClick = cxButton1Click
    end
  end
  object TabControl1: TTabControl
    Left = 0
    Top = 41
    Width = 915
    Height = 497
    Align = alClient
    TabOrder = 1
    Tabs.Strings = (
      'Grupa 1'
      'Grupa 2'
      'Grupa 3')
    TabIndex = 0
    OnChange = TabControl1Change
    object Splitter1: TSplitter
      Left = 4
      Top = 233
      Width = 907
      Height = 5
      Cursor = crVSplit
      Align = alTop
    end
    object cxGrid1: TcxGrid
      Tag = 1
      Left = 4
      Top = 24
      Width = 907
      Height = 209
      Align = alTop
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Tag = 1
        OnDblClick = PromjenaGore
        DataController.DataSource = dsGrid
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Styles.StyleSheet = MainForm.GridTableViewStyleSheetHighContrastWhitelarge
        object RB: TcxGridDBColumn
          Caption = 'RB'
          DataBinding.FieldName = 'calcRB'
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 34
        end
        object cxGrid1DBTableView1Ucesnik: TcxGridDBColumn
          Caption = 'Ime diza'#269'a'
          DataBinding.FieldName = 'Ucesnik'
          Options.Editing = False
          Options.Focusing = False
          Width = 179
        end
        object cxGrid1DBTableView1Klub: TcxGridDBColumn
          Caption = 'Naziv kluba'
          DataBinding.FieldName = 'NazivKluba'
          Options.Editing = False
          Options.Focusing = False
          Width = 111
        end
        object cxGrid1DBTableView1NatjecanjeDetailID: TcxGridDBColumn
          DataBinding.FieldName = 'NatjecanjeDetailID'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1RedniBrojVaganja: TcxGridDBColumn
          DataBinding.FieldName = 'RedniBrojVaganja'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1SifraDizaca: TcxGridDBColumn
          DataBinding.FieldName = 'SifraDizaca'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1SifraKluba: TcxGridDBColumn
          DataBinding.FieldName = 'SifraKluba'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1TjelesnaTezina: TcxGridDBColumn
          Caption = 'Tj. Te'#382'ina'
          DataBinding.FieldName = 'TjelesnaTezina'
          Options.Editing = False
          Options.Focusing = False
          Width = 89
        end
        object cxGrid1DBTableView1SifraKategorije: TcxGridDBColumn
          DataBinding.FieldName = 'SifraKategorije'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1SinclairKoeficijen: TcxGridDBColumn
          DataBinding.FieldName = 'SinclairKoeficijen'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1SifraEkipno: TcxGridDBColumn
          DataBinding.FieldName = 'SifraEkipno'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1Seniorsko: TcxGridDBColumn
          DataBinding.FieldName = 'SifraSeniorsko'
          Visible = False
        end
        object cxGrid1DBTableView1Juniorsko: TcxGridDBColumn
          DataBinding.FieldName = 'SifraJuniorsko'
          Visible = False
        end
        object cxGrid1DBTableView1PocetnaTIzbacaj: TcxGridDBColumn
          DataBinding.FieldName = 'PocetnaTIzbacaj'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1PocetnaTTrzaj: TcxGridDBColumn
          DataBinding.FieldName = 'PocetnaTTrzaj'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1Trzaj1: TcxGridDBColumn
          Caption = 'Trzaj 1'
          DataBinding.FieldName = 'Trzaj1'
          Width = 68
        end
        object cxGrid1DBTableView1OcijenaTrzaj1: TcxGridDBColumn
          Caption = 'O'
          DataBinding.FieldName = 'OcijenaTrzaj1'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.BeepOnError = True
          Properties.CharCase = ecUpperCase
          Properties.LookupItems.Strings = (
            'X'
            'O'
            '-')
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[O,X,-]+'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.ShowEditButtons = isebNever
          Width = 20
        end
        object cxGrid1DBTableView1Trzaj2: TcxGridDBColumn
          Caption = 'Trzaj 2'
          DataBinding.FieldName = 'Trzaj2'
          Width = 68
        end
        object cxGrid1DBTableView1OcijenaTrzaj2: TcxGridDBColumn
          Caption = 'O'
          DataBinding.FieldName = 'OcijenaTrzaj2'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.CharCase = ecUpperCase
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[O,X,-]+'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1Trzaj3: TcxGridDBColumn
          Caption = 'Trzaj 3'
          DataBinding.FieldName = 'Trzaj3'
          Width = 68
        end
        object cxGrid1DBTableView1OcijenaTrzaj3: TcxGridDBColumn
          Caption = 'O'
          DataBinding.FieldName = 'OcijenaTrzaj3'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.CharCase = ecUpperCase
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[O,X,-]+'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1Izbacaj1: TcxGridDBColumn
          Caption = 'Izba'#269'aj 1'
          DataBinding.FieldName = 'Izbacaj1'
          Visible = False
          Width = 82
        end
        object cxGrid1DBTableView1OcijenaIzbacaj1: TcxGridDBColumn
          Caption = 'O'
          DataBinding.FieldName = 'OcijenaIzbacaj1'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.CharCase = ecUpperCase
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[O,X,-]+'
          Visible = False
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 22
        end
        object cxGrid1DBTableView1Izbacaj2: TcxGridDBColumn
          Caption = 'Izba'#269'aj 2'
          DataBinding.FieldName = 'Izbacaj2'
          Visible = False
          Width = 82
        end
        object cxGrid1DBTableView1OcijenaIzbacaj2: TcxGridDBColumn
          Caption = 'O'
          DataBinding.FieldName = 'OcijenaIzbacaj2'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.CharCase = ecUpperCase
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[O,X,-]+'
          Visible = False
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 22
        end
        object cxGrid1DBTableView1Izbacaj3: TcxGridDBColumn
          Caption = 'Izba'#269'aj 3'
          DataBinding.FieldName = 'Izbacaj3'
          Visible = False
          Width = 82
        end
        object cxGrid1DBTableView1OcijenaIzbacaj3: TcxGridDBColumn
          Caption = 'O'
          DataBinding.FieldName = 'OcijenaIzbacaj3'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.CharCase = ecUpperCase
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[O,X,-]+'
          Visible = False
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 22
        end
        object cxGrid1DBTableView1TotalPodignuto: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TotalPodignuto'
          Options.Editing = False
          Options.Focusing = False
          Width = 63
        end
        object cxGrid1DBTableView1SinclairBodovi: TcxGridDBColumn
          DataBinding.FieldName = 'SinclairBodovi'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1Prioritet: TcxGridDBColumn
          DataBinding.FieldName = 'Prioritet'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1IDizeSe: TcxGridDBColumn
          DataBinding.FieldName = 'IDizeSe'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1IPokusaj: TcxGridDBColumn
          DataBinding.FieldName = 'IPokusaj'
          Visible = False
          Options.Editing = False
          Options.Focusing = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxGrid2: TcxGrid
      Tag = 2
      Left = 4
      Top = 238
      Width = 907
      Height = 255
      Align = alClient
      TabOrder = 1
      object cxGridDBTableView1: TcxGridDBTableView
        Tag = 2
        OnDblClick = PromjenaDolje
        DataController.DataSource = dsGridGotovo
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Styles.StyleSheet = MainForm.GridTableViewStyleSheetUserFormat3
        object cxGridGotovoRB: TcxGridDBColumn
          Caption = 'RB'
          DataBinding.FieldName = 'calcRB'
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 24
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'Ime diza'#269'a'
          DataBinding.FieldName = 'Ucesnik'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 141
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = 'Kluba'
          DataBinding.FieldName = 'NazivKluba'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 89
        end
        object cxGridDBColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'NatjecanjeDetailID'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGridDBColumn5: TcxGridDBColumn
          DataBinding.FieldName = 'RedniBrojVaganja'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGridDBColumn6: TcxGridDBColumn
          DataBinding.FieldName = 'SifraDizaca'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGridDBColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'SifraKluba'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGridDBColumn8: TcxGridDBColumn
          Caption = 'Tj. Te'#382'ina'
          DataBinding.FieldName = 'TjelesnaTezina'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 69
        end
        object cxGridDBColumn9: TcxGridDBColumn
          DataBinding.FieldName = 'SifraKategorije'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGridDBColumn10: TcxGridDBColumn
          DataBinding.FieldName = 'SinclairKoeficijen'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGridDBColumn11: TcxGridDBColumn
          DataBinding.FieldName = 'SifraEkipno'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGridDBColumn12: TcxGridDBColumn
          DataBinding.FieldName = 'SifraPojedinacno'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGridDBColumn13: TcxGridDBColumn
          DataBinding.FieldName = 'PocetnaTIzbacaj'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGridDBColumn14: TcxGridDBColumn
          DataBinding.FieldName = 'PocetnaTTrzaj'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGridDBColumn15: TcxGridDBColumn
          Caption = 'Trzaj 1'
          DataBinding.FieldName = 'Trzaj1'
          HeaderAlignmentHorz = taCenter
          Width = 62
        end
        object cxGridDBColumn16: TcxGridDBColumn
          Caption = 'O'
          DataBinding.FieldName = 'OcijenaTrzaj1'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.BeepOnError = True
          Properties.CharCase = ecUpperCase
          Properties.LookupItems.Strings = (
            'X'
            'O'
            '-')
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[O,X,-]+'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Options.ShowEditButtons = isebNever
          Width = 20
        end
        object cxGridDBColumn17: TcxGridDBColumn
          Caption = 'Trzaj 2'
          DataBinding.FieldName = 'Trzaj2'
          HeaderAlignmentHorz = taCenter
          Width = 62
        end
        object cxGridDBColumn18: TcxGridDBColumn
          Caption = 'O'
          DataBinding.FieldName = 'OcijenaTrzaj2'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.CharCase = ecUpperCase
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[O,X,-]+'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
        end
        object cxGridDBColumn19: TcxGridDBColumn
          Caption = 'Trzaj 3'
          DataBinding.FieldName = 'Trzaj3'
          HeaderAlignmentHorz = taCenter
          Width = 62
        end
        object cxGridDBColumn20: TcxGridDBColumn
          Caption = 'O'
          DataBinding.FieldName = 'OcijenaTrzaj3'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.CharCase = ecUpperCase
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[O,X,-]+'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
        end
        object cxGridDBColumn21: TcxGridDBColumn
          Caption = 'Izba'#269'aj 1'
          DataBinding.FieldName = 'Izbacaj1'
          HeaderAlignmentHorz = taCenter
          Width = 62
        end
        object cxGridDBColumn22: TcxGridDBColumn
          Caption = 'O'
          DataBinding.FieldName = 'OcijenaIzbacaj1'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.CharCase = ecUpperCase
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[O,X,-]+'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 22
        end
        object cxGridDBColumn23: TcxGridDBColumn
          Caption = 'Izba'#269'aj 2'
          DataBinding.FieldName = 'Izbacaj2'
          HeaderAlignmentHorz = taCenter
          Width = 62
        end
        object cxGridDBColumn24: TcxGridDBColumn
          Caption = 'O'
          DataBinding.FieldName = 'OcijenaIzbacaj2'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.CharCase = ecUpperCase
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[O,X,-]+'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 22
        end
        object cxGridDBColumn25: TcxGridDBColumn
          Caption = 'Izba'#269'aj 3'
          DataBinding.FieldName = 'Izbacaj3'
          HeaderAlignmentHorz = taCenter
          Width = 62
        end
        object cxGridDBColumn26: TcxGridDBColumn
          Caption = 'O'
          DataBinding.FieldName = 'OcijenaIzbacaj3'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.CharCase = ecUpperCase
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[O,X,-]+'
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 22
        end
        object cxGridDBColumn27: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TotalPodignuto'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 63
        end
        object cxGridDBColumn28: TcxGridDBColumn
          DataBinding.FieldName = 'SinclairBodovi'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGridDBColumn29: TcxGridDBColumn
          DataBinding.FieldName = 'Prioritet'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGridDBColumn30: TcxGridDBColumn
          DataBinding.FieldName = 'IDizeSe'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGridDBColumn31: TcxGridDBColumn
          DataBinding.FieldName = 'IPokusaj'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object dsGrid: TDataSource
    DataSet = qGrid
    Left = 456
    Top = 201
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 20000
    OnTimer = Timer1Timer
    Left = 384
    Top = 145
  end
  object qGrid: TADOQuery
    Connection = MainForm.conn1
    CursorType = ctStatic
    BeforeOpen = qGridBeforeOpen
    BeforePost = qGridBeforePost
    AfterPost = qGridAfterPost
    OnCalcFields = spGridCalcFields
    Parameters = <
      item
        Name = 'SifraNatjecanja'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 9
      end
      item
        Name = 'NoGrupe'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      
        'SELECT n.IDizeSe, n.IPokusaj, n.TDizeSe, n.TPokusaj, n.TjelesnaT' +
        'ezina, '
      
        'n.Prioritet, n.NatjecanjeDetailID, n.RedniBrojVaganja, n.SifraDi' +
        'zaca, n.SifraKluba, '
      
        'n.SifraKategorije, n.SinclairKoeficijen, n.SifraEkipno, n.SifraS' +
        'eniorsko, '
      
        'n.SifraJuniorsko, n.PocetnaTIzbacaj, n.PocetnaTTrzaj, n.Trzaj1, ' +
        'n.Trzaj2, '
      
        'n.Trzaj3, n.OcijenaTrzaj1, n.OcijenaTrzaj2, n.OcijenaTrzaj3, n.I' +
        'zbacaj1, '
      
        'n.Izbacaj2, n.Izbacaj3, n.OcijenaIzbacaj1, n.OcijenaIzbacaj2, n.' +
        'OcijenaIzbacaj3, '
      'n.TotalPodignuto, n.SinclairBodovi, n.izvankonkurencije, n.grupa'
      'FROM NatjecanjeDetail n'
      'WHERE n.NatjecanjeID = :SifraNatjecanja'
      'AND n.Grupa = :NoGrupe'
      'ORDER BY n.IDizeSe, n.IPokusaj, n.TjelesnaTezina, n.Prioritet')
    Left = 488
    Top = 201
    object qGridIntegerField: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'calcRB'
      Calculated = True
    end
    object qGridUcesnik: TStringField
      FieldKind = fkLookup
      FieldName = 'Ucesnik'
      LookupDataSet = qUcesnici
      LookupKeyFields = 'UcesnikID'
      LookupResultField = 'Ucesnik'
      KeyFields = 'SifraDizaca'
      Lookup = True
    end
    object qGridNazivKluba: TStringField
      FieldKind = fkLookup
      FieldName = 'NazivKluba'
      LookupDataSet = qKlubovi
      LookupKeyFields = 'KlubID'
      LookupResultField = 'NazivKluba'
      KeyFields = 'SifraKluba'
      Lookup = True
    end
    object qGridTjelesnaTezina: TFloatField
      FieldName = 'TjelesnaTezina'
    end
    object qGridPrioritet: TIntegerField
      FieldName = 'Prioritet'
    end
    object qGridNatjecanjeDetailID: TAutoIncField
      FieldName = 'NatjecanjeDetailID'
      ReadOnly = True
    end
    object qGridRedniBrojVaganja: TIntegerField
      FieldName = 'RedniBrojVaganja'
    end
    object qGridSifraDizaca: TIntegerField
      FieldName = 'SifraDizaca'
    end
    object qGridSifraKluba: TIntegerField
      FieldName = 'SifraKluba'
    end
    object qGridSifraKategorije: TIntegerField
      FieldName = 'SifraKategorije'
    end
    object qGridSinclairKoeficijen: TFloatField
      FieldName = 'SinclairKoeficijen'
    end
    object qGridSifraEkipno: TWideStringField
      FieldName = 'SifraEkipno'
      Size = 2
    end
    object qGridSifraSeniorsko: TWideStringField
      DisplayLabel = 'Sen.'
      FieldName = 'SifraSeniorsko'
      Size = 1
    end
    object qGridSifraJuniorsko: TWideStringField
      DisplayLabel = 'Jun.'
      FieldName = 'SifraJuniorsko'
      Size = 1
    end
    object qGridPocetnaTIzbacaj: TFloatField
      FieldName = 'PocetnaTIzbacaj'
    end
    object qGridPocetnaTTrzaj: TFloatField
      FieldName = 'PocetnaTTrzaj'
    end
    object qGridTrzaj1: TFloatField
      FieldName = 'Trzaj1'
    end
    object qGridTrzaj2: TFloatField
      FieldName = 'Trzaj2'
    end
    object qGridTrzaj3: TFloatField
      FieldName = 'Trzaj3'
    end
    object qGridOcijenaTrzaj1: TWideStringField
      FieldName = 'OcijenaTrzaj1'
      Size = 1
    end
    object qGridOcijenaTrzaj2: TWideStringField
      FieldName = 'OcijenaTrzaj2'
      Size = 1
    end
    object qGridOcijenaTrzaj3: TWideStringField
      FieldName = 'OcijenaTrzaj3'
      Size = 1
    end
    object qGridIzbacaj1: TFloatField
      FieldName = 'Izbacaj1'
    end
    object qGridIzbacaj2: TFloatField
      FieldName = 'Izbacaj2'
    end
    object qGridIzbacaj3: TFloatField
      FieldName = 'Izbacaj3'
    end
    object qGridOcijenaIzbacaj1: TWideStringField
      FieldName = 'OcijenaIzbacaj1'
      Size = 1
    end
    object qGridOcijenaIzbacaj2: TWideStringField
      FieldName = 'OcijenaIzbacaj2'
      Size = 1
    end
    object qGridOcijenaIzbacaj3: TWideStringField
      FieldName = 'OcijenaIzbacaj3'
      Size = 1
    end
    object qGridTotalPodignuto: TFloatField
      FieldName = 'TotalPodignuto'
    end
    object qGridSinclairBodovi: TFloatField
      FieldName = 'SinclairBodovi'
    end
    object qGridIDizeSe: TFloatField
      FieldName = 'IDizeSe'
      Visible = False
    end
    object qGridIPokusaj: TIntegerField
      FieldName = 'IPokusaj'
      Visible = False
    end
    object qGridTDizeSe: TFloatField
      FieldName = 'TDizeSe'
      Visible = False
    end
    object qGridTPokusaj: TIntegerField
      FieldName = 'TPokusaj'
      Visible = False
    end
    object qGridizvankonkurencije: TWideStringField
      FieldName = 'izvankonkurencije'
      Visible = False
      Size = 1
    end
    object qGridgrupa: TIntegerField
      FieldName = 'grupa'
      Visible = False
    end
  end
  object qKlubovi: TADOQuery
    Active = True
    Connection = MainForm.conn1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT KlubID, NazivKluba, MjestoKluba'
      'FROM Klubovi')
    Left = 304
    Top = 250
  end
  object qUcesnici: TADOQuery
    Active = True
    Connection = MainForm.conn1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT UcesnikID, Prezime + '#39' '#39' + Ime AS Ucesnik'
      'FROM Ucesnici')
    Left = 304
    Top = 282
  end
  object dsLookUcesnik: TDataSource
    DataSet = qUcesnici
    Left = 336
    Top = 282
  end
  object dsLookKlubovi: TDataSource
    DataSet = qKlubovi
    Left = 336
    Top = 250
  end
  object dsGridGotovo: TDataSource
    DataSet = qGridGotovo
    Left = 424
    Top = 425
  end
  object qGridGotovo: TADOQuery
    Connection = MainForm.conn1
    CursorType = ctStatic
    BeforeOpen = qGridBeforeOpen
    BeforePost = qGridGotovoBeforePost
    AfterPost = qGridAfterPost
    OnCalcFields = qGridGotovoCalcFields
    Parameters = <
      item
        Name = 'SifraNatjecanja'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 9
      end
      item
        Name = 'NoGrupe'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      
        'SELECT n.IDizeSe, n.IPokusaj, n.TDizeSe, n.TPokusaj, n.TjelesnaT' +
        'ezina, '
      
        'n.Prioritet, n.NatjecanjeDetailID, n.RedniBrojVaganja, n.SifraDi' +
        'zaca, n.SifraKluba, '
      
        'n.SifraKategorije, n.SinclairKoeficijen, n.SifraEkipno, n.SifraS' +
        'eniorsko, '
      
        'n.SifraJuniorsko, n.PocetnaTIzbacaj, n.PocetnaTTrzaj, n.Trzaj1, ' +
        'n.Trzaj2, '
      
        'n.Trzaj3, n.OcijenaTrzaj1, n.OcijenaTrzaj2, n.OcijenaTrzaj3, n.I' +
        'zbacaj1, '
      
        'n.Izbacaj2, n.Izbacaj3, n.OcijenaIzbacaj1, n.OcijenaIzbacaj2, n.' +
        'OcijenaIzbacaj3, '
      'n.TotalPodignuto, n.SinclairBodovi, n.izvankonkurencije, n.grupa'
      'FROM NatjecanjeDetail n'
      'WHERE n.NatjecanjeID = :SifraNatjecanja'
      'AND n.Grupa = :NoGrupe'
      'ORDER BY n.IDizeSe, n.IPokusaj, n.TjelesnaTezina, n.Prioritet')
    Left = 456
    Top = 425
    object gotovoRB: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'calcRB'
      Calculated = True
    end
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'Ucesnik'
      LookupDataSet = qUcesnici
      LookupKeyFields = 'UcesnikID'
      LookupResultField = 'Ucesnik'
      KeyFields = 'SifraDizaca'
      Lookup = True
    end
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'NazivKluba'
      LookupDataSet = qKlubovi
      LookupKeyFields = 'KlubID'
      LookupResultField = 'NazivKluba'
      KeyFields = 'SifraKluba'
      Lookup = True
    end
    object FloatField2: TFloatField
      FieldName = 'TjelesnaTezina'
    end
    object IntegerField3: TIntegerField
      FieldName = 'Prioritet'
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'NatjecanjeDetailID'
      ReadOnly = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'RedniBrojVaganja'
    end
    object IntegerField5: TIntegerField
      FieldName = 'SifraDizaca'
    end
    object IntegerField6: TIntegerField
      FieldName = 'SifraKluba'
    end
    object IntegerField7: TIntegerField
      FieldName = 'SifraKategorije'
    end
    object FloatField3: TFloatField
      FieldName = 'SinclairKoeficijen'
    end
    object WideStringField1: TWideStringField
      FieldName = 'SifraEkipno'
      Size = 2
    end
    object qGridGotovoSifraSeniorsko: TWideStringField
      DisplayLabel = 'Sen.'
      FieldName = 'SifraSeniorsko'
      Size = 1
    end
    object qGridGotovoSifraJuniorsko: TWideStringField
      DisplayLabel = 'Jun.'
      FieldName = 'SifraJuniorsko'
      Size = 1
    end
    object FloatField4: TFloatField
      FieldName = 'PocetnaTIzbacaj'
    end
    object FloatField5: TFloatField
      FieldName = 'PocetnaTTrzaj'
    end
    object FloatField6: TFloatField
      FieldName = 'Trzaj1'
    end
    object FloatField7: TFloatField
      FieldName = 'Trzaj2'
    end
    object FloatField8: TFloatField
      FieldName = 'Trzaj3'
    end
    object WideStringField3: TWideStringField
      FieldName = 'OcijenaTrzaj1'
      Size = 1
    end
    object WideStringField4: TWideStringField
      FieldName = 'OcijenaTrzaj2'
      Size = 1
    end
    object WideStringField5: TWideStringField
      FieldName = 'OcijenaTrzaj3'
      Size = 1
    end
    object FloatField9: TFloatField
      FieldName = 'Izbacaj1'
    end
    object FloatField10: TFloatField
      FieldName = 'Izbacaj2'
    end
    object FloatField11: TFloatField
      FieldName = 'Izbacaj3'
    end
    object WideStringField6: TWideStringField
      FieldName = 'OcijenaIzbacaj1'
      Size = 1
    end
    object WideStringField7: TWideStringField
      FieldName = 'OcijenaIzbacaj2'
      Size = 1
    end
    object WideStringField8: TWideStringField
      FieldName = 'OcijenaIzbacaj3'
      Size = 1
    end
    object FloatField12: TFloatField
      FieldName = 'TotalPodignuto'
    end
    object FloatField13: TFloatField
      FieldName = 'SinclairBodovi'
    end
    object qGridGotovoIDizeSe: TFloatField
      FieldName = 'IDizeSe'
    end
    object qGridGotovoIPokusaj: TIntegerField
      FieldName = 'IPokusaj'
    end
    object qGridGotovoTDizeSe: TFloatField
      FieldName = 'TDizeSe'
    end
    object qGridGotovoTPokusaj: TIntegerField
      FieldName = 'TPokusaj'
    end
    object qGridGotovoizvankonkurencije: TWideStringField
      FieldName = 'izvankonkurencije'
      Visible = False
      Size = 1
    end
    object qGridGotovogrupa: TIntegerField
      FieldName = 'grupa'
      Visible = False
    end
  end
end
