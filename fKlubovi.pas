unit fKlubovi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, ADODB, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxNavigator, cxDBNavigator,
  cxTextEdit, cxDBEdit, cxContainer, cxLabel, ExtCtrls;

type
  TfUnosKlubova = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Panel3: TPanel;
    cxDBNavigator1: TcxDBNavigator;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    ds: TDataSource;
    cxGrid1DBTableView1KlubID: TcxGridDBColumn;
    cxGrid1DBTableView1NazivKluba: TcxGridDBColumn;
    cxGrid1DBTableView1MjestoKluba: TcxGridDBColumn;
    qKlubovi: TADOQuery;
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUnosKlubova: TfUnosKlubova;

implementation

{$R *.dfm}

procedure TfUnosKlubova.cxDBNavigator1ButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
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

procedure TfUnosKlubova.FormShow(Sender: TObject);
begin
    qKlubovi.SQL.Clear;
    qKlubovi.SQL.Add('SELECT NazivKluba, MjestoKluba FROM Klubovi');
    qKlubovi.Open;
end;

procedure TfUnosKlubova.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=27 then Close;
end;

procedure TfUnosKlubova.FormCreate(Sender: TObject);
begin
    fUnosKlubova.Width:=414;
    fUnosKlubova.Height:=476;
end;

procedure TfUnosKlubova.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

end.
