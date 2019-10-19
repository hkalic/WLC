unit fIspravak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxTextEdit, cxDBEdit, cxControls, cxContainer, cxEdit, cxLabel,
  StdCtrls, cxCheckBox;

type
  TfIspravakVaganja = class(TForm)
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    cxLabel9: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label1: TLabel;
    cxLabel2: TcxLabel;
    cxLabel11: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IspraviFloat(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fIspravakVaganja: TfIspravakVaganja;

implementation

uses MAIN, fNatjecanjaDetails, DB;

{$R *.dfm}

procedure TfIspravakVaganja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TfIspravakVaganja.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=27 then
    begin
        ModalResult:=mrCancel;
        Close;
    end;
end;

procedure TfIspravakVaganja.IspraviFloat(Sender: TObject);
var S: string;
begin
    S:=(Sender as TcxDBTextEdit).DataBinding.DataField;
    while Pos(',', S) > 0 do S[Pos(',', S)] := '.';
    (Sender as TcxDBTextEdit).DataBinding.DataField:=S;
end;

end.
