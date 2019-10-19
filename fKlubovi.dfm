object fUnosKlubova: TfUnosKlubova
  Left = 450
  Top = 178
  Width = 414
  Height = 476
  Caption = 'Unos klubova'
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
    Width = 406
    Height = 65
    Align = alTop
    Enabled = False
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 11
      Top = 9
      Width = 60
      Height = 17
      Caption = 'Naziv kluba'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 80
      Top = 8
      Width = 121
      Height = 21
      DataBinding.DataField = 'NazivKluba'
      DataBinding.DataSource = ds
      TabOrder = 1
    end
    object cxLabel2: TcxLabel
      Left = 7
      Top = 34
      Width = 64
      Height = 17
      Caption = 'Mjesto kluba'
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 80
      Top = 32
      Width = 121
      Height = 21
      DataBinding.DataField = 'MjestoKluba'
      DataBinding.DataSource = ds
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 406
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 106
    Width = 406
    Height = 343
    Align = alClient
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 404
      Height = 341
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnKeyDown = cxGrid1DBTableView1KeyDown
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1KlubID: TcxGridDBColumn
          DataBinding.FieldName = 'KlubID'
          Visible = False
        end
        object cxGrid1DBTableView1NazivKluba: TcxGridDBColumn
          Caption = 'Naziv kluba'
          DataBinding.FieldName = 'NazivKluba'
        end
        object cxGrid1DBTableView1MjestoKluba: TcxGridDBColumn
          Caption = 'Mjesto kluba'
          DataBinding.FieldName = 'MjestoKluba'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object ds: TDataSource
    DataSet = qKlubovi
    Left = 200
    Top = 128
  end
  object qKlubovi: TADOQuery
    Connection = MainForm.conn1
    Parameters = <>
    SQL.Strings = (
      'SELECT NazivKluba, MjestoKluba FROM Klubovi')
    Left = 168
    Top = 130
  end
end
