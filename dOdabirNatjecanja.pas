unit dOdabirNatjecanja;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, DB, ADODB, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, cxMaskEdit;

type
  TdlgNatjecanje = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    qNatjecanja: TADOQuery;
    ds: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NatjecanjeID: TcxGridDBColumn;
    cxGrid1DBTableView1NazivNatjecanja: TcxGridDBColumn;
    cxGrid1DBTableView1MjestoNatjecanja: TcxGridDBColumn;
    cxGrid1DBTableView1DatumNatjecanja: TcxGridDBColumn;
    cxGrid1DBTableView1Status: TcxGridDBColumn;
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgNatjecanje: TdlgNatjecanje;

implementation

{$R *.dfm}

uses MAIN, fNatjecanjaDetails;

procedure TdlgNatjecanje.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=13 then OKBtn.Click
    else if Key=27 then CancelBtn.Click;
end;

procedure TdlgNatjecanje.FormCreate(Sender: TObject);
begin
    UgasiFormu(fNatjecanjeDetails);
end;

procedure TdlgNatjecanje.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    OKBtn.Click;
end;

procedure TdlgNatjecanje.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

end.
