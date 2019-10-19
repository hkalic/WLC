unit fOpcije;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel,
  cxLookAndFeelPainters, StdCtrls, cxButtons;

type
  TfSetup = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    GroupBox1: TGroupBox;
    eSinclairM: TcxTextEdit;
    eSinclairZ: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    eSinclairZ2: TcxTextEdit;
    eSinclairM2: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSetup: TfSetup;

implementation

{$R *.dfm}

end.
