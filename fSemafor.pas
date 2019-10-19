unit fSemafor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxTimeEdit, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDClock, StdCtrls, ExtCtrls,
  LMDBaseLabel, LMDCustomLabel, LMDLabel, cxLookAndFeelPainters, cxButtons,
  DB, ADODB, cxLabel, cxDBLabel;

type
  TfGlavniSemafor = class(TForm)
    qDizac: TADOQuery;
    dsDizac: TDataSource;
    cxEditStyleController1: TcxEditStyleController;
    cxEditStyleController2: TcxEditStyleController;
    Timer1: TTimer;
    Panel4: TPanel;
    Panel2: TPanel;
    LMDLabel1: TLMDLabel;
    LMDLabel2: TLMDLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    Panel3: TPanel;
    LMDLabel5: TLMDLabel;
    P1: TPanel;
    lP1: TLMDLabel;
    P2: TPanel;
    lP2: TLMDLabel;
    P3: TPanel;
    lP3: TLMDLabel;
    LMDLabel14: TLMDLabel;
    Panel14: TPanel;
    cxDBLabel1: TcxDBLabel;
    Panel16: TPanel;
    LMDLabel20: TLMDLabel;
    qStatus: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Osvjezi;
    procedure Timer1Timer(Sender: TObject);
    procedure qStatusBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGlavniSemafor: TfGlavniSemafor;

implementation

{$R *.dfm}

uses MAIN, fNatjecanjaDetails;

procedure TfGlavniSemafor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TfGlavniSemafor.Osvjezi;
begin
    with qStatus do
    begin
      try
        Open;
        if IsEmpty then
        begin
            aktivnaGrupa:=1;
            flagTrzaj:='T';
        end
        else
        begin
            aktivnaGrupa:=FieldByName('Grupa').AsInteger;
            flagTrzaj:=FieldByName('IzbacajIliTrzaj').AsString;
        end;
        Close;
      except
        aktivnaGrupa:=1;
        flagTrzaj:='T';
      end;
    end;

    with qDizac do
    begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT TOP 1 ');

        if flagTrzaj='I' then
            SQL.Add('n.IDizeSe AS DizeSe, n.IPokusaj AS Pokusaj,')
        else
            SQL.Add('n.TDizeSe AS DizeSe, n.TPokusaj AS Pokusaj,');

        SQL.Add('n.TjelesnaTezina, n.SifraDizaca, n.SifraKluba, n.SifraKategorije, '+
                'n.Trzaj1, n.Trzaj2, n.Trzaj3, '+
                'n.OcijenaTrzaj1, n.OcijenaTrzaj2, n.OcijenaTrzaj3, '+
                'n.Izbacaj1, n.Izbacaj2, n.Izbacaj3, '+
                'n.OcijenaIzbacaj1, n.OcijenaIzbacaj2, n.OcijenaIzbacaj3, '+
                'u.Ime + '' '' + u.Prezime AS Dizac, k.NazivKluba' );
        SQL.Add('FROM NatjecanjeDetail n, Ucesnici u, Klubovi k');
        SQL.Add('WHERE n.NatjecanjeID = '+IntToStr(aktivnoNatjecanje)+' ');
        SQL.Add('AND n.SifraDizaca = u.UcesnikID ');
        SQL.Add('AND n.SifraKluba = k.KlubID ');
        SQL.Add('AND n.Grupa = '+IntToStr(aktivnaGrupa));

        if flagTrzaj='I' then
        begin
            SQL.Add('AND n.IPokusaj < 4');
            SQL.Add('ORDER BY n.IDizeSe, n.IPokusaj, n.TjelesnaTezina, n.Prioritet');
        end
        else
        begin
            SQL.Add('AND n.TPokusaj < 4');
            SQL.Add('ORDER BY n.TDizeSe, n.TPokusaj, n.TjelesnaTezina, n.Prioritet');
        end;

        Open;

        case FieldByName('Pokusaj').AsInteger of
        1,4:  begin
                P1.Visible:=True;
                P2.Visible:=False;
                P3.Visible:=False;
            end;

        2,5:  begin
                P1.Visible:=False;
                P2.Visible:=True;
                P3.Visible:=False;
            end;

        3,6:  begin
                P1.Visible:=False;
                P2.Visible:=False;
                P3.Visible:=True;
            end;
        else
            begin
                P1.Visible:=False;
                P2.Visible:=False;
                P3.Visible:=False;
            end;
        end;

        if IsEmpty then aktivniDizac:=0
        else aktivniDizac:=FieldByName('SifraDizaca').AsInteger;
    end;

end;

procedure TfGlavniSemafor.Timer1Timer(Sender: TObject);
begin
    Osvjezi;
end;

procedure TfGlavniSemafor.qStatusBeforeOpen(DataSet: TDataSet);
begin
    (DataSet as TADOQuery).Parameters.ParamByName('SifraNatjecanja').Value:=aktivnoNatjecanje;
end;

end.
