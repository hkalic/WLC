object dlgNatjecanje: TdlgNatjecanje
  Left = 345
  Top = 251
  ActiveControl = cxGrid1
  BorderStyle = bsDialog
  Caption = 'Odaberite aktivno natjecanje'
  ClientHeight = 214
  ClientWidth = 625
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object OKBtn: TButton
    Left = 247
    Top = 180
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 327
    Top = 180
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 8
    Width = 609
    Height = 161
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnKeyDown = cxGrid1DBTableView1KeyDown
      DataController.DataSource = ds
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NatjecanjeID: TcxGridDBColumn
        DataBinding.FieldName = 'NatjecanjeID'
        Visible = False
      end
      object cxGrid1DBTableView1NazivNatjecanja: TcxGridDBColumn
        Caption = 'Naziv natjecanja'
        DataBinding.FieldName = 'NazivNatjecanja'
        Width = 384
      end
      object cxGrid1DBTableView1MjestoNatjecanja: TcxGridDBColumn
        Caption = 'Mjesto'
        DataBinding.FieldName = 'MjestoNatjecanja'
        Width = 75
      end
      object cxGrid1DBTableView1DatumNatjecanja: TcxGridDBColumn
        Caption = 'Datum'
        DataBinding.FieldName = 'DatumNatjecanja'
        Width = 62
      end
      object cxGrid1DBTableView1Status: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object qNatjecanja: TADOQuery
    Connection = MainForm.conn1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT NatjecanjeID, NazivNatjecanja, MjestoNatjecanja, '
      'DatumNatjecanja, StatusNatjecanja,'
      'Status = CASE StatusNatjecanja '
      #9'WHEN '#39'Z'#39' THEN '#39'Zaklju'#269'eno'#39
      #9'WHEN '#39'V'#39' THEN '#39'Vaganje'#39
      #9'WHEN '#39'N'#39' THEN '#39'U toku'#39
      #9'ELSE '#39#39' END'
      'FROM Natjecanja'
      'ORDER BY DatumNatjecanja DESC')
    Left = 8
    Top = 176
  end
  object ds: TDataSource
    DataSet = qNatjecanja
    Left = 40
    Top = 176
  end
end
