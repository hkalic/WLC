unit fNatjecanja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ADODB, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxNavigator, cxDBNavigator,
  cxTextEdit, cxDBEdit, cxContainer, cxLabel, ExtCtrls, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  StdCtrls, Buttons, cxLookAndFeelPainters, cxButtons, cxCheckBox;

type
  TfUnosNatjecanja = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    Panel3: TPanel;
    cxDBNavigator1: TcxDBNavigator;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qNatjecanje: TADOQuery;
    ds: TDataSource;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel3: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxGrid1DBTableView1NatjecanjeID: TcxGridDBColumn;
    cxGrid1DBTableView1NazivNatjecanja: TcxGridDBColumn;
    cxGrid1DBTableView1DatumNatjecanja: TcxGridDBColumn;
    bVaganje: TcxButton;
    cxLabel9: TcxLabel;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bVaganjeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure qNatjecanjeAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUnosNatjecanja: TfUnosNatjecanja;

implementation

{$R *.dfm}

uses MAIN, fVaganje, fVagaTablica;

procedure TfUnosNatjecanja.FormShow(Sender: TObject);
begin
    qNatjecanje.SQL.Clear;
    qNatjecanje.SQL.Add('SELECT NatjecanjeID, NazivNatjecanja, MjestoNatjecanja, DatumNatjecanja, '+
                        'SinclairKonstanta, SinclairKonstanta2, SinclairKonstantaZene, SinclairKonstantaZene2, '+
                        'Sudac1, S1Rang, Sudac2, S2Rang, Sudac3, S3Rang, '+
                        'Zapisnicar, ZRang, Delegat, DRang, StatusNatjecanja '+
                        'FROM Natjecanja');
    qNatjecanje.Open;
end;

procedure TfUnosNatjecanja.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=27 then Close;
end;

procedure TfUnosNatjecanja.bVaganjeClick(Sender: TObject);
begin
    aktivnoNatjecanje:=qNatjecanje.FieldByName('NatjecanjeID').AsInteger;
    flagAktNat:='V';
    // V=Vaganje, N=Natjecanje, Z=Zatvoreno
    MainForm.Ispravakvaganja1.Enabled:=False;

    UpitOpen(MainForm.qTemp, 'UPDATE Natjecanja SET StatusNatjecanja=''V'' WHERE NatjecanjeID='+IntToStr(aktivnoNatjecanje), false, false);

    //ShowMessage(IntToStr(aktivnoNatjecanje));
//    Application.CreateForm(TfUnosVaganje, fUnosVaganje);
//    fUnosVaganje.Height:=429;
//    fUnosVaganje.Width:=616;
//    fUnosVaganje.Show;
    if aktivnoNatjecanje=0 then OdaberiNatjecanje;
    if aktivnoNatjecanje<>0 then
    begin
        fVaganjeTablica:=TfVaganjeTablica(FindShowForm(TfVaganjeTablica,'', False));
        fVaganjeTablica.Show;
    end;
end;

procedure TfUnosNatjecanja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TfUnosNatjecanja.cxDBNavigator1ButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
    case AButtonIndex of
    6:
    begin
        //INSERT
        Panel1.Enabled:=True;
        cxDBTextEdit1.SetFocus;
        ADone:=False;
    end;

    7:
    begin
        //DELETE
        ADone:=False;
    end;

    8:
    begin
        //EDIT
        Panel1.Enabled:=True;
        cxDBTextEdit1.SetFocus;
        ADone:=False;
    end;

    9:
    begin
        //POST
        Panel1.Enabled:=False;
        cxGrid1.SetFocus;
        ADone:=False;
    end;

    10:
    begin
        //CANCEL
        Panel1.Enabled:=False;
        cxGrid1.SetFocus;
        ADone:=False;
    end;

    else ADone:=True;
    end;
end;

procedure TfUnosNatjecanja.dsDataChange(Sender: TObject; Field: TField);
begin
    if not qNatjecanje.IsEmpty then
    begin
        MainForm.Caption:='WLC - Natjecanje u dizanju utega :: '+qNatjecanje.FieldByName('NazivNatjecanja').AsString;
        aktivnoNatjecanje:=qNatjecanje.FieldByName('NatjecanjeID').AsInteger;
        flagAktNat:=qNatjecanje.FieldByName('StatusNatjecanja').AsString;
    end
    else
    begin
        MainForm.Caption:='WLC - Natjecanje u dizanju utega :: ODABERITE NATJECANJE';
        aktivnoNatjecanje:=0;
        flagAktNat:='';
    end;

    if flagAktNat<>'V' then
    begin
        if flagAktNat='N' then
            MainForm.Ispravakvaganja1.Enabled:=True
        else
            MainForm.Ispravakvaganja1.Enabled:=False;
        bVaganje.Enabled:=False;
    end
    else
        bVaganje.Enabled:=True;
end;

procedure TfUnosNatjecanja.qNatjecanjeAfterInsert(DataSet: TDataSet);
begin
    qNatjecanje.FieldByName('SinclairKonstanta').AsFloat:=sinclairKoeficijenMuski;
    qNatjecanje.FieldByName('SinclairKonstanta2').AsFloat:=sinclairKoeficijenMuski2;
    qNatjecanje.FieldByName('SinclairKonstantaZene').AsFloat:=sinclairKoeficijenZenski;
    qNatjecanje.FieldByName('SinclairKonstantaZene2').AsFloat:=sinclairKoeficijenZenski2;
    qNatjecanje.FieldByName('StatusNatjecanja').AsString:='V';
end;

end.
