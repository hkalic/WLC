unit fNatjecanjaDetails;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ADODB, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxMaskEdit, cxLabel, cxContainer, cxCheckBox, cxDropDownEdit, ComCtrls;

type
  TfNatjecanjeDetails = class(TForm)
    Panel1: TPanel;
    dsGrid: TDataSource;
    bOsvjezi: TcxButton;
    Timer1: TTimer;
    qGrid: TADOQuery;
    qKlubovi: TADOQuery;
    qUcesnici: TADOQuery;
    dsLookUcesnik: TDataSource;
    dsLookKlubovi: TDataSource;
    qGridTjelesnaTezina: TFloatField;
    qGridPrioritet: TIntegerField;
    qGridNatjecanjeDetailID: TAutoIncField;
    qGridRedniBrojVaganja: TIntegerField;
    qGridSifraDizaca: TIntegerField;
    qGridSifraKluba: TIntegerField;
    qGridSifraKategorije: TIntegerField;
    qGridSinclairKoeficijen: TFloatField;
    qGridSifraEkipno: TWideStringField;
    qGridPocetnaTIzbacaj: TFloatField;
    qGridPocetnaTTrzaj: TFloatField;
    qGridTrzaj1: TFloatField;
    qGridTrzaj2: TFloatField;
    qGridTrzaj3: TFloatField;
    qGridOcijenaTrzaj1: TWideStringField;
    qGridOcijenaTrzaj2: TWideStringField;
    qGridOcijenaTrzaj3: TWideStringField;
    qGridIzbacaj1: TFloatField;
    qGridIzbacaj2: TFloatField;
    qGridIzbacaj3: TFloatField;
    qGridOcijenaIzbacaj1: TWideStringField;
    qGridOcijenaIzbacaj2: TWideStringField;
    qGridOcijenaIzbacaj3: TWideStringField;
    qGridTotalPodignuto: TFloatField;
    qGridSinclairBodovi: TFloatField;
    qGridIntegerField: TIntegerField;
    qGridUcesnik: TStringField;
    qGridNazivKluba: TStringField;
    dsGridGotovo: TDataSource;
    qGridGotovo: TADOQuery;
    gotovoRB: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField2: TFloatField;
    IntegerField3: TIntegerField;
    AutoIncField1: TAutoIncField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    FloatField3: TFloatField;
    WideStringField1: TWideStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    qGridSifraSeniorsko: TWideStringField;
    qGridSifraJuniorsko: TWideStringField;
    qGridGotovoSifraSeniorsko: TWideStringField;
    qGridGotovoSifraJuniorsko: TWideStringField;
    TabControl1: TTabControl;
    Splitter1: TSplitter;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    RB: TcxGridDBColumn;
    cxGrid1DBTableView1Ucesnik: TcxGridDBColumn;
    cxGrid1DBTableView1Klub: TcxGridDBColumn;
    cxGrid1DBTableView1NatjecanjeDetailID: TcxGridDBColumn;
    cxGrid1DBTableView1RedniBrojVaganja: TcxGridDBColumn;
    cxGrid1DBTableView1SifraDizaca: TcxGridDBColumn;
    cxGrid1DBTableView1SifraKluba: TcxGridDBColumn;
    cxGrid1DBTableView1TjelesnaTezina: TcxGridDBColumn;
    cxGrid1DBTableView1SifraKategorije: TcxGridDBColumn;
    cxGrid1DBTableView1SinclairKoeficijen: TcxGridDBColumn;
    cxGrid1DBTableView1SifraEkipno: TcxGridDBColumn;
    cxGrid1DBTableView1Seniorsko: TcxGridDBColumn;
    cxGrid1DBTableView1Juniorsko: TcxGridDBColumn;
    cxGrid1DBTableView1PocetnaTIzbacaj: TcxGridDBColumn;
    cxGrid1DBTableView1PocetnaTTrzaj: TcxGridDBColumn;
    cxGrid1DBTableView1Trzaj1: TcxGridDBColumn;
    cxGrid1DBTableView1OcijenaTrzaj1: TcxGridDBColumn;
    cxGrid1DBTableView1Trzaj2: TcxGridDBColumn;
    cxGrid1DBTableView1OcijenaTrzaj2: TcxGridDBColumn;
    cxGrid1DBTableView1Trzaj3: TcxGridDBColumn;
    cxGrid1DBTableView1OcijenaTrzaj3: TcxGridDBColumn;
    cxGrid1DBTableView1Izbacaj1: TcxGridDBColumn;
    cxGrid1DBTableView1OcijenaIzbacaj1: TcxGridDBColumn;
    cxGrid1DBTableView1Izbacaj2: TcxGridDBColumn;
    cxGrid1DBTableView1OcijenaIzbacaj2: TcxGridDBColumn;
    cxGrid1DBTableView1Izbacaj3: TcxGridDBColumn;
    cxGrid1DBTableView1OcijenaIzbacaj3: TcxGridDBColumn;
    cxGrid1DBTableView1TotalPodignuto: TcxGridDBColumn;
    cxGrid1DBTableView1SinclairBodovi: TcxGridDBColumn;
    cxGrid1DBTableView1Prioritet: TcxGridDBColumn;
    cxGrid1DBTableView1IDizeSe: TcxGridDBColumn;
    cxGrid1DBTableView1IPokusaj: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridGotovoRB: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton1: TcxButton;
    qGridIDizeSe: TFloatField;
    qGridIPokusaj: TIntegerField;
    qGridTDizeSe: TFloatField;
    qGridTPokusaj: TIntegerField;
    qGridGotovoIDizeSe: TFloatField;
    qGridGotovoIPokusaj: TIntegerField;
    qGridGotovoTDizeSe: TFloatField;
    qGridGotovoTPokusaj: TIntegerField;
    qGridizvankonkurencije: TWideStringField;
    qGridgrupa: TIntegerField;
    qGridGotovoizvankonkurencije: TWideStringField;
    qGridGotovogrupa: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure spGridBeforeOpen(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure OsvjeziGrid;
    procedure spGridCalcFields(DataSet: TDataSet);
    procedure qGridBeforeOpen(DataSet: TDataSet);
    procedure qGridBeforePost(DataSet: TDataSet);
    procedure qGridAfterPost(DataSet: TDataSet);
    function  GotovoNatjecanje:boolean;
//    procedure CreateParams(var Params: TCreateParams); override;
    procedure qGridGotovoCalcFields(DataSet: TDataSet);
    procedure TabControl1Change(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qGridGotovoBeforePost(DataSet: TDataSet);
    procedure PromjenaGore(Sender: TObject);
    procedure PromjenaDolje(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNatjecanjeDetails: TfNatjecanjeDetails;

implementation

uses MAIN, fVaganje, fVagaTablica, fIzvjestaj, fIspravak;

{$R *.dfm}
(*
procedure TfNatjecanjeDetails.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do begin
    ExStyle := ExStyle or WS_EX_APPWINDOW;
    WndParent := GetDesktopwindow;
  end;
end;
*)
procedure TfNatjecanjeDetails.FormCreate(Sender: TObject);
begin
    UgasiFormu(fUnosVaganje);
    UgasiFormu(fVaganjeTablica);

    // provjeri da li uopæe ima natjecatelja u natjecanjedetail
    UpitOpen(MainForm.qTemp,
        'SELECT NatjecanjeDetailID FROM NatjecanjeDetail WHERE NatjecanjeID = '+IntToStr(aktivnoNatjecanje)
        , true, true);
    if MainForm.qTemp.IsEmpty then
    begin
        ShowMessage('Nema niti jednog dizaæa pa nema ni natjecanja!!!');
        Close;
    end;

    qUcesnici.Open;
    qKlubovi.Open;
    OsvjeziGrid;

    Timer1.Interval:=20000;
    Timer1.Enabled:=True;
end;

procedure TfNatjecanjeDetails.spGridBeforeOpen(DataSet: TDataSet);
begin
    qGrid.Parameters.ParamByName('@SifraNatjecanja').Value:=aktivnoNatjecanje;
end;

procedure TfNatjecanjeDetails.OsvjeziGrid;
begin
    Timer1.Enabled:=False;

    if cxButton1.Caption='POKAŽI TRZAJ' then flagTrzaj:='I' else flagTrzaj:='T';
    aktivnaGrupa:=TabControl1.TabIndex+1;

    // da li postoje podaci u PomocniStatus?
    UpitOpen(MainForm.qTemp, 'SELECT * FROM PomocniStatus WHERE NatjecanjeID='+IntToStr(aktivnoNatjecanje), False, True);
    if MainForm.qTemp.IsEmpty then // dodaj record za status
        UpitOpen(MainForm.qTemp,
            'INSERT INTO PomocniStatus'+
            '(NatjecanjeID, Grupa, IzbacajIliTrzaj) '+
            'VALUES ('+IntToStr(aktivnoNatjecanje)+', '+IntToStr(aktivnaGrupa)+', '''+flagTrzaj+''')', False, False)
    else
    // updejtaj status grupa i T/I
        UpitOpen(MainForm.qTemp,
            'UPDATE PomocniStatus SET '+
            'Grupa='+IntToStr(aktivnaGrupa)+', '+
            'IzbacajIliTrzaj='''+flagTrzaj+''' '+
            'WHERE NatjecanjeID='+IntToStr(aktivnoNatjecanje), False, False);

    with qGrid do
    begin
        if not (State=dsEdit) then  // ako se upisuju podaci onda nema refreša
        begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT IDizeSe, TDizeSe, IPokusaj, TPokusaj, TjelesnaTezina, Prioritet, NatjecanjeDetailID, '+
                    'RedniBrojVaganja, SifraDizaca, SifraKluba, SifraKategorije, '+
                    'SinclairKoeficijen, SifraEkipno, SifraSeniorsko, SifraJuniorsko, PocetnaTIzbacaj, '+
                    'PocetnaTTrzaj, Trzaj1, Trzaj2, Trzaj3, OcijenaTrzaj1, '+
                    'OcijenaTrzaj2, OcijenaTrzaj3, Izbacaj1, Izbacaj2, Izbacaj3, '+
                    'OcijenaIzbacaj1, OcijenaIzbacaj2, OcijenaIzbacaj3, '+
                    'TotalPodignuto, SinclairBodovi, IzvanKonkurencije, Grupa');
            SQL.Add('FROM NatjecanjeDetail');
            SQL.Add('WHERE NatjecanjeID = :SifraNatjecanja ');
            SQL.Add('AND Grupa = :NoGrupe ');

            if flagTrzaj='I' then
            begin
                SQL.Add('AND IPokusaj < 4');
                SQL.Add('ORDER BY IDizeSe, IPokusaj, TjelesnaTezina, Prioritet');
            end
            else
            begin
                SQL.Add('AND TPokusaj < 4');
                SQL.Add('ORDER BY TDizeSe, TPokusaj, TjelesnaTezina, Prioritet');
            end;
            Open;
        end;
    end;

    with qGridGotovo do
    begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT IDizeSe, TDizeSe, IPokusaj, TPokusaj, TjelesnaTezina, Prioritet, NatjecanjeDetailID, '+
                    'RedniBrojVaganja, SifraDizaca, SifraKluba, SifraKategorije, '+
                    'SinclairKoeficijen, SifraEkipno, SifraSeniorsko, SifraJuniorsko, PocetnaTIzbacaj, '+
                    'PocetnaTTrzaj, Trzaj1, Trzaj2, Trzaj3, OcijenaTrzaj1, '+
                    'OcijenaTrzaj2, OcijenaTrzaj3, Izbacaj1, Izbacaj2, Izbacaj3, '+
                    'OcijenaIzbacaj1, OcijenaIzbacaj2, OcijenaIzbacaj3, '+
                    'TotalPodignuto, SinclairBodovi, IzvanKonkurencije, Grupa');
        SQL.Add('FROM NatjecanjeDetail');
        SQL.Add('WHERE NatjecanjeID = :SifraNatjecanja ');
        SQL.Add('AND Grupa = :NoGrupe ');

        if flagTrzaj='I' then
        begin
            SQL.Add('AND IPokusaj > 3');
            SQL.Add('ORDER BY IDizeSe, IPokusaj, TjelesnaTezina, Prioritet');
        end
        else
        begin
            SQL.Add('AND TPokusaj > 3');
            SQL.Add('ORDER BY TDizeSe, TPokusaj, TjelesnaTezina, Prioritet');
        end;
        Open;
    end;

    if GotovoNatjecanje and (aktivnoNatjecanje<>0) then // gotova sva dizanja
    begin
        // zatvori natjecanje
        // V=Vaganje, N=Natjecanje, Z=Zatvoreno
        UpitOpen(MainForm.qTemp, 'UPDATE Natjecanja '+
                                 'SET StatusNatjecanja=''Z'' '+
                                 'WHERE NatjecanjeID='+IntToStr(aktivnoNatjecanje), false, false);
        flagAktNat:='Z';
        MainForm.Ispravakvaganja1.Enabled:=False;

        ShowMessage('Natjecanje je gotovo'+#13+#13+'Ispišite zapisnike sa natjecanja');
        // Ispiši zapisnike
        fZapisnik:=TfZapisnik(FindShowForm(TfZapisnik,'', False));
    end;

    Timer1.Enabled:=True;
end;

function TfNatjecanjeDetails.GotovoNatjecanje:boolean;
begin
    UpitOpen(MainForm.qTemp,'SELECT SifraDizaca FROM NatjecanjeDetail '+
                            'WHERE NatjecanjeID = '+IntToStr(aktivnoNatjecanje)+
                            ' AND (IPokusaj < 4 OR TPokusaj < 4)', false, true);
    if MainForm.qTemp.IsEmpty then
        Result:=True
    else Result:=False;
end;

procedure TfNatjecanjeDetails.Timer1Timer(Sender: TObject);
begin
    OsvjeziGrid;
end;

procedure TfNatjecanjeDetails.qGridBeforeOpen(DataSet: TDataSet);
begin
    (DataSet as TADOQuery).Parameters.ParamByName('SifraNatjecanja').Value:=aktivnoNatjecanje;
    (DataSet as TADOQuery).Parameters.ParamByName('NoGrupe').Value:=aktivnaGrupa;
end;

procedure TfNatjecanjeDetails.qGridBeforePost(DataSet: TDataSet);
var total, trzaj, izbacaj: double;
begin
    with qGrid do
    begin
        trzaj:=0;
        izbacaj:=0;
        // naði najveæa dizanja
        if FieldByName('OcijenaTrzaj1').AsString='O' then trzaj:=NullToZero(FieldByName('Trzaj1').AsFloat);
        if FieldByName('OcijenaTrzaj2').AsString='O' then
            if trzaj<NullToZero(FieldByName('Trzaj2').AsFloat) then trzaj:=NullToZero(FieldByName('Trzaj2').AsFloat);
        if FieldByName('OcijenaTrzaj3').AsString='O' then
            if trzaj<NullToZero(FieldByName('Trzaj3').AsFloat) then trzaj:=NullToZero(FieldByName('Trzaj3').AsFloat);
        if FieldByName('OcijenaIzbacaj1').AsString='O' then izbacaj:=NullToZero(FieldByName('Izbacaj1').AsFloat);
        if FieldByName('OcijenaIzbacaj2').AsString='O' then
            if izbacaj<NullToZero(FieldByName('Izbacaj2').AsFloat) then izbacaj:=NullToZero(FieldByName('Izbacaj2').AsFloat);
        if FieldByName('OcijenaIzbacaj3').AsString='O' then
            if izbacaj<NullToZero(FieldByName('Izbacaj3').AsFloat) then izbacaj:=NullToZero(FieldByName('Izbacaj3').AsFloat);

        total:=trzaj+izbacaj;
        FieldByName('TotalPodignuto').AsFloat:=total;
        FieldByName('SinclairBodovi').AsFloat:=total*FieldByName('SinclairKoeficijen').AsFloat;

        // izraèunavanje trenutne težine koja se diže i koji je ovo pokušaj
        if flagTrzaj='I' then
        begin
            if FieldByName('OcijenaIzbacaj1').AsString='-' then
            begin
                FieldByName('IDizeSe').AsFloat:=FieldByName('Izbacaj1').AsFloat;
                FieldByName('IPokusaj').AsInteger:=1;
            end
            else if FieldByName('OcijenaIzbacaj2').AsString='-' then
            begin
                FieldByName('IDizeSe').AsFloat:=FieldByName('Izbacaj2').AsFloat;
                FieldByName('IPokusaj').AsInteger:=2;
            end
            else if FieldByName('OcijenaIzbacaj3').AsString='-' then
            begin
                FieldByName('IDizeSe').AsFloat:=FieldByName('Izbacaj3').AsFloat;
                FieldByName('IPokusaj').AsInteger:=3;
            end
            else
            begin
                FieldByName('IDizeSe').AsFloat:=9999; // 9999 = svi pokušaji su podignuti
                FieldByName('IPokusaj').AsInteger:=99;
            end;
        end
        else
        begin
            if FieldByName('OcijenaTrzaj1').AsString='-' then
            begin
                FieldByName('TDizeSe').AsFloat:=FieldByName('Trzaj1').AsFloat;
                FieldByName('TPokusaj').AsInteger:=1;
            end
            else if FieldByName('OcijenaTrzaj2').AsString='-' then
            begin
                FieldByName('TDizeSe').AsFloat:=FieldByName('Trzaj2').AsFloat;
                FieldByName('TPokusaj').AsInteger:=2;
            end
            else if FieldByName('OcijenaTrzaj3').AsString='-' then
            begin
                FieldByName('TDizeSe').AsFloat:=FieldByName('Trzaj3').AsFloat;
                FieldByName('TPokusaj').AsInteger:=3;
            end
            else
            begin
                FieldByName('TDizeSe').AsFloat:=9999; // 9999 = svi pokušaji su podignuti
                FieldByName('TPokusaj').AsInteger:=99;
            end;
        end;
    end;
end;

procedure TfNatjecanjeDetails.qGridAfterPost(DataSet: TDataSet);
begin
    OsvjeziGrid;
end;

procedure TfNatjecanjeDetails.spGridCalcFields(DataSet: TDataSet);
begin
    if qGrid.RecNo<=0 then qGridIntegerField.Value:=1
    else qGridIntegerField.Value:=qGrid.RecNo;
end;

procedure TfNatjecanjeDetails.qGridGotovoCalcFields(DataSet: TDataSet);
begin
    if qGridGotovo.RecNo<=0 then gotovoRB.Value:=1
    else gotovoRB.Value:=qGridGotovo.RecNo;
end;

procedure TfNatjecanjeDetails.TabControl1Change(Sender: TObject);
begin
    OsvjeziGrid;
end;

procedure TfNatjecanjeDetails.cxButton1Click(Sender: TObject);
var trzaj: boolean;
begin
    if cxButton1.Caption='POKAŽI TRZAJ' then
    begin
        trzaj:=true;
        cxButton1.Caption:='POKAŽI IZBAÈAJ';
    end
    else
    begin
        trzaj:=false;
        cxButton1.Caption:='POKAŽI TRZAJ';
    end;

    cxGrid1DBTableView1Trzaj1.Visible:=trzaj;
    cxGrid1DBTableView1Trzaj2.Visible:=trzaj;
    cxGrid1DBTableView1Trzaj3.Visible:=trzaj;
    cxGrid1DBTableView1OcijenaTrzaj1.Visible:=trzaj;
    cxGrid1DBTableView1OcijenaTrzaj2.Visible:=trzaj;
    cxGrid1DBTableView1OcijenaTrzaj3.Visible:=trzaj;
    cxGrid1DBTableView1Izbacaj1.Visible:=not trzaj;
    cxGrid1DBTableView1Izbacaj2.Visible:=not trzaj;
    cxGrid1DBTableView1Izbacaj3.Visible:=not trzaj;
    cxGrid1DBTableView1OcijenaIzbacaj1.Visible:=not trzaj;
    cxGrid1DBTableView1OcijenaIzbacaj2.Visible:=not trzaj;
    cxGrid1DBTableView1OcijenaIzbacaj3.Visible:=not trzaj;

    OsvjeziGrid;
end;

procedure TfNatjecanjeDetails.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TfNatjecanjeDetails.qGridGotovoBeforePost(DataSet: TDataSet);
var total, trzaj, izbacaj: double;
begin
    with qGridGotovo do
    begin
        trzaj:=0;
        izbacaj:=0;
        // naði najveæa dizanja
        if FieldByName('OcijenaTrzaj1').AsString='O' then trzaj:=NullToZero(FieldByName('Trzaj1').AsFloat);
        if FieldByName('OcijenaTrzaj2').AsString='O' then
            if trzaj<NullToZero(FieldByName('Trzaj2').AsFloat) then trzaj:=NullToZero(FieldByName('Trzaj2').AsFloat);
        if FieldByName('OcijenaTrzaj3').AsString='O' then
            if trzaj<NullToZero(FieldByName('Trzaj3').AsFloat) then trzaj:=NullToZero(FieldByName('Trzaj3').AsFloat);
        if FieldByName('OcijenaIzbacaj1').AsString='O' then izbacaj:=NullToZero(FieldByName('Izbacaj1').AsFloat);
        if FieldByName('OcijenaIzbacaj2').AsString='O' then
            if izbacaj<NullToZero(FieldByName('Izbacaj2').AsFloat) then izbacaj:=NullToZero(FieldByName('Izbacaj2').AsFloat);
        if FieldByName('OcijenaIzbacaj3').AsString='O' then
            if izbacaj<NullToZero(FieldByName('Izbacaj3').AsFloat) then izbacaj:=NullToZero(FieldByName('Izbacaj3').AsFloat);

        total:=trzaj+izbacaj;
        FieldByName('TotalPodignuto').AsFloat:=total;
        FieldByName('SinclairBodovi').AsFloat:=total*FieldByName('SinclairKoeficijen').AsFloat;
    end;
end;

procedure TfNatjecanjeDetails.PromjenaGore(Sender: TObject);
var kategorija: Integer;
    spol: String;
begin
    if MainForm.Ispravakvaganja1.Checked then
    begin
        Application.CreateForm(TfIspravakVaganja, fIspravakVaganja);

        fIspravakVaganja.cxDBTextEdit1.DataBinding.DataSource:=dsGrid;
        fIspravakVaganja.cxDBTextEdit2.DataBinding.DataSource:=dsGrid;
        fIspravakVaganja.cxDBTextEdit3.DataBinding.DataSource:=dsGrid;
        fIspravakVaganja.cxDBTextEdit4.DataBinding.DataSource:=dsGrid;
        fIspravakVaganja.cxDBTextEdit5.DataBinding.DataSource:=dsGrid;
        fIspravakVaganja.cxDBTextEdit6.DataBinding.DataSource:=dsGrid;
        fIspravakVaganja.cxDBTextEdit7.DataBinding.DataSource:=dsGrid;
        fIspravakVaganja.cxDBTextEdit8.DataBinding.DataSource:=dsGrid;
        fIspravakVaganja.cxDBTextEdit9.DataBinding.DataSource:=dsGrid;
        fIspravakVaganja.cxDBTextEdit10.DataBinding.DataSource:=dsGrid;
        fIspravakVaganja.cxDBTextEdit11.DataBinding.DataSource:=dsGrid;
        fIspravakVaganja.cxDBCheckBox1.DataBinding.DataSource:=dsGrid;

        if fIspravakVaganja.ShowModal=mrOK then
        begin
            spol:=MainForm.DajSpol(qGrid.FieldByName('SifraDizaca').AsInteger);
            qGrid.Edit;
            qGrid.FieldByName('SinclairKoeficijen').AsFloat:=
                MainForm.IzracunajSinclair(qGrid.FieldByName('TjelesnaTezina').AsFloat, spol);
            qGrid.Post;

            kategorija:=MainForm.DajKategoriju(spol, FloatToSQL(qGrid.FieldByName('TjelesnaTezina').AsFloat));
            if kategorija<>0 then
                UpitOpen(MainForm.qTemp,
                    'UPDATE Vaganje SET SifraKategorije='+IntToStr(kategorija)+','+
                    ' NazivKategorije='''+MainForm.qTemp.FieldByName('NazivKategorije').AsString+''','+
                    ' SinclairKoeficijent='+FloatToSQL(qGrid.FieldByName('SinclairKoeficijen').AsFloat)+', '+
                    ' TjelesnaTezina='+FloatToSQL(qGrid.FieldByName('TjelesnaTezina').AsFloat)+', '+
                    ' PocetnaTTrzaj='+FloatToSQL(qGrid.FieldByName('PocetnaTTrzaj').AsFloat)+', '+
                    ' PocetnaTIzbacaj='+FloatToSQL(qGrid.FieldByName('PocetnaTIzbacaj').AsFloat)+', '+
                    ' Ekipno='''+qGrid.FieldByName('SifraEkipno').AsString+''', '+
                    ' Seniorsko='''+qGrid.FieldByName('SifraSeniorsko').AsString+''', '+
                    ' Juniorsko='''+qGrid.FieldByName('SifraJuniorsko').AsString+''', '+
                    ' Prioritet='+qGrid.FieldByName('Prioritet').AsString+', '+
                    ' IzvanKonkurencije='''+qGrid.FieldByName('IzvanKonkurencije').AsString+''', '+
                    ' Grupa='+qGrid.FieldByName('Grupa').AsString+
                    ' WHERE SifraDizaca='+IntToStr(qGrid.FieldByName('SifraDizaca').AsInteger)+
                    ' AND NatjecanjeID='+IntToStr(aktivnoNatjecanje), True, False);
        end
        else qGrid.Cancel;
    end;
end;

procedure TfNatjecanjeDetails.PromjenaDolje(Sender: TObject);
var kategorija: Integer;
    spol: String;
begin
    if MainForm.Ispravakvaganja1.Checked then
    begin
        Application.CreateForm(TfIspravakVaganja, fIspravakVaganja);

        fIspravakVaganja.cxDBTextEdit1.DataBinding.DataSource:=dsGridGotovo;
        fIspravakVaganja.cxDBTextEdit2.DataBinding.DataSource:=dsGridGotovo;
        fIspravakVaganja.cxDBTextEdit3.DataBinding.DataSource:=dsGridGotovo;
        fIspravakVaganja.cxDBTextEdit4.DataBinding.DataSource:=dsGridGotovo;
        fIspravakVaganja.cxDBTextEdit5.DataBinding.DataSource:=dsGridGotovo;
        fIspravakVaganja.cxDBTextEdit6.DataBinding.DataSource:=dsGridGotovo;
        fIspravakVaganja.cxDBTextEdit7.DataBinding.DataSource:=dsGridGotovo;
        fIspravakVaganja.cxDBTextEdit8.DataBinding.DataSource:=dsGridGotovo;
        fIspravakVaganja.cxDBTextEdit9.DataBinding.DataSource:=dsGridGotovo;
        fIspravakVaganja.cxDBTextEdit10.DataBinding.DataSource:=dsGridGotovo;
        fIspravakVaganja.cxDBTextEdit11.DataBinding.DataSource:=dsGridGotovo;
        fIspravakVaganja.cxDBCheckBox1.DataBinding.DataSource:=dsGridGotovo;

        if fIspravakVaganja.ShowModal=mrOK then
        begin
            spol:=MainForm.DajSpol(qGridGotovo.FieldByName('SifraDizaca').AsInteger);
            qGridGotovo.Edit;
            qGridGotovo.FieldByName('SinclairKoeficijen').AsFloat:=
                MainForm.IzracunajSinclair(qGridGotovo.FieldByName('TjelesnaTezina').AsFloat, spol);
            qGridGotovo.Post;

            kategorija:=MainForm.DajKategoriju(spol, FloatToSQL(qGridGotovo.FieldByName('TjelesnaTezina').AsFloat));
            if kategorija<>0 then
                UpitOpen(MainForm.qTemp,
                    'UPDATE Vaganje SET SifraKategorije='+IntToStr(kategorija)+','+
                    ' NazivKategorije='''+MainForm.qTemp.FieldByName('NazivKategorije').AsString+''','+
                    ' SinclairKoeficijent='+FloatToSQL(qGridGotovo.FieldByName('SinclairKoeficijen').AsFloat)+', '+
                    ' TjelesnaTezina='+FloatToSQL(qGridGotovo.FieldByName('TjelesnaTezina').AsFloat)+', '+
                    ' PocetnaTTrzaj='+FloatToSQL(qGridGotovo.FieldByName('PocetnaTTrzaj').AsFloat)+', '+
                    ' PocetnaTIzbacaj='+FloatToSQL(qGridGotovo.FieldByName('PocetnaTIzbacaj').AsFloat)+', '+
                    ' Ekipno='''+qGridGotovo.FieldByName('SifraEkipno').AsString+''', '+
                    ' Seniorsko='''+qGridGotovo.FieldByName('SifraSeniorsko').AsString+''', '+
                    ' Juniorsko='''+qGridGotovo.FieldByName('SifraJuniorsko').AsString+''', '+
                    ' Prioritet='+qGridGotovo.FieldByName('Prioritet').AsString+', '+
                    ' IzvanKonkurencije='''+qGridGotovo.FieldByName('IzvanKonkurencije').AsString+''', '+
                    ' Grupa='+qGridGotovo.FieldByName('Grupa').AsString+
                    ' WHERE SifraDizaca='+IntToStr(qGridGotovo.FieldByName('SifraDizaca').AsInteger)+
                    ' AND NatjecanjeID='+IntToStr(aktivnoNatjecanje), True, False);
        end
        else qGridGotovo.Cancel;
    end;
end;

end.
