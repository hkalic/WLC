unit fIzvjestaj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, frxClass, frxDBSet, frxDesgn, frxADOComponents,
  cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TfZapisnik = class(TForm)
    qReport: TADOQuery;
    frxADOComponents1: TfrxADOComponents;
    frxDesigner1: TfrxDesigner;
    frxDBDataset1: TfrxDBDataset;
    qReportMaster: TADOQuery;
    frxDBDataset2: TfrxDBDataset;
    bKlubsko: TcxButton;
    bPojedinacno: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    frxReport1: TfrxReport;
    procedure qReportBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure bClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fZapisnik: TfZapisnik;

implementation

{$R *.dfm}

uses MAIN, fNatjecanjaDetails;

procedure TfZapisnik.qReportBeforeOpen(DataSet: TDataSet);
begin
//    (DataSet as TADOQuery).Parameters.ParamByName('SifraNatjecanja').Value:=aktivnoNatjecanje;
end;

procedure TfZapisnik.FormCreate(Sender: TObject);
begin
//    UgasiFormu(fNatjecanjeDetails);
    fZapisnik.Width:=435;
    fZapisnik.Height:=244;
end;

procedure TfZapisnik.bClick(Sender: TObject);
var tagg:   Integer;
begin
    if aktivnoNatjecanje=0 then OdaberiNatjecanje;
    if aktivnoNatjecanje=0 then
    begin
        ShowMessage('Niste odabrali natjecanje!!!');
        Close;
    end;

    tagg:=(Sender as TcxButton).Tag;
    case tagg of
    1:  begin // klubsko natjecanje
            if FileExists(PathApp+'INI\ZapisnikEkipni.fr3') then
            begin
                frxReport1.LoadFromFile(PathApp+'INI\ZapisnikEkipni.fr3');

                qReportMaster.SQL.Clear;
                qReportMaster.SQL.Add('SELECT NazivNatjecanja, MjestoNatjecanja, DatumNatjecanja,');
                qReportMaster.SQL.Add('Sudac1, S1Rang, Sudac2, S2Rang, Sudac3, S3Rang,');
                qReportMaster.SQL.Add('Zapisnicar, ZRang, Delegat, DRang');
                qReportMaster.SQL.Add('FROM Natjecanja');
                qReportMaster.SQL.Add('WHERE NatjecanjeID = '+IntToStr(aktivnoNatjecanje));
                qReportMaster.Open;

                qReport.SQL.Clear;
                qReport.SQL.Add('SELECT u.Prezime + '' '' + u.Ime AS Ucesnik, k.NazivKluba+'', ''+ k.MjestoKluba AS Klub,');
                qReport.SQL.Add('CASE n.OcijenaTrzaj1 WHEN ''X'' THEN ''x'' ELSE '''' END + CAST(n.Trzaj1 AS varchar) AS Trzaj1,');
                qReport.SQL.Add('CASE n.OcijenaTrzaj2 WHEN ''X'' THEN ''x'' ELSE '''' END + CAST(n.Trzaj2 AS varchar) AS Trzaj2,');
                qReport.SQL.Add('CASE n.OcijenaTrzaj3 WHEN ''X'' THEN ''x'' ELSE '''' END + CAST(n.Trzaj3 AS varchar) AS Trzaj3,');
                qReport.SQL.Add('CASE n.OcijenaIzbacaj1 WHEN ''X'' THEN ''x'' ELSE '''' END + CAST(n.Izbacaj1 AS varchar) AS Izbacaj1,');
                qReport.SQL.Add('CASE n.OcijenaIzbacaj2 WHEN ''X'' THEN ''x'' ELSE '''' END + CAST(n.Izbacaj2 AS varchar) AS Izbacaj2,');
                qReport.SQL.Add('CASE n.OcijenaIzbacaj3 WHEN ''X'' THEN ''x'' ELSE '''' END + CAST(n.Izbacaj3 AS varchar) AS Izbacaj3,');
                qReport.SQL.Add('n.TotalPodignuto, n.SinclairBodovi, n.TjelesnaTezina, Kategorije.NazivKategorije, n.SinclairKoeficijen,');
                qReport.SQL.Add('n.SifraEkipno, n.SifraSeniorsko, n.SifraJuniorsko');
                qReport.SQL.Add('FROM NatjecanjeDetail n INNER JOIN');
                qReport.SQL.Add('Klubovi k ON n.SifraKluba = k.KlubID INNER JOIN');
                qReport.SQL.Add('Ucesnici u ON n.SifraDizaca = u.UcesnikID INNER JOIN');
                qReport.SQL.Add('Kategorije ON n.SifraKategorije = Kategorije.SifraKategorije');
                qReport.SQL.Add('WHERE n.NatjecanjeID = '+IntToStr(aktivnoNatjecanje));
                qReport.SQL.Add('AND n.SifraEkipno <>''''');
                qReport.SQL.Add('ORDER BY Klub');
                qReport.Open;

                frxReport1.ShowReport(True);
            end
            else
                ShowMessage('Nedostaje fajl za ekipno natjecanje!!!');
        end;

    2,4,5,21,41,51: begin // seniorsko, juniorsko ili žensko natjecanje
            if FileExists(PathApp+'INI\ZapisnikSeniorsko.fr3') then
            begin
                if tagg=2 then frxReport1.LoadFromFile(PathApp+'INI\ZapisnikSeniorsko.fr3')
                else if tagg=4 then frxReport1.LoadFromFile(PathApp+'INI\ZapisnikJuniorski.fr3')
                else if tagg=5 then frxReport1.LoadFromFile(PathApp+'INI\ZapisnikZenski.fr3')
                else if tagg=21 then frxReport1.LoadFromFile(PathApp+'INI\ZapisnikSeniorskoCijeli.fr3')
                else if tagg=41 then frxReport1.LoadFromFile(PathApp+'INI\ZapisnikJuniorskiCijeli.fr3')
                else if tagg=51 then frxReport1.LoadFromFile(PathApp+'INI\ZapisnikZenskiCijeli.fr3');

                qReportMaster.SQL.Clear;
                qReportMaster.SQL.Add('SELECT NazivNatjecanja, MjestoNatjecanja, DatumNatjecanja,');
                qReportMaster.SQL.Add('Sudac1, S1Rang, Sudac2, S2Rang, Sudac3, S3Rang,');
                qReportMaster.SQL.Add('Zapisnicar, ZRang, Delegat, DRang');
                qReportMaster.SQL.Add('FROM Natjecanja');
                qReportMaster.SQL.Add('WHERE NatjecanjeID = '+IntToStr(aktivnoNatjecanje));
                qReportMaster.Open;

                qReport.SQL.Clear;
                qReport.SQL.Add('SELECT u.Prezime + '' '' + u.Ime AS Ucesnik, k.NazivKluba+'', ''+ k.MjestoKluba AS Klub,');
                qReport.SQL.Add('CASE n.OcijenaTrzaj1 WHEN ''X'' THEN ''x'' ELSE '''' END + CAST(n.Trzaj1 AS varchar) AS Trzaj1,');
                qReport.SQL.Add('CASE n.OcijenaTrzaj2 WHEN ''X'' THEN ''x'' ELSE '''' END + CAST(n.Trzaj2 AS varchar) AS Trzaj2,');
                qReport.SQL.Add('CASE n.OcijenaTrzaj3 WHEN ''X'' THEN ''x'' ELSE '''' END + CAST(n.Trzaj3 AS varchar) AS Trzaj3,');
                qReport.SQL.Add('CASE n.OcijenaIzbacaj1 WHEN ''X'' THEN ''x'' ELSE '''' END + CAST(n.Izbacaj1 AS varchar) AS Izbacaj1,');
                qReport.SQL.Add('CASE n.OcijenaIzbacaj2 WHEN ''X'' THEN ''x'' ELSE '''' END + CAST(n.Izbacaj2 AS varchar) AS Izbacaj2,');
                qReport.SQL.Add('CASE n.OcijenaIzbacaj3 WHEN ''X'' THEN ''x'' ELSE '''' END + CAST(n.Izbacaj3 AS varchar) AS Izbacaj3,');
                qReport.SQL.Add('n.TotalPodignuto, n.SinclairBodovi, n.TjelesnaTezina, Kategorije.NazivKategorije, n.SinclairKoeficijen,');
                qReport.SQL.Add('n.SifraEkipno, n.SifraSeniorsko, n.SifraJuniorsko');
                qReport.SQL.Add('FROM NatjecanjeDetail n INNER JOIN');
                qReport.SQL.Add('Klubovi k ON n.SifraKluba = k.KlubID INNER JOIN');
                qReport.SQL.Add('Ucesnici u ON n.SifraDizaca = u.UcesnikID INNER JOIN');
                qReport.SQL.Add('Kategorije ON n.SifraKategorije = Kategorije.SifraKategorije');
                qReport.SQL.Add('WHERE n.NatjecanjeID = '+IntToStr(aktivnoNatjecanje));

                if (tagg=2) or (tagg=21) then qReport.SQL.Add('AND n.SifraSeniorsko=''S'' AND u.Spol=''M''')
                else if (tagg=4) or (tagg=41)then qReport.SQL.Add('AND n.SifraJuniorsko IN (''J'', ''K'')')
                else if (tagg=5) or (tagg=51)then qReport.SQL.Add('AND u.Spol=''Z''');

                if (tagg=2) or (tagg=4) or (tagg=5) then
                    qReport.SQL.Add('ORDER BY n.SifraKategorije, n.SinclairBodovi DESC')
                else if (tagg=21) or (tagg=41) or (tagg=51) then
                    qReport.SQL.Add('ORDER BY n.SinclairBodovi DESC, n.SifraKategorije');

//                ShowMessage(qReport.SQL.Text);
                qReport.Open;

                frxReport1.ShowReport(True);
            end
            else
                ShowMessage('Nedostaje fajl za pojedinaèno natjecanje!!!');

        end;

    3:  begin  // Izvještaj sa vaganja
            if FileExists(PathApp+'INI\ZapisnikVaganje.fr3') then
            begin
                frxReport1.LoadFromFile(PathApp+'INI\ZapisnikVaganje.fr3');

                qReportMaster.SQL.Clear;
                qReportMaster.SQL.Add('SELECT NazivNatjecanja, MjestoNatjecanja, DatumNatjecanja,');
                qReportMaster.SQL.Add('Sudac1, S1Rang, Sudac2, S2Rang, Sudac3, S3Rang,');
                qReportMaster.SQL.Add('Zapisnicar, ZRang, Delegat, DRang');
                qReportMaster.SQL.Add('FROM Natjecanja');
                qReportMaster.SQL.Add('WHERE NatjecanjeID = '+IntToStr(aktivnoNatjecanje));
                qReportMaster.Open;

                qReport.SQL.Clear;
                qReport.SQL.Add('SELECT n.RedniBrojVaganja, u.Prezime + '' '' + u.Ime AS Ucesnik, k.NazivKluba+'', ''+ k.MjestoKluba AS Klub,');
                qReport.SQL.Add('u.GodinaRodjenja, u.Spol, n.TjelesnaTezina, n.SinclairKoeficijen, Kategorije.NazivKategorije,');
                qReport.SQL.Add('n.PocetnaTTrzaj, n.PocetnaTIzbacaj, n.SifraEkipno, n.SifraSeniorsko, n.SifraJuniorsko');
                qReport.SQL.Add('FROM NatjecanjeDetail n INNER JOIN');
                qReport.SQL.Add('	Klubovi k ON n.SifraKluba = k.KlubID INNER JOIN');
                qReport.SQL.Add('   Ucesnici u ON n.SifraDizaca = u.UcesnikID INNER JOIN');
                qReport.SQL.Add('	Kategorije ON n.SifraKategorije = Kategorije.SifraKategorije');
                qReport.SQL.Add('WHERE n.NatjecanjeID = '+IntToStr(aktivnoNatjecanje));
                qReport.SQL.Add('ORDER BY n.RedniBrojVaganja');
                qReport.Open;

                frxReport1.ShowReport(True);
            end
            else
                ShowMessage('Nedostaje fajl sa zapisnikom vaganja!!!');

        end;

    end;

end;

procedure TfZapisnik.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=caFree;
end;

end.
