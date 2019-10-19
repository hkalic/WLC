object fUnosNatjecanja: TfUnosNatjecanja
  Left = 345
  Top = 173
  Width = 643
  Height = 486
  ActiveControl = cxGrid1
  Caption = 'WLC - Unos natjecanja'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 169
    Align = alTop
    Enabled = False
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 11
      Top = 9
      Width = 83
      Height = 17
      Caption = 'Naziv natjecanja'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 104
      Top = 8
      Width = 369
      Height = 21
      DataBinding.DataField = 'NazivNatjecanja'
      DataBinding.DataSource = ds
      TabOrder = 1
    end
    object cxLabel2: TcxLabel
      Left = 59
      Top = 34
      Width = 35
      Height = 17
      Caption = 'Datum'
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 104
      Top = 32
      Width = 121
      Height = 21
      DataBinding.DataField = 'DatumNatjecanja'
      DataBinding.DataSource = ds
      TabOrder = 3
    end
    object cxLabel3: TcxLabel
      Left = 53
      Top = 82
      Width = 51
      Height = 17
      Caption = 'Sudac #1'
    end
    object cxLabel7: TcxLabel
      Left = 53
      Top = 106
      Width = 51
      Height = 17
      Caption = 'Sudac #2'
    end
    object cxLabel8: TcxLabel
      Left = 53
      Top = 130
      Width = 51
      Height = 17
      Caption = 'Sudac #3'
    end
    object cxLabel9: TcxLabel
      Left = 280
      Top = 34
      Width = 90
      Height = 17
      Caption = 'Mjesto odr'#382'avanja'
    end
    object cxDBMaskEdit3: TcxDBMaskEdit
      Left = 376
      Top = 32
      Width = 97
      Height = 21
      DataBinding.DataField = 'MjestoNatjecanja'
      DataBinding.DataSource = ds
      TabOrder = 4
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 104
      Top = 80
      Width = 121
      Height = 21
      DataBinding.DataField = 'Sudac1'
      DataBinding.DataSource = ds
      TabOrder = 5
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 104
      Top = 104
      Width = 121
      Height = 21
      DataBinding.DataField = 'Sudac2'
      DataBinding.DataSource = ds
      TabOrder = 7
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 104
      Top = 128
      Width = 121
      Height = 21
      DataBinding.DataField = 'Sudac3'
      DataBinding.DataSource = ds
      TabOrder = 9
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 232
      Top = 80
      Width = 41
      Height = 21
      DataBinding.DataField = 'S1Rang'
      DataBinding.DataSource = ds
      TabOrder = 6
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 232
      Top = 104
      Width = 41
      Height = 21
      DataBinding.DataField = 'S2Rang'
      DataBinding.DataSource = ds
      TabOrder = 8
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 232
      Top = 128
      Width = 41
      Height = 21
      DataBinding.DataField = 'S3Rang'
      DataBinding.DataSource = ds
      TabOrder = 10
    end
    object cxLabel10: TcxLabel
      Left = 238
      Top = 62
      Width = 30
      Height = 17
      Caption = 'Rang'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsUnderline]
    end
    object cxLabel11: TcxLabel
      Left = 288
      Top = 106
      Width = 53
      Height = 17
      Caption = 'Zapisni'#269'ar'
      Properties.Alignment.Horz = taRightJustify
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 344
      Top = 104
      Width = 121
      Height = 21
      DataBinding.DataField = 'Zapisnicar'
      DataBinding.DataSource = ds
      TabOrder = 11
    end
    object cxLabel12: TcxLabel
      Left = 301
      Top = 130
      Width = 41
      Height = 17
      Caption = 'Delegat'
      Properties.Alignment.Horz = taRightJustify
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 344
      Top = 128
      Width = 121
      Height = 21
      DataBinding.DataField = 'Delegat'
      DataBinding.DataSource = ds
      TabOrder = 13
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 472
      Top = 104
      Width = 41
      Height = 21
      DataBinding.DataField = 'ZRang'
      DataBinding.DataSource = ds
      TabOrder = 12
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 472
      Top = 128
      Width = 41
      Height = 21
      DataBinding.DataField = 'DRang'
      DataBinding.DataSource = ds
      TabOrder = 14
    end
    object cxLabel13: TcxLabel
      Left = 478
      Top = 86
      Width = 30
      Height = 17
      Caption = 'Rang'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsUnderline]
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 169
    Width = 635
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      635
      41)
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
      Left = 552
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Vaganje'
      TabOrder = 1
      TabStop = False
      OnClick = bVaganjeClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 210
    Width = 635
    Height = 249
    Align = alClient
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 633
      Height = 247
      Align = alClient
      TabOrder = 0
      TabStop = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnKeyDown = cxGrid1DBTableView1KeyDown
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1NatjecanjeID: TcxGridDBColumn
          DataBinding.FieldName = 'NatjecanjeID'
          Visible = False
        end
        object cxGrid1DBTableView1NazivNatjecanja: TcxGridDBColumn
          Caption = 'Naziv natjecanja'
          DataBinding.FieldName = 'NazivNatjecanja'
          Width = 463
        end
        object cxGrid1DBTableView1DatumNatjecanja: TcxGridDBColumn
          Caption = 'Datum'
          DataBinding.FieldName = 'DatumNatjecanja'
        end
        object cxGrid1DBTableView1Status: TcxGridDBColumn
          Caption = 'S'
          DataBinding.FieldName = 'StatusNatjecanja'
          HeaderAlignmentHorz = taCenter
          Width = 20
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object qNatjecanje: TADOQuery
    Connection = MainForm.conn1
    CursorType = ctStatic
    AfterInsert = qNatjecanjeAfterInsert
    Parameters = <>
    SQL.Strings = (
      
        'SELECT NatjecanjeID, NazivNatjecanja, MjestoNatjecanja, DatumNat' +
        'jecanja, '
      
        'SinclairKonstanta, SinclairKonstanta2, SinclairKonstantaZene, Si' +
        'nclairKonstantaZene2,'
      'Sudac1, S1Rang, Sudac2, S2Rang, Sudac3, S3Rang, '
      'Zapisnicar, ZRang, Delegat, DRang, StatusNatjecanja'
      'FROM Natjecanja')
    Left = 296
    Top = 226
  end
  object ds: TDataSource
    DataSet = qNatjecanje
    OnDataChange = dsDataChange
    Left = 328
    Top = 224
  end
end
