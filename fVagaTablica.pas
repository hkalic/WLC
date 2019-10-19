unit fVagaTablica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxDropDownEdit, cxMaskEdit,
  cxLookAndFeelPainters, StdCtrls, cxButtons, DateUtils, cxLabel, ExtCtrls;

type
  TfVaganjeTablica = class(TForm)
    dsVaganje: TDataSource;
    qVaganje: TADOQuery;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1NatjecanjeID: TcxGridDBColumn;
    cxGrid1DBTableView1RedniBrojVaganja: TcxGridDBColumn;
    cxGrid1DBTableView1SifraDizaca: TcxGridDBColumn;
    cxGrid1DBTableView1Ime: TcxGridDBColumn;
    cxGrid1DBTableView1Prezime: TcxGridDBColumn;
    cxGrid1DBTableView1Spol: TcxGridDBColumn;
    cxGrid1DBTableView1GodinaRodjenja: TcxGridDBColumn;
    cxGrid1DBTableView1SifraKluba: TcxGridDBColumn;
    cxGrid1DBTableView1NazivKluba: TcxGridDBColumn;
    cxGrid1DBTableView1MjestoKluba: TcxGridDBColumn;
    cxGrid1DBTableView1TjelesnaTezina: TcxGridDBColumn;
    cxGrid1DBTableView1SinclairKoeficijent: TcxGridDBColumn;
    cxGrid1DBTableView1NazivKategorije: TcxGridDBColumn;
    cxGrid1DBTableView1Ekipno: TcxGridDBColumn;
    cxGrid1DBTableView1Seniorsko: TcxGridDBColumn;
    cxGrid1DBTableView1Juniorsko: TcxGridDBColumn;
    cxGrid1DBTableView1PocetnaTTrzaj: TcxGridDBColumn;
    cxGrid1DBTableView1PocetnaTIzbacaj: TcxGridDBColumn;
    cxGrid1DBTableView1Prioritet: TcxGridDBColumn;
    cxGrid1DBTableView1IzvanKonkurencije: TcxGridDBColumn;
    qTemp2: TADOQuery;
    dsTemp2: TDataSource;
    qTemp1: TADOQuery;
    dsTemp1: TDataSource;
    cxGrid1DBTableView1Grupa: TcxGridDBColumn;
    Panel1: TPanel;
    bZatvori: TcxButton;
    bIspis: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qVaganjeBeforeOpen(DataSet: TDataSet);
    procedure qVaganjeAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qVaganjeBeforePost(DataSet: TDataSet);
    procedure bZatvoriClick(Sender: TObject);
    procedure bIspisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVaganjeTablica: TfVaganjeTablica;

implementation

{$R *.dfm}

uses MAIN, fVaganje, fNatjecanjaDetails, fIzvjestaj;

procedure TfVaganjeTablica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TfVaganjeTablica.qVaganjeBeforeOpen(DataSet: TDataSet);
begin
    qVaganje.Parameters.ParamByName('SifraNatjecanja').Value:=aktivnoNatjecanje;
end;

procedure TfVaganjeTablica.qVaganjeAfterInsert(DataSet: TDataSet);
begin
    qVaganje.FieldByName('NatjecanjeID').AsInteger:=aktivnoNatjecanje;
    qVaganje.FieldByName('Juniorsko').AsString:='';
    qVaganje.FieldByName('Seniorsko').AsString:='';

    UpitOpen(MainForm.qTemp,
        'SELECT MAX(RedniBrojVaganja) AS RB FROM Vaganje WHERE NatjecanjeID='+IntToStr(aktivnoNatjecanje), false, true);
    if MainForm.qTemp.IsEmpty then qVaganje.FieldByName('RedniBrojVaganja').AsInteger:=1
    else qVaganje.FieldByName('RedniBrojVaganja').AsInteger:=MainForm.qTemp.FieldByName('RB').AsInteger+1;
end;

procedure TfVaganjeTablica.FormCreate(Sender: TObject);
begin
    qVaganje.Open;

    if flagAktNat<>'V' then
    begin
        bZatvori.Enabled:=False;
        cxGrid1DBTableView1.OptionsData.Editing:=False;
        cxGrid1DBTableView1.OptionsView.Navigator:=False;
    end;
end;

procedure TfVaganjeTablica.qVaganjeBeforePost(DataSet: TDataSet);
var TT, spol: String;
    kategorija: Integer;
begin
    spol:=qVaganje.FieldByName('Spol').AsString;
    TT:=FloatToSQL(qVaganje.FieldByName('TjelesnaTezina').AsFloat);

    qVaganje.FieldByName('DaLiJeJunior').AsString:=MainForm.DaLiJeJunior(qVaganje.FieldByName('GodinaRodjenja').AsInteger);

(*    if (not qVaganje.FieldByName('GodinaRodjenja').IsNull) or (qVaganje.FieldByName('GodinaRodjenja').AsInteger>1900) then
    begin
        if (YearOf(Date)-qVaganje.FieldByName('GodinaRodjenja').AsInteger)>20 then
        begin
            qVaganje.FieldByName('DaLiJeJunior').AsString:='N';
            jr:='';
        end
        else
        begin
            qVaganje.FieldByName('DaLiJeJunior').AsString:='D';
            jr:='J';
        end;
    end
    else
    begin
        jr:=''; // default nije junior
        qVaganje.FieldByName('DaLiJeJunior').AsString:='N';
    end;     *)

    if (not qVaganje.FieldByName('TjelesnaTezina').IsNull) and (qVaganje.FieldByName('TjelesnaTezina').AsFloat>0) and (not qVaganje.FieldByName('Spol').IsNull) then
    begin
        qVaganje.FieldByName('SinclairKoeficijent').AsFloat:=MainForm.IzracunajSinclair(qVaganje.FieldByName('TjelesnaTezina').AsFloat, spol);

        kategorija:=MainForm.DajKategoriju(spol, TT);
        if kategorija<>0 then
        begin
            qVaganje.FieldByName('NazivKategorije').AsString:=MainForm.qTemp.FieldByName('NazivKategorije').AsString;
            qVaganje.FieldByName('SifraKategorije').AsInteger:=kategorija;
        end;
    end;

    qVaganje.FieldByName('Ime').AsString:=Trim(qVaganje.FieldByName('Ime').AsString);
    qVaganje.FieldByName('Prezime').AsString:=Trim(qVaganje.FieldByName('Prezime').AsString);
    qVaganje.FieldByName('NazivKluba').AsString:=Trim(qVaganje.FieldByName('NazivKluba').AsString);
    qVaganje.FieldByName('MjestoKluba').AsString:=Trim(qVaganje.FieldByName('MjestoKluba').AsString);
    qVaganje.FieldByName('Ekipno').AsString:=Trim(qVaganje.FieldByName('Ekipno').AsString);
end;

procedure TfVaganjeTablica.bZatvoriClick(Sender: TObject);
var i, j: integer;
begin
    // provjera prije zakljuèka: da li je sve upisano
    if qVaganje.Locate('Ime', null, [loCaseInsensitive]) then
        ShowMessage('Niste upisali IME')
    else if qVaganje.Locate('Prezime', null, [loCaseInsensitive]) then
        ShowMessage('Niste upisali PREZIME')
    else if qVaganje.Locate('NazivKluba', null, [loCaseInsensitive]) then
        ShowMessage('Niste upisali NAZIV KLUBA')
    else if qVaganje.Locate('MjestoKluba', null, [loCaseInsensitive]) then
        ShowMessage('Niste upisali MJESTO KLUBA')
    else if qVaganje.Locate('Spol', null, [loCaseInsensitive]) then
        ShowMessage('Niste upisali SPOL')
    else if qVaganje.Locate('GodinaRodjenja', null, [loCaseInsensitive]) then
        ShowMessage('Niste upisali GODINU ROÐENJA')
    else if qVaganje.Locate('TjelesnaTezina', null, [loCaseInsensitive]) then
        ShowMessage('Niste upisali TEŽINU')
    else if qVaganje.Locate('PocetnaTTrzaj', null, [loCaseInsensitive]) then
        ShowMessage('Niste upisali POÈETNI TRZAJ')
    else if qVaganje.Locate('PocetnaTIzbacaj', null, [loCaseInsensitive]) then
        ShowMessage('Niste upisali POÈETNI IZBAÈAJ')
    else if qVaganje.Locate('Ime', '', [loCaseInsensitive]) then
        ShowMessage('Niste upisali IME')
    else if qVaganje.Locate('Prezime', '', [loCaseInsensitive]) then
        ShowMessage('Niste upisali PREZIME')
    else if qVaganje.Locate('NazivKluba', '', [loCaseInsensitive]) then
        ShowMessage('Niste upisali NAZIV KLUBA')
    else if qVaganje.Locate('MjestoKluba', '', [loCaseInsensitive]) then
        ShowMessage('Niste upisali MJESTO KLUBA')
    else if qVaganje.Locate('Spol', '', [loCaseInsensitive]) then
        ShowMessage('Niste upisali SPOL')
    else
    begin
        qVaganje.Close;

        // sredi šifre uèesnika
        UpitOpen(MainForm.qTemp, 'UPDATE Vaganje '+
            'SET SifraDizaca=( '+
              'SELECT u.UcesnikID '+
              'FROM Ucesnici u '+
              'WHERE u.Ime=Vaganje.Ime '+
              'AND u.Prezime=Vaganje.Prezime '+
              'AND u.GodinaRodjenja=Vaganje.GodinaRodjenja) '+
            'WHERE NatjecanjeID = '+IntToStr(aktivnoNatjecanje), False, False);

        // sredi šifre klubova
        UpitOpen(MainForm.qTemp, 'UPDATE Vaganje '+
            'SET SifraKluba=( '+
              'SELECT k.KlubID '+
              'FROM Klubovi k '+
              'WHERE k.NazivKluba=Vaganje.NazivKluba '+
              'AND k.MjestoKluba=Vaganje.MjestoKluba) '+
            'WHERE NatjecanjeID = '+IntToStr(aktivnoNatjecanje), False, False);

        // Naði prazne šifre dizaèa
        UpitOpen(qTemp1, 'SELECT Prezime, Ime, DaLiJeJunior, Spol, GodinaRodjenja '+
            'FROM Vaganje '+
            'WHERE NatjecanjeID = '+IntToStr(aktivnoNatjecanje)+' '+
            'AND SifraDizaca is NULL', False, True);
        i:=qTemp1.RecordCount;

        // Naði prazne šifre klubova
        UpitOpen(qTemp2,'SELECT NazivKluba, MjestoKluba '+
            'FROM Vaganje '+
            'WHERE NatjecanjeID = '+IntToStr(aktivnoNatjecanje)+' '+
            'AND SifraKluba is NULL', False, True);
        j:=qTemp2.RecordCount;

        if (i+j)=0 then
        begin
            if not qVaganje.Active then qVaganje.Open;

            if MessageDlg('Da li ste sigurni da želite završiti'+#13+'vaganje i zapoèeti natjecanje?',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
                // kopiraj podatke iz Vaganja u NatjecanjeDetails
                // BEGIN TRANSACTION
                UpitOpen(MainForm.qTemp,
                        'INSERT INTO NatjecanjeDetail '+
                        '(NatjecanjeID, RedniBrojVaganja, SifraDizaca, SifraKluba, TjelesnaTezina, SifraKategorije, '+
                        'SinclairKoeficijen, SifraEkipno, SifraSeniorsko, SifraJuniorsko, '+
                        'PocetnaTTrzaj, PocetnaTIzbacaj, Prioritet, IzvanKonkurencije, '+
                        'Trzaj1, Izbacaj1, IDizeSe, TDizeSe, IPokusaj, TPokusaj, Grupa) '+
                        'SELECT NatjecanjeID, RedniBrojVaganja, SifraDizaca, SifraKluba, TjelesnaTezina, SifraKategorije, '+
                        'SinclairKoeficijent, Ekipno, Seniorsko, Juniorsko, '+
                        'PocetnaTTrzaj, PocetnaTIzbacaj, Prioritet, IzvanKonkurencije, '+
                        'PocetnaTTrzaj, PocetnaTIzbacaj, PocetnaTIzbacaj, PocetnaTTrzaj, 1, 1, Grupa '+
                        'FROM Vaganje '+
                        'WHERE NatjecanjeID = '+IntToStr(aktivnoNatjecanje), false, false);

                // kopiraj prijavljene vrijednosti
                UpitOpen(MainForm.qTemp, 'UPDATE NatjecanjeDetail '+
                                 'SET Trzaj1=PocetnaTTrzaj, Izbacaj1=PocetnaTIzbacaj, IPokusaj=1, TPokusaj=1, '+
                                 'IDizeSe=PocetnaTIzbacaj, TDizeSe=PocetnaTTrzaj '+
                                 'WHERE NatjecanjeID='+IntToStr(aktivnoNatjecanje), false, false);
                // zatvori vaganje
                // V=Vaganje, N=Natjecanje, Z=Zatvoreno
                UpitOpen(MainForm.qTemp, 'UPDATE Natjecanja '+
                                 'SET StatusNatjecanja=''N'' '+
                                 'WHERE NatjecanjeID='+IntToStr(aktivnoNatjecanje), false, false);
                // END TRANSACTION
                flagAktNat:='N';
                MainForm.Ispravakvaganja1.Enabled:=True;

                fNatjecanjeDetails:=TfNatjecanjeDetails(FindShowForm(TfNatjecanjeDetails,'', False));
            end;
        end
        else
            if MessageDlg('Upisati æe se novi podaci o dizaèima i klubovima.'+#13+'Da li želite nastaviti?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
            begin
                UpitOpen(MainForm.qTemp,
                    'INSERT INTO Ucesnici '+
                    'SELECT Prezime, Ime, Spol, DaLiJeJunior, GodinaRodjenja '+
                    'FROM Vaganje '+
                    'WHERE NatjecanjeID = '+IntToStr(aktivnoNatjecanje)+' '+
                    'AND SifraDizaca is NULL', false, false);

                UpitOpen(MainForm.qTemp,
                    'INSERT INTO Klubovi '+
                    'SELECT DISTINCT NazivKluba, MjestoKluba '+
                    'FROM Vaganje '+
                    'WHERE NatjecanjeID = '+IntToStr(aktivnoNatjecanje)+' '+
                    'AND SifraKluba is NULL', false, false);

                // ponovo se pozovi
                if not qVaganje.Active then qVaganje.Open;
                bZatvori.Click;
            end;

        if not qVaganje.Active then qVaganje.Open;
    end;
end;

procedure TfVaganjeTablica.bIspisClick(Sender: TObject);
begin
    fZapisnik.cxButton1.Click;
end;

end.
