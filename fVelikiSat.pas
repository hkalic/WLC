unit fVelikiSat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDGraphicControl, LMDLEDCustomLabel, LMDLEDLabel, LMDClock, ExtCtrls,
  cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TfSat = class(TForm)
    Panel1: TPanel;
    LMDClock1: TLMDClock;
    Panel5: TPanel;
    cxButton1: TcxButton;
    bStop: TcxButton;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LMDClock1CountdownEnd(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure bStopClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSat: TfSat;

implementation

{$R *.dfm}

uses MAIN;

procedure TfSat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TfSat.LMDClock1CountdownEnd(Sender: TObject);
begin
    LMDClock1.Enabled:=False;
    cxButton1.Enabled:=True;
    cxButton3.Enabled:=True;
    bStop.Enabled:=False;
    Beep;
    Beep;
    Beep;
end;

procedure TfSat.cxButton1Click(Sender: TObject);
begin
    with LMDClock1 do
    begin
        Countdown.Hour:=0;
        Countdown.Minute:=1;
        Countdown.Second:=0;
        Enabled:=True;
        StartCountdown;
    end;
    cxButton1.Enabled:=False;
    cxButton3.Enabled:=False;
    bStop.Enabled:=True;
end;

procedure TfSat.cxButton3Click(Sender: TObject);
begin
    with LMDClock1 do
    begin
        Countdown.Hour:=0;
        Countdown.Minute:=2;
        Countdown.Second:=0;
        Enabled:=True;
        StartCountdown;
    end;
    cxButton1.Enabled:=False;
    cxButton3.Enabled:=False;
    bStop.Enabled:=True;
end;

procedure TfSat.bStopClick(Sender: TObject);
begin
    LMDClock1.EndCountdown;
    LMDClock1.Enabled:=False;
    cxButton1.Enabled:=True;
    cxButton3.Enabled:=True;
    bStop.Enabled:=False; 
end;

end.
