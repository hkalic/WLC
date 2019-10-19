unit fVaganje;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxNavigator, cxDBNavigator, cxTextEdit, cxDBEdit, cxControls,
  cxContainer, cxEdit, cxLabel, ExtCtrls, DB, ADODB, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxCheckBox;

type
  TfUnosVaganje = class(TForm)
    qNatjecanjeEdit: TADOQuery;
    ds: TDataSource;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Panel3: TPanel;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qUcesnici: TADOQuery;
    dsLookUcesnik: TDataSource;
    cxLabel3: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    spGrid: TADOStoredProc;
    dsGrid: TDataSource;
    qKlubovi: TADOQuery;
    dsLookKlubovi: TDataSource;
    cxLabel2: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    bVaganje: TcxButton;
    cxDBTextEdit7: TcxDBMaskEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxGrid1DBTableView1NatjecanjeDetailID: TcxGridDBColumn;
    cxGrid1DBTableView1NatjecanjeID: TcxGridDBColumn;
    cxGrid1DBTableView1RedniBrojVaganja: TcxGridDBColumn;
    cxGrid1DBTableView1SifraDizaca: TcxGridDBColumn;
    cxGrid1DBTableView1SifraKluba: TcxGridDBColumn;
    cxGrid1DBTableView1TjelesnaTezina: TcxGridDBColumn;
    cxGrid1DBTableView1SifraKategorije: TcxGridDBColumn;
    cxGrid1DBTableView1SinclairKoeficijen: TcxGridDBColumn;
    cxGrid1DBTableView1SifraEkipno: TcxGridDBColumn;
    cxGrid1DBTableView1PocetnaTTrzaj: TcxGridDBColumn;
    cxGrid1DBTableView1PocetnaTIzbacaj: TcxGridDBColumn;
    cxGrid1DBTableView1Prioritet: TcxGridDBColumn;
    cxGrid1DBTableView1NazivKluba: TcxGridDBColumn;
    cxGrid1DBTableView1Ucesnik: TcxGridDBColumn;
    cxGrid1DBTableView1IzvanKonkurencije: TcxGridDBColumn;
    qKategorije: TADOQuery;
    dsLookKategorije: TDataSource;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    bIspis: TcxButton;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxGrid1DBTableView1SifraSeniorsko: TcxGridDBColumn;
    cxGrid1DBTableView1SifraJuniorsko: TcxGridDBColumn;
    bIspravak: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spGridBeforeOpen(DataSet: TDataSet);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure bVaganjeClick(Sender: TObject);
    procedure spGridAfterScroll(DataSet: TDataSet);
    procedure qNatjecanjeEditAfterInsert(DataSet: TDataSet);
    procedure qNatjecanjeEditBeforePost(DataSet: TDataSet);
    procedure qNatjecanjeEditAfterPost(DataSet: TDataSet);
    procedure cxDBTextEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ObrisiLookup(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpaliKontrole(sigurno: boolean);
    procedure qNatjecanjeEditAfterEdit(DataSet: TDataSet);
    procedure spGridAfterOpen(DataSet: TDataSet);
    procedure qNatjecanjeEditAfterCancel(DataSet: TDataSet);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure bIspisClick(Sender: TObject);
    procedure bIspravakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUnosVaganje: TfUnosVaganje;

implementation

uses MAIN, fNatjecanjaDetails, fIzvjestaj;

{$R *.dfm}

procedure TfUnosVaganje.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do begin
    ExStyle := ExStyle or WS_EX_APPWINDOW;
    WndParent := GetDesktopwindow;
  end;
end;

procedure TfUnosVaganje.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TfUnosVaganje.spGridBeforeOpen(DataSet: TDataSet);
begin
    spGrid.Parameters.ParamByName('@SifraNatjecanja').Value:=aktivnoNatjecanje;
end;

procedure TfUnosVaganje.cxDBNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
    case AButtonIndex of
    6:  //INSERT
    begin
        qNatjecanjeEdit.Insert;
    end;

    7:  //DELETE
    begin
        qNatjecanjeEdit.Delete;
    end;

    8:  //EDIT
    begin
        qNatjecanjeEdit.Edit;
    end;

    9:  //POST
    begin
        qNatjecanjeEdit.Post;
    end;

    10: //CANCEL
    begin
        qNatjecanjeEdit.Cancel;
    end;

    end;
    ADone:=True;
end;

procedure TfUnosVaganje.UpaliKontrole(sigurno: boolean);
begin
//    ShowMessage('evo UpaliKontrole');
    Panel1.Enabled:=sigurno;
    cxGrid1.Enabled:=not sigurno;
    bVaganje.Enabled:=not sigurno;
    
    cxDBLookupComboBox2.Enabled:=sigurno;
    cxDBTextEdit1.Enabled:=sigurno;
    cxDBTextEdit3.Enabled:=sigurno;
    cxDBTextEdit2.Enabled:=sigurno;
    cxDBTextEdit4.Enabled:=sigurno;
    cxDBTextEdit5.Enabled:=sigurno;
    cxDBTextEdit6.Enabled:=sigurno;
    cxDBTextEdit8.Enabled:=sigurno;

    if sigurno then
    begin
        cxDBLookupComboBox1.SetFocus;
        qNatjecanjeEdit.Edit;
    end
    else
    begin
        cxGrid1.SetFocus;
        if qNatjecanjeEdit.State in [dsEdit, dsInsert] then
        begin
            if MessageDlg('Da li želite snimiti podatke?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                qNatjecanjeEdit.Post
            else qNatjecanjeEdit.Cancel;
        end;
    end;
end;

procedure TfUnosVaganje.bVaganjeClick(Sender: TObject);
begin
    if MessageDlg('Da li ste sigurni da želite završiti'+#13+'vaganje i zapoèeti natjecanje?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        // kopiraj prijavljene vrijednosti
        UpitOpen(MainForm.qTemp, 'UPDATE NatjecanjeDetail '+
                                 'SET Trzaj1=PocetnaTTrzaj, Izbacaj1=PocetnaTIzbacaj, '+
                                 'IPokusaj=1, IDizeSe=PocetnaTIzbacaj, TPokusaj=1, TDizeSe=PocetnaTTrzaj  '+
                                 'WHERE NatjecanjeID='+IntToStr(aktivnoNatjecanje), false, false);
        // zatvori vaganje
        // V=Vaganje, N=Natjecanje, Z=Zatvoreno
        UpitOpen(MainForm.qTemp, 'UPDATE Natjecanja '+
                                 'SET StatusNatjecanja=''N'' '+
                                 'WHERE NatjecanjeID='+IntToStr(aktivnoNatjecanje), false, false);
        flagAktNat:='N';
        MainForm.Ispravakvaganja1.Enabled:=True;

        fNatjecanjeDetails:=TfNatjecanjeDetails(FindShowForm(TfNatjecanjeDetails,'', False));
    end;
end;

procedure TfUnosVaganje.spGridAfterScroll(DataSet: TDataSet);
var dizac: string;
begin
    dizac:=spGrid.FieldByName('SifraDizaca').AsString;
    if dizac='' then dizac:='NULL';
        UpitOpen(qNatjecanjeEdit, 'SELECT NatjecanjeDetailID, NatjecanjeID, RedniBrojVaganja, SifraDizaca, '+
                            'SifraKluba, TjelesnaTezina, SifraKategorije, SinclairKoeficijen, SifraSeniorsko, SifraJuniorsko, '+
                            'SifraSeniorsko, SifraJuniorsko, PocetnaTTrzaj, PocetnaTIzbacaj, SinclairBodovi, Prioritet, IzvanKonkurencije '+
                            'FROM NatjecanjeDetail '+
                            'WHERE SifraDizaca = '+dizac+' '+
                            'AND NatjecanjeID='+IntToStr(aktivnoNatjecanje), False, True);
end;

procedure TfUnosVaganje.qNatjecanjeEditAfterInsert(DataSet: TDataSet);
begin
    qNatjecanjeEdit.FieldByName('NatjecanjeID').AsInteger:=aktivnoNatjecanje;

    UpitOpen(MainForm.qTemp,
        'SELECT MAX(RedniBrojVaganja) AS RB FROM NatjecanjeDetail WHERE NatjecanjeID='+IntToStr(aktivnoNatjecanje), false, true);
    if MainForm.qTemp.IsEmpty then qNatjecanjeEdit.FieldByName('RedniBrojVaganja').AsInteger:=1
    else qNatjecanjeEdit.FieldByName('RedniBrojVaganja').AsInteger:=MainForm.qTemp.FieldByName('RB').AsInteger+1;

    UpaliKontrole(True);
end;

procedure TfUnosVaganje.qNatjecanjeEditBeforePost(DataSet: TDataSet);
begin
    // izraèunaj sinclair koeficijent, kategoriju
    cxDBTextEdit1Exit(cxDBTextEdit1);

    // kontrola
    if (cxDBTextEdit3.EditValue=null) and (cxDBTextEdit2.EditValue=null) and (cxDBTextEdit4.EditValue=null) then
    begin
        ShowMessage('Zaboravili ste upisati vrstu natjecanja!');
        cxDBTextEdit3.SetFocus;
    end;
end;

procedure TfUnosVaganje.qNatjecanjeEditAfterPost(DataSet: TDataSet);
begin
    UpaliKontrole(False);
    spGrid.Close;
    spGrid.Open;
end;

procedure TfUnosVaganje.cxDBTextEdit1Exit(Sender: TObject);
var TT: String;
begin
  try
    TT:=FloatToSQL(qNatjecanjeEdit.FieldByName('TjelesnaTezina').AsFloat);

    // naði SPOL i da li je KADET ili JUNIOR (zbog kategorije)

    // izraèunaj SinclairKoeficijent
    qNatjecanjeEdit.FieldByName('SinclairKoeficijen').AsFloat:=
        MainForm.IzracunajSinclair(qNatjecanjeEdit.FieldByName('TjelesnaTezina').AsFloat, 'M');

    // naði kategoriju
    UpitOpen(MainForm.qTemp,'SELECT SifraKategorije '+
                            'FROM Kategorije '+
                            'WHERE (Spol = ''M'') '+
                            'AND (Kadeti = ''N'') '+
                            'AND (DoKG >= '+TT+') '+
                            'AND (OdKG < '+TT+')', false, true);
    if not MainForm.qTemp.IsEmpty then
        qNatjecanjeEdit.FieldByName('SifraKategorije').AsInteger:=MainForm.qTemp.FieldByName('SifraKategorije').AsInteger;
  except
    ShowMessage(MainForm.qTemp.SQL.Text);
  end;
end;

procedure TfUnosVaganje.FormCreate(Sender: TObject);
begin
//    fUnosVaganje.Width:=616;
//    fUnosVaganje.Height:=429;

    spGrid.AfterScroll:=nil; // da se ubrza uèitavanje, poslje se ovo vrati
    spGrid.Open;

    spGridAfterScroll(spGrid); // ovo osvježava qNatjecanjeEdit

    UpitOpen(qUcesnici, 'SELECT UcesnikID, Prezime + '' '' + Ime AS Ucesnik FROM Ucesnici', False, True);
    qKlubovi.Open;

    qKategorije.Open;

    if flagAktNat<>'V' then
    begin
        bVaganje.Enabled:=False;
        cxDBNavigator1.Enabled:=False;
        if flagAktNat='N' then
            MainForm.Ispravakvaganja1.Enabled:=True
        else
            MainForm.Ispravakvaganja1.Enabled:=False;
    end;
end;

procedure TfUnosVaganje.ObrisiLookup(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=VK_Delete then
        (Sender as TcxDBLookupComboBox).DataBinding.DataSource.DataSet.FieldByName((Sender as TcxDBLookupComboBox).DataBinding.DataField).Value:=null;
end;

procedure TfUnosVaganje.qNatjecanjeEditAfterEdit(DataSet: TDataSet);
begin
    UpaliKontrole(True);
end;

procedure TfUnosVaganje.spGridAfterOpen(DataSet: TDataSet);
begin
    spGrid.AfterScroll:=spGridAfterScroll;
    spGridAfterScroll(dsGrid.DataSet);
end;

procedure TfUnosVaganje.qNatjecanjeEditAfterCancel(DataSet: TDataSet);
begin
    UpaliKontrole(false);
end;

procedure TfUnosVaganje.bIspisClick(Sender: TObject);
begin
    fZapisnik.cxButton1.Click;
end;

procedure TfUnosVaganje.bIspravakClick(Sender: TObject);
begin
// ispravak vaganja

end;

end.
