object fVaganjeTablica: TfVaganjeTablica
  Left = 280
  Top = 163
  Width = 896
  Height = 437
  Caption = 'WLC - Vaganje'
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 888
    Height = 369
    Align = alClient
    TabOrder = 0
    TabStop = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = dsVaganje
      DataController.KeyFieldNames = 'NatjecanjeDetailID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Enabled = False
      NavigatorButtons.Filter.Visible = False
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.IncSearch = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Appending = True
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.NewItemRow = True
      OptionsView.NewItemRowInfoText = 'Kliknite ovdje da bi dodali novi podatak'
      object cxGrid1DBTableView1NatjecanjeID: TcxGridDBColumn
        DataBinding.FieldName = 'NatjecanjeID'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1RedniBrojVaganja: TcxGridDBColumn
        Caption = 'RB'
        DataBinding.FieldName = 'RedniBrojVaganja'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 21
      end
      object cxGrid1DBTableView1SifraDizaca: TcxGridDBColumn
        DataBinding.FieldName = 'SifraDizaca'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1Ime: TcxGridDBColumn
        DataBinding.FieldName = 'Ime'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 88
      end
      object cxGrid1DBTableView1Prezime: TcxGridDBColumn
        DataBinding.FieldName = 'Prezime'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 97
      end
      object cxGrid1DBTableView1SifraKluba: TcxGridDBColumn
        DataBinding.FieldName = 'SifraKluba'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object cxGrid1DBTableView1NazivKluba: TcxGridDBColumn
        Caption = 'Naziv kluba'
        DataBinding.FieldName = 'NazivKluba'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 61
      end
      object cxGrid1DBTableView1MjestoKluba: TcxGridDBColumn
        Caption = 'Mjesto kluba'
        DataBinding.FieldName = 'MjestoKluba'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 65
      end
      object cxGrid1DBTableView1GodinaRodjenja: TcxGridDBColumn
        Caption = 'Godi'#353'te'
        DataBinding.FieldName = 'GodinaRodjenja'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.EditMask = '!0000;0; '
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 41
      end
      object cxGrid1DBTableView1Spol: TcxGridDBColumn
        DataBinding.FieldName = 'Spol'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.CharCase = ecUpperCase
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '(M)? | (Z)?'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 26
      end
      object cxGrid1DBTableView1TjelesnaTezina: TcxGridDBColumn
        Caption = 'Te'#382'ina'
        DataBinding.FieldName = 'TjelesnaTezina'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 44
      end
      object cxGrid1DBTableView1SinclairKoeficijent: TcxGridDBColumn
        Caption = 'Sinclair'
        DataBinding.FieldName = 'SinclairKoeficijent'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 51
      end
      object cxGrid1DBTableView1NazivKategorije: TcxGridDBColumn
        Caption = 'Kategorija'
        DataBinding.FieldName = 'NazivKategorije'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Options.Focusing = False
        Width = 52
      end
      object cxGrid1DBTableView1PocetnaTTrzaj: TcxGridDBColumn
        Caption = 'Trzaj'
        DataBinding.FieldName = 'PocetnaTTrzaj'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 39
      end
      object cxGrid1DBTableView1PocetnaTIzbacaj: TcxGridDBColumn
        Caption = 'Izba'#269'aj'
        DataBinding.FieldName = 'PocetnaTIzbacaj'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 39
      end
      object cxGrid1DBTableView1Ekipno: TcxGridDBColumn
        DataBinding.FieldName = 'Ekipno'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.CharCase = ecUpperCase
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 62
      end
      object cxGrid1DBTableView1Seniorsko: TcxGridDBColumn
        Caption = 'Sen.'
        DataBinding.FieldName = 'Seniorsko'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.CharCase = ecUpperCase
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = 'S'
        Properties.MaxLength = 0
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 31
      end
      object cxGrid1DBTableView1Juniorsko: TcxGridDBColumn
        Caption = 'Jun.'
        DataBinding.FieldName = 'Juniorsko'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.CharCase = ecUpperCase
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = 'J? | K?'
        Properties.MaxLength = 0
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 30
      end
      object cxGrid1DBTableView1Prioritet: TcxGridDBColumn
        DataBinding.FieldName = 'Prioritet'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 40
      end
      object cxGrid1DBTableView1IzvanKonkurencije: TcxGridDBColumn
        Caption = 'IK'
        DataBinding.FieldName = 'IzvanKonkurencije'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.DisplayChecked = 'D'
        Properties.DisplayUnchecked = 'N'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'D'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 23
      end
      object cxGrid1DBTableView1Grupa: TcxGridDBColumn
        DataBinding.FieldName = 'Grupa'
        Width = 38
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 369
    Width = 888
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bZatvori: TcxButton
      Left = 456
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Zapo'#269'ni natjecanje'
      TabOrder = 0
      OnClick = bZatvoriClick
    end
    object bIspis: TcxButton
      Left = 304
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Ispi'#353'i zapisnik'
      TabOrder = 1
      TabStop = False
      OnClick = bIspisClick
    end
  end
  object dsVaganje: TDataSource
    DataSet = qVaganje
    Left = 376
    Top = 256
  end
  object qVaganje: TADOQuery
    Connection = MainForm.conn1
    CursorType = ctStatic
    BeforeOpen = qVaganjeBeforeOpen
    AfterInsert = qVaganjeAfterInsert
    BeforePost = qVaganjeBeforePost
    Parameters = <
      item
        Name = 'SifraNatjecanja'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 20
      end>
    SQL.Strings = (
      
        'SELECT NatjecanjeDetailID, NatjecanjeID, RedniBrojVaganja, Sifra' +
        'Dizaca, Ime, Prezime, Spol, GodinaRodjenja, '
      
        'SifraKluba, NazivKluba, MjestoKluba, TjelesnaTezina, GodinaRodje' +
        'nja, '
      
        'SinclairKoeficijent, SifraKategorije, NazivKategorije, Ekipno, S' +
        'eniorsko, Juniorsko, '
      
        'PocetnaTTrzaj, PocetnaTIzbacaj, Prioritet, IzvanKonkurencije, Da' +
        'LiJeJunior, Grupa'
      'FROM Vaganje'
      'WHERE NatjecanjeID = :SifraNatjecanja')
    Left = 408
    Top = 256
  end
  object qTemp2: TADOQuery
    Connection = MainForm.conn1
    Parameters = <>
    Left = 472
    Top = 336
  end
  object dsTemp2: TDataSource
    DataSet = qTemp2
    Left = 504
    Top = 336
  end
  object qTemp1: TADOQuery
    Connection = MainForm.conn1
    Parameters = <>
    Left = 472
    Top = 296
  end
  object dsTemp1: TDataSource
    DataSet = qTemp1
    Left = 504
    Top = 296
  end
end
