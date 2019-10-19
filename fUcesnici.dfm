object fUnosUcesnika: TfUnosUcesnika
  Left = 286
  Top = 203
  Width = 291
  Height = 477
  Caption = 'Unos u'#269'esnika'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 283
    Height = 65
    Align = alTop
    Enabled = False
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 27
      Top = 9
      Width = 21
      Height = 17
      Caption = 'Ime'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 56
      Top = 8
      Width = 121
      Height = 21
      DataBinding.DataField = 'Ime'
      DataBinding.DataSource = ds
      TabOrder = 1
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 34
      Width = 41
      Height = 17
      Caption = 'Prezime'
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 56
      Top = 32
      Width = 121
      Height = 21
      DataBinding.DataField = 'Prezime'
      DataBinding.DataSource = ds
      TabOrder = 3
    end
    object cxDBRadioGroup1: TcxDBRadioGroup
      Left = 216
      Top = 8
      Width = 44
      Height = 49
      Caption = ' Spol '
      DataBinding.DataField = 'spol'
      DataBinding.DataSource = ds
      Properties.DefaultValue = 'M'
      Properties.Items = <
        item
          Caption = 'M'
          Value = 'M'
        end
        item
          Caption = 'Z'
          Value = 'Z'
        end>
      Style.Edges = [bTop]
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 106
    Width = 283
    Height = 344
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 281
      Height = 342
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnKeyDown = cxGrid1DBTableView1KeyDown
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1UcesnikID: TcxGridDBColumn
          DataBinding.FieldName = 'UcesnikID'
          Visible = False
        end
        object cxGrid1DBTableView1Ime: TcxGridDBColumn
          DataBinding.FieldName = 'Ime'
        end
        object cxGrid1DBTableView1Prezime: TcxGridDBColumn
          DataBinding.FieldName = 'Prezime'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 283
    Height = 41
    Align = alTop
    TabOrder = 2
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
  end
  object ds: TDataSource
    DataSet = qUcesnici
    Left = 200
    Top = 128
  end
  object qUcesnici: TADOQuery
    Connection = MainForm.conn1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ime, prezime, spol FROM Ucesnici')
    Left = 168
    Top = 130
  end
end
