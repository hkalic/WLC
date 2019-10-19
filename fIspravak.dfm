object fIspravakVaganja: TfIspravakVaganja
  Left = 339
  Top = 172
  Width = 281
  Height = 422
  Caption = 'Ispravak vaganja'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 328
    Width = 262
    Height = 13
    Caption = 'Nemojte zaboraviti izgasiti ispravak vaganja!!!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxLabel1: TcxLabel
    Left = 71
    Top = 9
    Width = 43
    Height = 17
    Caption = 'U'#269'esnik'
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 120
    Top = 8
    Width = 121
    Height = 21
    DataBinding.DataField = 'Ucesnik'
    DataBinding.DataSource = fNatjecanjeDetails.dsGrid
    Enabled = False
    Properties.ReadOnly = False
    TabOrder = 12
  end
  object cxDBTextEdit3: TcxDBTextEdit
    Left = 120
    Top = 32
    Width = 121
    Height = 21
    DataBinding.DataField = 'NazivKluba'
    DataBinding.DataSource = fNatjecanjeDetails.dsGrid
    Enabled = False
    Properties.ReadOnly = False
    TabOrder = 13
  end
  object cxLabel3: TcxLabel
    Left = 56
    Top = 34
    Width = 60
    Height = 17
    Caption = 'Naziv kluba'
  end
  object cxLabel4: TcxLabel
    Left = 25
    Top = 74
    Width = 91
    Height = 17
    Caption = 'Tjelesna te'#382'ina'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
  end
  object cxDBTextEdit4: TcxDBTextEdit
    Left = 120
    Top = 72
    Width = 121
    Height = 21
    DataBinding.DataField = 'TjelesnaTezina'
    DataBinding.DataSource = fNatjecanjeDetails.dsGrid
    ParentFont = False
    Properties.ReadOnly = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    TabOrder = 1
    OnExit = IspraviFloat
  end
  object cxLabel5: TcxLabel
    Left = 40
    Top = 202
    Width = 44
    Height = 17
    Caption = 'Ekipno'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
  end
  object cxDBTextEdit5: TcxDBTextEdit
    Left = 88
    Top = 200
    Width = 41
    Height = 21
    DataBinding.DataField = 'SifraEkipno'
    DataBinding.DataSource = fNatjecanjeDetails.dsGrid
    ParentFont = False
    Properties.ReadOnly = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    TabOrder = 4
  end
  object cxLabel6: TcxLabel
    Left = 23
    Top = 226
    Width = 61
    Height = 17
    Caption = 'Seniorsko'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
  end
  object cxDBTextEdit6: TcxDBTextEdit
    Left = 88
    Top = 224
    Width = 41
    Height = 21
    DataBinding.DataField = 'SifraSeniorsko'
    DataBinding.DataSource = fNatjecanjeDetails.dsGrid
    ParentFont = False
    Properties.ReadOnly = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    TabOrder = 5
  end
  object cxLabel7: TcxLabel
    Left = 25
    Top = 250
    Width = 59
    Height = 17
    Caption = 'Juniorsko'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
  end
  object cxDBTextEdit7: TcxDBTextEdit
    Left = 88
    Top = 248
    Width = 41
    Height = 21
    DataBinding.DataField = 'SifraJuniorsko'
    DataBinding.DataSource = fNatjecanjeDetails.dsGrid
    ParentFont = False
    Properties.ReadOnly = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    TabOrder = 6
  end
  object cxLabel8: TcxLabel
    Left = 25
    Top = 98
    Width = 89
    Height = 17
    Caption = 'Sinclair koeficijent'
  end
  object cxDBTextEdit8: TcxDBTextEdit
    Left = 120
    Top = 96
    Width = 121
    Height = 21
    DataBinding.DataField = 'SinclairKoeficijen'
    DataBinding.DataSource = fNatjecanjeDetails.dsGrid
    Enabled = False
    Properties.ReadOnly = False
    TabOrder = 20
  end
  object OKBtn: TButton
    Left = 53
    Top = 356
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 10
  end
  object CancelBtn: TButton
    Left = 157
    Top = 356
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 11
  end
  object cxLabel9: TcxLabel
    Left = 22
    Top = 130
    Width = 92
    Height = 17
    Caption = 'Po'#269'etni izba'#269'aj'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
  end
  object cxDBTextEdit9: TcxDBTextEdit
    Left = 120
    Top = 128
    Width = 121
    Height = 21
    DataBinding.DataField = 'PocetnaTIzbacaj'
    DataBinding.DataSource = fNatjecanjeDetails.dsGrid
    ParentFont = False
    Properties.ReadOnly = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    TabOrder = 2
  end
  object cxLabel10: TcxLabel
    Left = 38
    Top = 154
    Width = 76
    Height = 17
    Caption = 'Po'#269'etni trzaj'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
  end
  object cxDBTextEdit10: TcxDBTextEdit
    Left = 120
    Top = 152
    Width = 121
    Height = 21
    DataBinding.DataField = 'PocetnaTTrzaj'
    DataBinding.DataSource = fNatjecanjeDetails.dsGrid
    ParentFont = False
    Properties.ReadOnly = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    TabOrder = 3
  end
  object cxLabel2: TcxLabel
    Left = 152
    Top = 202
    Width = 49
    Height = 17
    Caption = 'Prioritet'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
  end
  object cxLabel11: TcxLabel
    Left = 162
    Top = 226
    Width = 39
    Height = 17
    Caption = 'Grupa'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 208
    Top = 200
    Width = 41
    Height = 21
    DataBinding.DataField = 'Prioritet'
    DataBinding.DataSource = fNatjecanjeDetails.dsGrid
    ParentFont = False
    Properties.ReadOnly = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    TabOrder = 7
  end
  object cxDBTextEdit11: TcxDBTextEdit
    Left = 208
    Top = 224
    Width = 41
    Height = 21
    DataBinding.DataField = 'grupa'
    DataBinding.DataSource = fNatjecanjeDetails.dsGrid
    ParentFont = False
    Properties.ReadOnly = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    TabOrder = 8
  end
  object cxDBCheckBox1: TcxDBCheckBox
    Left = 72
    Top = 288
    Width = 137
    Height = 21
    Caption = 'Izvan konkurencije'
    DataBinding.DataField = 'izvankonkurencije'
    DataBinding.DataSource = fNatjecanjeDetails.dsGrid
    ParentFont = False
    Properties.Alignment = taRightJustify
    Properties.ValueChecked = 'D'
    Properties.ValueUnchecked = 'N'
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    TabOrder = 9
  end
end
