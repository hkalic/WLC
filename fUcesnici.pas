unit fUcesnici;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ADODB, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxDBEdit,
  cxContainer, cxLabel, cxNavigator, cxDBNavigator, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls, StdCtrls, cxRadioGroup,
  cxGroupBox;

type
  TfUnosUcesnika = class(TForm)
    ds: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1UcesnikID: TcxGridDBColumn;
    cxGrid1DBTableView1Ime: TcxGridDBColumn;
    cxGrid1DBTableView1Prezime: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxDBNavigator1: TcxDBNavigator;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    qUcesnici: TADOQuery;
    cxDBRadioGroup1: TcxDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUnosUcesnika: TfUnosUcesnika;

implementation

{$R *.dfm}

uses MAIN;

procedure TfUnosUcesnika.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TfUnosUcesnika.cxDBNavigator1ButtonsButtonClick(Sender: TObject;
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

procedure TfUnosUcesnika.FormShow(Sender: TObject);
begin
    qUcesnici.SQL.Clear;
    qUcesnici.SQL.Add('SELECT ime, prezime, spol FROM Ucesnici');
    qUcesnici.Open;
end;

procedure TfUnosUcesnika.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=27 then Close;
end;

procedure TfUnosUcesnika.FormCreate(Sender: TObject);
begin
    fUnosUcesnika.Width:=291;
    fUnosUcesnika.Height:=477;
end;

end.
