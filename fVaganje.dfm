object fUnosVaganje: TfUnosVaganje
  Left = 323
  Top = 159
  Width = 673
  Height = 429
  ActiveControl = cxGrid1
  Caption = 'WLC - Zapisnik vaganja'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 665
    Height = 153
    Align = alTop
    Enabled = False
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 251
      Top = 17
      Width = 75
      Height = 17
      Caption = 'Tjelesna te'#382'ina'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 336
      Top = 16
      Width = 41
      Height = 21
      DataBinding.DataField = 'TjelesnaTezina'
      DataBinding.DataSource = ds
      Enabled = False
      TabOrder = 6
      OnExit = cxDBTextEdit1Exit
    end
    object cxLabel3: TcxLabel
      Left = 13
      Top = 10
      Width = 31
      Height = 17
      Caption = 'Diza'#269
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 56
      Top = 8
      Width = 145
      Height = 21
      DataBinding.DataField = 'SifraDizaca'
      DataBinding.DataSource = ds
      Properties.KeyFieldNames = 'UcesnikID'
      Properties.ListColumns = <
        item
          FieldName = 'Ucesnik'
        end>
      Properties.ListSource = dsLookUcesnik
      TabOrder = 1
    end
    object cxLabel2: TcxLabel
      Left = 19
      Top = 34
      Width = 25
      Height = 17
      Caption = 'Klub'
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 56
      Top = 32
      Width = 145
      Height = 21
      DataBinding.DataField = 'SifraKluba'
      DataBinding.DataSource = ds
      Enabled = False
      Properties.KeyFieldNames = 'KlubID'
      Properties.ListColumns = <
        item
          Caption = 'Naziv'
          FieldName = 'NazivKluba'
        end
        item
          Caption = 'Mjesto'
          FieldName = 'MjestoKluba'
        end>
      Properties.ListSource = dsLookKlubovi
      TabOrder = 2
    end
    object cxLabel4: TcxLabel
      Left = 449
      Top = 17
      Width = 51
      Height = 17
      Caption = 'Kategorija'
    end
    object cxLabel5: TcxLabel
      Left = 90
      Top = 73
      Width = 37
      Height = 17
      Caption = 'Ekipno'
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 136
      Top = 72
      Width = 65
      Height = 21
      DataBinding.DataField = 'SifraEkipno'
      DataBinding.DataSource = ds
      Enabled = False
      TabOrder = 8
    end
    object cxLabel6: TcxLabel
      Left = 75
      Top = 97
      Width = 51
      Height = 17
      Caption = 'Seniorsko'
    end
    object cxLabel7: TcxLabel
      Left = 297
      Top = 73
      Width = 27
      Height = 17
      Caption = 'Trzaj'
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 336
      Top = 72
      Width = 41
      Height = 21
      DataBinding.DataField = 'PocetnaTTrzaj'
      DataBinding.DataSource = ds
      Enabled = False
      TabOrder = 13
    end
    object cxLabel8: TcxLabel
      Left = 286
      Top = 97
      Width = 38
      Height = 17
      Caption = 'Izba'#269'aj'
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 336
      Top = 96
      Width = 41
      Height = 21
      DataBinding.DataField = 'PocetnaTIzbacaj'
      DataBinding.DataSource = ds
      Enabled = False
      TabOrder = 15
    end
    object cxLabel9: TcxLabel
      Left = 411
      Top = 41
      Width = 89
      Height = 17
      Caption = 'Sinclair koeficijent'
    end
    object cxLabel10: TcxLabel
      Left = 285
      Top = 121
      Width = 39
      Height = 17
      Caption = 'Prioritet'
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 336
      Top = 120
      Width = 41
      Height = 21
      DataBinding.DataField = 'Prioritet'
      DataBinding.DataSource = ds
      Enabled = False
      TabOrder = 18
    end
    object cxDBTextEdit7: TcxDBMaskEdit
      Left = 512
      Top = 40
      Width = 73
      Height = 21
      DataBinding.DataField = 'SinclairKoeficijen'
      DataBinding.DataSource = ds
      Enabled = False
      Properties.EditMask = '9,999999'
      Properties.MaxLength = 0
      TabOrder = 19
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 416
      Top = 120
      Width = 121
      Height = 21
      TabStop = False
      Caption = 'Izvan konkurencije'
      DataBinding.DataField = 'IzvanKonkurencije'
      DataBinding.DataSource = ds
      Properties.ValueChecked = 'D'
      Properties.ValueUnchecked = 'N'
      TabOrder = 20
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox
      Left = 512
      Top = 16
      Width = 73
      Height = 21
      DataBinding.DataField = 'SifraKategorije'
      DataBinding.DataSource = ds
      Enabled = False
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'SifraKategorije'
      Properties.ListColumns = <
        item
          FieldName = 'NazivKategorije'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsLookKategorije
      TabOrder = 21
      OnKeyDown = ObrisiLookup
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 136
      Top = 96
      Width = 41
      Height = 21
      DataBinding.DataField = 'SifraSeniorsko'
      DataBinding.DataSource = ds
      Enabled = False
      TabOrder = 10
    end
    object cxLabel11: TcxLabel
      Left = 77
      Top = 121
      Width = 49
      Height = 17
      Caption = 'Juniorsko'
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 136
      Top = 120
      Width = 41
      Height = 21
      DataBinding.DataField = 'SifraJuniorsko'
      DataBinding.DataSource = ds
      Enabled = False
      TabOrder = 11
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 153
    Width = 665
    Height = 41
    Align = alTop
    TabOrder = 1
    object cxDBNavigator1: TcxDBNavigator
      Left = 16
      Top = 8
      Width = 185
      Height = 25
      Buttons.OnButtonClick = cxDBNavigator1ButtonsButtonClick
      Buttons.First.Visible = False
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Visible = False
      Buttons.Next.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = ds
      TabOrder = 0
    end
    object bVaganje: TcxButton
      Left = 440
      Top = 8
      Width = 154
      Height = 25
      Caption = 'F12 - Zapo'#269'ni natjecanje'
      TabOrder = 1
      TabStop = False
      OnClick = bVaganjeClick
    end
    object bIspis: TcxButton
      Left = 280
      Top = 8
      Width = 154
      Height = 25
      Caption = 'Ispi'#353'i zapisnik'
      TabOrder = 2
      TabStop = False
      OnClick = bIspisClick
    end
    object bIspravak: TcxButton
      Left = 630
      Top = 8
      Width = 27
      Height = 25
      Caption = 'X'
      TabOrder = 3
      TabStop = False
      OnClick = bIspravakClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 194
    Width = 665
    Height = 208
    Align = alClient
    TabOrder = 2
    TabStop = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dsGrid
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1NatjecanjeDetailID: TcxGridDBColumn
        DataBinding.FieldName = 'NatjecanjeDetailID'
        Visible = False
      end
      object cxGrid1DBTableView1NatjecanjeID: TcxGridDBColumn
        DataBinding.FieldName = 'NatjecanjeID'
        Visible = False
      end
      object cxGrid1DBTableView1RedniBrojVaganja: TcxGridDBColumn
        Caption = 'RB'
        DataBinding.FieldName = 'RedniBrojVaganja'
        HeaderAlignmentHorz = taCenter
        Width = 40
      end
      object cxGrid1DBTableView1Ucesnik: TcxGridDBColumn
        Caption = 'U'#269'esnik'
        DataBinding.FieldName = 'Ucesnik'
      end
      object cxGrid1DBTableView1NazivKluba: TcxGridDBColumn
        Caption = 'Naziv kluba'
        DataBinding.FieldName = 'NazivKluba'
      end
      object cxGrid1DBTableView1SifraDizaca: TcxGridDBColumn
        DataBinding.FieldName = 'SifraDizaca'
        Visible = False
      end
      object cxGrid1DBTableView1SifraKluba: TcxGridDBColumn
        DataBinding.FieldName = 'SifraKluba'
        Visible = False
      end
      object cxGrid1DBTableView1TjelesnaTezina: TcxGridDBColumn
        DataBinding.FieldName = 'TjelesnaTezina'
        Visible = False
      end
      object cxGrid1DBTableView1SifraKategorije: TcxGridDBColumn
        DataBinding.FieldName = 'SifraKategorije'
        Visible = False
      end
      object cxGrid1DBTableView1SinclairKoeficijen: TcxGridDBColumn
        DataBinding.FieldName = 'SinclairKoeficijen'
        Visible = False
      end
      object cxGrid1DBTableView1SifraEkipno: TcxGridDBColumn
        Caption = 'Ekipno'
        DataBinding.FieldName = 'SifraEkipno'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        HeaderAlignmentHorz = taCenter
        Width = 69
      end
      object cxGrid1DBTableView1SifraSeniorsko: TcxGridDBColumn
        Caption = 'Sen.'
        DataBinding.FieldName = 'SifraSeniorsko'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 34
      end
      object cxGrid1DBTableView1SifraJuniorsko: TcxGridDBColumn
        Caption = 'Jun.'
        DataBinding.FieldName = 'SifraJuniorsko'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 31
      end
      object cxGrid1DBTableView1PocetnaTTrzaj: TcxGridDBColumn
        DataBinding.FieldName = 'PocetnaTTrzaj'
        Visible = False
      end
      object cxGrid1DBTableView1PocetnaTIzbacaj: TcxGridDBColumn
        DataBinding.FieldName = 'PocetnaTIzbacaj'
        Visible = False
      end
      object cxGrid1DBTableView1Prioritet: TcxGridDBColumn
        DataBinding.FieldName = 'Prioritet'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.Alignment.Horz = taCenter
        Visible = False
      end
      object cxGrid1DBTableView1IzvanKonkurencije: TcxGridDBColumn
        Caption = 'Iz.k.'
        DataBinding.FieldName = 'IzvanKonkurencije'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.DisplayChecked = 'D'
        Properties.DisplayUnchecked = 'N'
        Properties.ValueChecked = 'D'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        Width = 35
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object qNatjecanjeEdit: TADOQuery
    Connection = MainForm.conn1
    CursorType = ctStatic
    AfterInsert = qNatjecanjeEditAfterInsert
    AfterEdit = qNatjecanjeEditAfterEdit
    BeforePost = qNatjecanjeEditBeforePost
    AfterPost = qNatjecanjeEditAfterPost
    AfterCancel = qNatjecanjeEditAfterCancel
    AfterDelete = qNatjecanjeEditAfterPost
    Parameters = <
      item
        Name = 'SifraDizaca'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      
        'SELECT NatjecanjeDetailID, NatjecanjeID, RedniBrojVaganja, Sifra' +
        'Dizaca, '
      
        'SifraKluba, TjelesnaTezina, SifraKategorije, SinclairKoeficijen,' +
        ' SifraEkipno, '
      'SifraSeniorsko, SifraJuniorsko, PocetnaTTrzaj, PocetnaTIzbacaj, '
      'SinclairBodovi, Prioritet, IzvanKonkurencije'
      'FROM NatjecanjeDetail'
      'WHERE SifraDizaca = :SifraDizaca')
    Left = 304
    Top = 202
  end
  object ds: TDataSource
    DataSet = qNatjecanjeEdit
    Left = 336
    Top = 200
  end
  object qUcesnici: TADOQuery
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
  object spGrid: TADOStoredProc
    Connection = MainForm.conn1
    CursorType = ctStatic
    BeforeOpen = spGridBeforeOpen
    AfterOpen = spGridAfterOpen
    AfterScroll = spGridAfterScroll
    ProcedureName = 'sp_VaganjeGrid;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@SifraNatjecanja'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 9
      end>
    Left = 408
    Top = 233
  end
  object dsGrid: TDataSource
    DataSet = spGrid
    Left = 440
    Top = 233
  end
  object qKlubovi: TADOQuery
    Connection = MainForm.conn1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT KlubID, NazivKluba, MjestoKluba'
      'FROM Klubovi')
    Left = 304
    Top = 250
  end
  object dsLookKlubovi: TDataSource
    DataSet = qKlubovi
    Left = 336
    Top = 250
  end
  object qKategorije: TADOQuery
    Connection = MainForm.conn1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT SifraKategorije, NazivKategorije'
      'FROM Kategorije')
    Left = 136
    Top = 272
  end
  object dsLookKategorije: TDataSource
    DataSet = qKategorije
    Left = 168
    Top = 272
  end
end
