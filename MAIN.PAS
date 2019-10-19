unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList, DB, ADODB, INIFiles, Math, cxClasses,
  cxStyles, cxGridTableView, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDLEDCustomLabel,
  LMDDBLEDLabel, DateUtils;

function FindShowForm(FormClass: TFormClass; const Caption: string; Restore: Boolean): TForm;
function FloatToSQL(t: Double): String;
function NullToZero(ulaz: Variant):Variant;
procedure UgasiFormu(ime: TForm);
procedure UpitOpen(Q:TADOQuery; S:String; Debug, Select: Boolean);
procedure OdaberiNatjecanje;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    prazno: TMenuItem;
    Window1: TMenuItem;
    Help1: TMenuItem;
    FileExitItem: TMenuItem;
    OpcijeItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    OpenDialog: TOpenDialog;
    Edit1: TMenuItem;
    VaganjeItem: TMenuItem;
    StatusBar: TStatusBar;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    FileNew1: TAction;
    FileSave1: TAction;
    FileExit1: TAction;
    FileOpen1: TAction;
    FileSaveAs1: TAction;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowArrangeAll1: TWindowArrange;
    WindowMinimizeAll1: TWindowMinimizeAll;
    HelpAbout1: TAction;
    FileClose1: TWindowClose;
    WindowTileVertical1: TWindowTileVertical;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton9: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ImageList1: TImageList;
    conn1: TADOConnection;
    qTemp: TADOQuery;
    dsTemp: TDataSource;
    strepPredefined: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    cxStyle85: TcxStyle;
    cxStyle86: TcxStyle;
    cxStyle87: TcxStyle;
    cxStyle88: TcxStyle;
    cxStyle89: TcxStyle;
    cxStyle90: TcxStyle;
    cxStyle91: TcxStyle;
    cxStyle92: TcxStyle;
    cxStyle93: TcxStyle;
    cxStyle94: TcxStyle;
    cxStyle95: TcxStyle;
    cxStyle96: TcxStyle;
    cxStyle97: TcxStyle;
    cxStyle98: TcxStyle;
    cxStyle99: TcxStyle;
    cxStyle100: TcxStyle;
    cxStyle101: TcxStyle;
    cxStyle102: TcxStyle;
    cxStyle103: TcxStyle;
    cxStyle104: TcxStyle;
    cxStyle105: TcxStyle;
    cxStyle106: TcxStyle;
    cxStyle107: TcxStyle;
    cxStyle108: TcxStyle;
    cxStyle109: TcxStyle;
    cxStyle110: TcxStyle;
    cxStyle111: TcxStyle;
    cxStyle112: TcxStyle;
    cxStyle113: TcxStyle;
    cxStyle114: TcxStyle;
    cxStyle115: TcxStyle;
    cxStyle116: TcxStyle;
    cxStyle117: TcxStyle;
    cxStyle118: TcxStyle;
    cxStyle119: TcxStyle;
    cxStyle120: TcxStyle;
    cxStyle121: TcxStyle;
    cxStyle122: TcxStyle;
    cxStyle123: TcxStyle;
    cxStyle124: TcxStyle;
    cxStyle125: TcxStyle;
    cxStyle126: TcxStyle;
    cxStyle127: TcxStyle;
    cxStyle128: TcxStyle;
    cxStyle129: TcxStyle;
    cxStyle130: TcxStyle;
    cxStyle131: TcxStyle;
    cxStyle132: TcxStyle;
    cxStyle133: TcxStyle;
    cxStyle134: TcxStyle;
    cxStyle135: TcxStyle;
    cxStyle136: TcxStyle;
    cxStyle137: TcxStyle;
    cxStyle138: TcxStyle;
    cxStyle139: TcxStyle;
    cxStyle140: TcxStyle;
    cxStyle141: TcxStyle;
    cxStyle142: TcxStyle;
    cxStyle143: TcxStyle;
    cxStyle144: TcxStyle;
    cxStyle145: TcxStyle;
    cxStyle146: TcxStyle;
    cxStyle147: TcxStyle;
    cxStyle148: TcxStyle;
    cxStyle149: TcxStyle;
    cxStyle150: TcxStyle;
    cxStyle151: TcxStyle;
    cxStyle152: TcxStyle;
    cxStyle153: TcxStyle;
    cxStyle154: TcxStyle;
    cxStyle155: TcxStyle;
    cxStyle156: TcxStyle;
    cxStyle157: TcxStyle;
    cxStyle158: TcxStyle;
    cxStyle159: TcxStyle;
    cxStyle160: TcxStyle;
    cxStyle161: TcxStyle;
    cxStyle162: TcxStyle;
    cxStyle163: TcxStyle;
    cxStyle164: TcxStyle;
    cxStyle165: TcxStyle;
    cxStyle166: TcxStyle;
    cxStyle167: TcxStyle;
    cxStyle168: TcxStyle;
    cxStyle169: TcxStyle;
    cxStyle170: TcxStyle;
    cxStyle171: TcxStyle;
    cxStyle172: TcxStyle;
    cxStyle173: TcxStyle;
    cxStyle174: TcxStyle;
    cxStyle175: TcxStyle;
    cxStyle176: TcxStyle;
    cxStyle177: TcxStyle;
    cxStyle178: TcxStyle;
    cxStyle179: TcxStyle;
    cxStyle180: TcxStyle;
    cxStyle181: TcxStyle;
    cxStyle182: TcxStyle;
    cxStyle183: TcxStyle;
    cxStyle184: TcxStyle;
    cxStyle185: TcxStyle;
    cxStyle186: TcxStyle;
    cxStyle187: TcxStyle;
    cxStyle188: TcxStyle;
    cxStyle189: TcxStyle;
    cxStyle190: TcxStyle;
    cxStyle191: TcxStyle;
    cxStyle192: TcxStyle;
    cxStyle193: TcxStyle;
    cxStyle194: TcxStyle;
    cxStyle195: TcxStyle;
    cxStyle196: TcxStyle;
    cxStyle197: TcxStyle;
    cxStyle198: TcxStyle;
    cxStyle199: TcxStyle;
    cxStyle200: TcxStyle;
    cxStyle201: TcxStyle;
    cxStyle202: TcxStyle;
    cxStyle203: TcxStyle;
    cxStyle204: TcxStyle;
    cxStyle205: TcxStyle;
    cxStyle206: TcxStyle;
    cxStyle207: TcxStyle;
    cxStyle208: TcxStyle;
    cxStyle209: TcxStyle;
    cxStyle210: TcxStyle;
    cxStyle211: TcxStyle;
    cxStyle212: TcxStyle;
    cxStyle213: TcxStyle;
    cxStyle214: TcxStyle;
    cxStyle215: TcxStyle;
    cxStyle216: TcxStyle;
    cxStyle217: TcxStyle;
    cxStyle218: TcxStyle;
    cxStyle219: TcxStyle;
    cxStyle220: TcxStyle;
    cxStyle221: TcxStyle;
    cxStyle222: TcxStyle;
    cxStyle223: TcxStyle;
    cxStyle224: TcxStyle;
    cxStyle225: TcxStyle;
    cxStyle226: TcxStyle;
    cxStyle227: TcxStyle;
    cxStyle228: TcxStyle;
    cxStyle229: TcxStyle;
    cxStyle230: TcxStyle;
    cxStyle231: TcxStyle;
    cxStyle232: TcxStyle;
    cxStyle233: TcxStyle;
    cxStyle234: TcxStyle;
    cxStyle235: TcxStyle;
    cxStyle236: TcxStyle;
    cxStyle237: TcxStyle;
    cxStyle238: TcxStyle;
    cxStyle239: TcxStyle;
    cxStyle240: TcxStyle;
    cxStyle241: TcxStyle;
    cxStyle242: TcxStyle;
    cxStyle243: TcxStyle;
    cxStyle244: TcxStyle;
    cxStyle245: TcxStyle;
    cxStyle246: TcxStyle;
    cxStyle247: TcxStyle;
    cxStyle248: TcxStyle;
    cxStyle249: TcxStyle;
    cxStyle250: TcxStyle;
    cxStyle251: TcxStyle;
    cxStyle252: TcxStyle;
    cxStyle253: TcxStyle;
    cxStyle254: TcxStyle;
    cxStyle255: TcxStyle;
    cxStyle256: TcxStyle;
    cxStyle257: TcxStyle;
    cxStyle258: TcxStyle;
    cxStyle259: TcxStyle;
    cxStyle260: TcxStyle;
    cxStyle261: TcxStyle;
    cxStyle262: TcxStyle;
    cxStyle263: TcxStyle;
    cxStyle264: TcxStyle;
    cxStyle265: TcxStyle;
    cxStyle266: TcxStyle;
    cxStyle267: TcxStyle;
    cxStyle268: TcxStyle;
    cxStyle269: TcxStyle;
    cxStyle270: TcxStyle;
    cxStyle271: TcxStyle;
    cxStyle272: TcxStyle;
    cxStyle273: TcxStyle;
    cxStyle274: TcxStyle;
    cxStyle275: TcxStyle;
    cxStyle276: TcxStyle;
    cxStyle277: TcxStyle;
    cxStyle278: TcxStyle;
    cxStyle279: TcxStyle;
    cxStyle280: TcxStyle;
    cxStyle281: TcxStyle;
    cxStyle282: TcxStyle;
    cxStyle283: TcxStyle;
    cxStyle284: TcxStyle;
    cxStyle285: TcxStyle;
    cxStyle286: TcxStyle;
    cxStyle287: TcxStyle;
    cxStyle288: TcxStyle;
    cxStyle289: TcxStyle;
    cxStyle290: TcxStyle;
    cxStyle291: TcxStyle;
    cxStyle292: TcxStyle;
    cxStyle293: TcxStyle;
    cxStyle294: TcxStyle;
    cxStyle295: TcxStyle;
    cxStyle296: TcxStyle;
    cxStyle297: TcxStyle;
    cxStyle298: TcxStyle;
    cxStyle299: TcxStyle;
    cxStyle300: TcxStyle;
    cxStyle301: TcxStyle;
    cxStyle302: TcxStyle;
    cxStyle303: TcxStyle;
    cxStyle304: TcxStyle;
    cxStyle305: TcxStyle;
    cxStyle306: TcxStyle;
    cxStyle307: TcxStyle;
    cxStyle308: TcxStyle;
    cxStyle309: TcxStyle;
    cxStyle310: TcxStyle;
    cxStyle311: TcxStyle;
    cxStyle312: TcxStyle;
    cxStyle313: TcxStyle;
    cxStyle314: TcxStyle;
    cxStyle315: TcxStyle;
    cxStyle316: TcxStyle;
    cxStyle317: TcxStyle;
    cxStyle318: TcxStyle;
    cxStyle319: TcxStyle;
    cxStyle320: TcxStyle;
    cxStyle321: TcxStyle;
    cxStyle322: TcxStyle;
    cxStyle323: TcxStyle;
    cxStyle324: TcxStyle;
    cxStyle325: TcxStyle;
    cxStyle326: TcxStyle;
    cxStyle327: TcxStyle;
    cxStyle328: TcxStyle;
    cxStyle329: TcxStyle;
    cxStyle330: TcxStyle;
    cxStyle331: TcxStyle;
    cxStyle332: TcxStyle;
    cxStyle333: TcxStyle;
    cxStyle334: TcxStyle;
    cxStyle335: TcxStyle;
    cxStyle336: TcxStyle;
    cxStyle337: TcxStyle;
    cxStyle338: TcxStyle;
    cxStyle339: TcxStyle;
    cxStyle340: TcxStyle;
    cxStyle341: TcxStyle;
    cxStyle342: TcxStyle;
    cxStyle343: TcxStyle;
    cxStyle344: TcxStyle;
    cxStyle345: TcxStyle;
    cxStyle346: TcxStyle;
    cxStyle347: TcxStyle;
    cxStyle348: TcxStyle;
    cxStyle349: TcxStyle;
    cxStyle350: TcxStyle;
    cxStyle351: TcxStyle;
    cxStyle352: TcxStyle;
    cxStyle353: TcxStyle;
    cxStyle354: TcxStyle;
    cxStyle355: TcxStyle;
    cxStyle356: TcxStyle;
    cxStyle357: TcxStyle;
    cxStyle358: TcxStyle;
    cxStyle359: TcxStyle;
    cxStyle360: TcxStyle;
    cxStyle361: TcxStyle;
    cxStyle362: TcxStyle;
    cxStyle363: TcxStyle;
    cxStyle364: TcxStyle;
    cxStyle365: TcxStyle;
    cxStyle366: TcxStyle;
    cxStyle367: TcxStyle;
    cxStyle368: TcxStyle;
    cxStyle369: TcxStyle;
    cxStyle370: TcxStyle;
    cxStyle371: TcxStyle;
    cxStyle372: TcxStyle;
    cxStyle373: TcxStyle;
    cxStyle374: TcxStyle;
    cxStyle375: TcxStyle;
    cxStyle376: TcxStyle;
    cxStyle377: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat1: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat4: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetBrick: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetDesert: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetEggplant: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetLilac: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetMaple: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetMarinehighcolor: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetPlumhighcolor: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetPumpkinlarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetRainyDay: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetRedWhiteandBlueVGA: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetRose: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetRoselarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetSlate: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetStormVGA: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetTealVGA: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWheat: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWindowsClassic: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWindowsClassiclarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWindowsStandard: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetWindowsStandardlarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrast1: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrast1large: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrast2: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrast2large: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrastBlack: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrastBlacklarge: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrastWhite: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetHighContrastWhitelarge: TcxGridTableViewStyleSheet;
    Redosljeddizanja1: TMenuItem;
    Izvjestaji1: TMenuItem;
    Zapisniksanatjecnja1: TMenuItem;
    Natjecanja1: TMenuItem;
    N1: TMenuItem;
    Odaberinatjecanje1: TMenuItem;
    Semafor1: TMenuItem;
    Vganjetablica1: TMenuItem;
    Sat1: TMenuItem;
    Ispravakvaganja1: TMenuItem;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure MeniClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UcitajOpcije;
    function IzracunajSinclair(tezina:double; spol:string):double;
    function DaLiJeJunior(godina:integer):string;
    function DajKategoriju(Spol, Tezina:String):Integer;
    function DajSpol(Ucesnik:Integer):String;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  aktivnoNatjecanje, aktivniDizac, aktivnaGrupa: integer;
  PathApp, conn_file, flagAktNat, flagTrzaj: string;
  sinclairKoeficijenMuski, sinclairKoeficijenMuski2, sinclairKoeficijenZenski, sinclairKoeficijenZenski2: double;
  Parametri: TIniFile;
  logiraj_upite: Boolean;
  SQL_Log: TStringList;

implementation

{$R *.dfm}

uses CHILDWIN, about, fUcesnici, fKlubovi, fNatjecanja, fVaganje, fOpcije, fNatjecanjaDetails,
  Variants, fIzvjestaj, dOdabirNatjecanja, fSemafor, fVagaTablica,
  fVelikiSat;

procedure TMainForm.CreateMDIChild(const Name: string);
var
  Child: TMDIChild;
begin
  { create a new MDI child window }
  Child := TMDIChild.Create(Application);
  Child.Caption := Name;
//  if FileExists(Name) then Child.Memo1.Lines.LoadFromFile(Name);
end;

procedure TMainForm.FileNew1Execute(Sender: TObject);
begin
  CreateMDIChild('NONAME' + IntToStr(MDIChildCount + 1));
end;

procedure TMainForm.FileOpen1Execute(Sender: TObject);
begin
  if OpenDialog.Execute then
    CreateMDIChild(OpenDialog.FileName);
end;

procedure TMainForm.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.MeniClick(Sender: TObject);
var tagg:   Integer;
begin
    tagg:=0;

    if Sender.ClassName = 'TMenuItem' then Tagg := (Sender as TMenuItem).Tag
    else if Sender.ClassName = 'TToolButton' then Tagg := (Sender as TToolButton).Tag;

    //If PristupOpciji(Tagg) then
    Case Tagg of
        101:
        begin
            Application.CreateForm(TfUnosUcesnika, fUnosUcesnika);
            fUnosUcesnika.Show;
        End;

        102:
        begin
            Application.CreateForm(TfUnosKlubova, fUnosKlubova);
            fUnosKlubova.Show;
        End;

        203:
        begin
            Application.CreateForm(TfUnosNatjecanja, fUnosNatjecanja);
            fUnosNatjecanja.Show;
        End;

        201: // Vaganje
        begin
            if aktivnoNatjecanje=0 then OdaberiNatjecanje;
            if aktivnoNatjecanje<>0 then
            begin
                fUnosVaganje:=TfUnosVaganje(FindShowForm(TfUnosVaganje,'', False));
                fUnosVaganje.Height:=429;
                fUnosVaganje.Width:=616;
                fUnosVaganje.Show;
            end;
        End;

        206: //Vaganje - tablica
        begin
            if aktivnoNatjecanje=0 then OdaberiNatjecanje;
            if aktivnoNatjecanje<>0 then
            begin
                fVaganjeTablica:=TfVaganjeTablica(FindShowForm(TfVaganjeTablica,'', False));
//                fVaganjeTablica.Height:=429;
//                fVaganjeTablica.Width:=616;
                fVaganjeTablica.Show;
            end;
        End;

        208: //Vaganje - ispravak
        begin
            if (aktivnoNatjecanje<>0) and Ispravakvaganja1.Checked then
            begin
                fNatjecanjeDetails:=TfNatjecanjeDetails(FindShowForm(TfNatjecanjeDetails,'', False));
                fNatjecanjeDetails.Timer1.Interval:=0;
                ShowMessage('Dvostruki klik na dizaèa kojeg želite ispraviti');
            end
            else
                fNatjecanjeDetails.Timer1.Interval:=20000;
        End;

        202: // Redosljed dizanja
        begin
            if flagAktNat='V' then ShowMessage('Vaganje je još uvijek otvoreno!!!')
            else if flagAktNat='Z' then ShowMessage('Natjecanje je završeno!!!')
            else fNatjecanjeDetails:=TfNatjecanjeDetails(FindShowForm(TfNatjecanjeDetails,'', False));
        end;

        301: // podešavanje opcija
        begin
            Application.CreateForm(TfSetup, fSetup);
            fSetup.eSinclairM.Text:=FloatToStr(sinclairKoeficijenMuski);
            fSetup.eSinclairM2.Text:=FloatToStr(sinclairKoeficijenMuski2);
            fSetup.eSinclairZ.Text:=FloatToStr(sinclairKoeficijenZenski);
            fSetup.eSinclairZ2.Text:=FloatToStr(sinclairKoeficijenZenski2);
            if fSetup.ShowModal=mrOK then
            begin // snimi promjene
                try
                    UcitajOpcije;

                    if FloatToStr(StrToFloat(fSetup.eSinclairM.Text))=fSetup.eSinclairM.Text then
                    begin
                        Parametri.WriteString('Sinclair', 'muski', fSetup.eSinclairM.Text);
                        sinclairKoeficijenMuski:=StrToFloat(Parametri.ReadString('Sinclair', 'muski', '1'));
                    end else ShowMessage('Niste dobro upisali mušku Sinclair konstantu!');

                    if FloatToStr(StrToFloat(fSetup.eSinclairM2.Text))=fSetup.eSinclairM2.Text then
                    begin
                        Parametri.WriteString('Sinclair', 'muski2', fSetup.eSinclairM2.Text);
                        sinclairKoeficijenMuski2:=StrToFloat(Parametri.ReadString('Sinclair', 'muski2', '1'));
                    end else ShowMessage('Niste dobro upisali mušku Sinclair2 konstantu!');

                    if FloatToStr(StrToFloat(fSetup.eSinclairZ.Text))=fSetup.eSinclairZ.Text then
                    begin
                        Parametri.WriteString('Sinclair', 'zenski', fSetup.eSinclairZ.Text);
                        sinclairKoeficijenZenski:=StrToFloat(Parametri.ReadString('Sinclair', 'zenski', '1'));
                    end else ShowMessage('Niste dobro upisali žensku Sinclair konstantu!');

                    if FloatToStr(StrToFloat(fSetup.eSinclairZ2.Text))=fSetup.eSinclairZ2.Text then
                    begin
                        Parametri.WriteString('Sinclair', 'zenski2', fSetup.eSinclairZ2.Text);
                        sinclairKoeficijenZenski2:=StrToFloat(Parametri.ReadString('Sinclair', 'zenski2', '1'));
                    end else ShowMessage('Niste dobro upisali žensku Sinclair2 konstantu!');
                except
                    ShowMessage('Niste dobro upisali Sinclair konstante!');
                end;
                Parametri.Destroy;
            end;
        End;

        501: // Zapisnik sa natjecnja
        begin
            Application.CreateForm(TfZapisnik, fZapisnik);
            fZapisnik.Show;
        end;

        204: // Odabir natjecanja
        begin
            Application.CreateForm(TdlgNatjecanje, dlgNatjecanje);
            OdaberiNatjecanje;
        end;

        205: // Semafor
        begin
            fGlavniSemafor:=TfGlavniSemafor(FindShowForm(TfGlavniSemafor,'', False));
        end;

        207: // Sat
        begin
            fSat:=TfSat(FindShowForm(TfSat,'', False));
            //Application.CreateForm(TfSat, fSat);
        end;
      end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
//   ShowWindow(Application.Handle, SW_HIDE) ;
//   SetWindowLong(Application.Handle, GWL_EXSTYLE, getWindowLong(Application.Handle, GWL_EXSTYLE) or WS_EX_TOOLWINDOW) ;
//   ShowWindow(Application.Handle, SW_SHOW) ;

    PathApp:=ExtractFilePath(Application.ExeName);

    UcitajOpcije;

    if FileExists(PathApp+'INI\'+conn_file) then
    begin
//        conn1.ConnectionString:='FILE NAME='+PathApp+'INI\'+conn_file;
        conn1.ConnectionString:='FILEdsn='+PathApp+'INI\'+conn_file;
        conn1.Open;
    end
    else
    begin
        ShowMessage('Nemate podešene opcije za rad sa bazom!!!!');
        Application.Terminate;
    end;

    sinclairKoeficijenMuski:=StrToFloat(Parametri.ReadString('Sinclair', 'muski', '1'));
    sinclairKoeficijenMuski2:=StrToFloat(Parametri.ReadString('Sinclair', 'muski2', '1'));
    sinclairKoeficijenZenski:=StrToFloat(Parametri.ReadString('Sinclair', 'zenski', '1'));
    sinclairKoeficijenZenski2:=StrToFloat(Parametri.ReadString('Sinclair', 'zenski2', '1'));
    Parametri.Destroy;

    // naði nezkljuèeno natjecanje
    UpitOpen(qTemp, 'SELECT TOP 1 NatjecanjeID, NazivNatjecanja, StatusNatjecanja FROM Natjecanja '+
                    'WHERE StatusNatjecanja <> ''Z'' ORDER BY DatumNatjecanja DESC', false, true);
    if not qTemp.IsEmpty then
    begin
        MainForm.Caption:='WLC - Natjecanje u dizanju utega :: '+qTemp.FieldByName('NazivNatjecanja').AsString;
        aktivnoNatjecanje:=qTemp.FieldByName('NatjecanjeID').AsInteger;
        flagAktNat:=qTemp.FieldByName('StatusNatjecanja').AsString;
    end
    else
    begin
        MainForm.Caption:='WLC - Natjecanje u dizanju utega :: NEMA NEZAKLJUÈENIH NATJECANJA';
        // naði zadnje natjecanje ako ima
        UpitOpen(qTemp, 'SELECT TOP 1 NatjecanjeID, NazivNatjecanja, StatusNatjecanja FROM Natjecanja '+
                        'ORDER BY DatumNatjecanja DESC', false, true);
        if not qTemp.IsEmpty then
        begin
            MainForm.Caption:='WLC - Natjecanje u dizanju utega :: '+qTemp.FieldByName('NazivNatjecanja').AsString;
            aktivnoNatjecanje:=qTemp.FieldByName('NatjecanjeID').AsInteger;
            flagAktNat:=qTemp.FieldByName('StatusNatjecanja').AsString;
        end
        else
        begin
            aktivnoNatjecanje:=0;
            flagAktNat:='';
        end;
    end;

    if flagAktNat='N' then Ispravakvaganja1.Enabled:=True else Ispravakvaganja1.Enabled:=False;

(*  ThousandSeparator:=',';
  DecimalSeparator:='.';
  CurrencyDecimals:=2;
  DateSeparator:='.';
  ShortDateFormat:='dd.mm.yyyy';
  TimeSeparator:=':';
*)
end;

procedure TMainForm.UcitajOpcije;
begin
    if FileExists(PathApp+'INI\postavke.ini') then
        Parametri:=TIniFile.Create(PathApp+'INI\postavke.ini')
    else
    begin
        ShowMessage('Ne postoji '+PathApp+'\INI\postavke.ini'+' fajl!!!');
        Application.Destroy;
    end;

    try
        if Parametri.ReadString('DataBase', 'LOG', '0')='1' then
        begin
            SQL_Log:=TStringList.Create;
            if not FileExists(PathApp+'INI\SQL.log') then FileCreate(PathApp+'INI\SQL.log');
            SQL_Log.LoadFromFile(PathApp+'INI\SQL.log');
            SQL_Log.Append('::Startan program - '+DateTimeToStr(Now));
            SQL_Log.SaveToFile(PathApp+'INI\SQL.log');
            logiraj_upite:=True;
        end
        else
            logiraj_upite:=False;
    except
        logiraj_upite:=False;
    end;

    conn_file:=Parametri.ReadString('DataBase', 'DSN', '');

    flagTrzaj:='T';
    aktivnaGrupa:=1;
end;

procedure UpitOpen(Q:TADOQuery; S:String; Debug, Select: Boolean);
// ovaj debug je da li da ispisuje poruke o greškama na SQL upitima ili ne
var Old: String;
begin
     with Q do
     begin
          Close;
          Old := SQL.Text;
          SQL.Clear;
          SQL.Add( S );
          if logiraj_upite then
          begin
            SQL_Log.Append(S);
            SQL_Log.SaveToFile(PathApp+'INI\SQL.log');
          end;
          try
             if select then
             begin
                Open;
                if RecordCount=0 then
                begin
                  if Debug then ShowMessage('Ne postoje podaci koji zadovoljavaju unesene uvjete za pretraživanje!' );
(*                  if logiraj_upite then
                  begin
                    SQL_Log.Append('::Nema podataka');
                    SQL_Log.SaveToFile(PathApp+'INI\SQL.log');
                  end; *)
                end;
            end
            else ExecSQL;
          except
                if Debug then ShowMessage('GREŠKA: '+S);
                if logiraj_upite then
                begin
                    SQL_Log.Append('GREŠKA: '+S); //#13#10#10+
                    SQL_Log.SaveToFile(PathApp+'INI\SQL.log');
                end;
          end;
     end;
end;

function InternalFindShowForm(FormClass: TFormClass; const Caption: string; Restore: Boolean): TForm;
var
  I: Integer;
begin
  Result := nil;

  for I := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[I] is FormClass then
      if (Caption = '') or (Caption = Screen.Forms[I].Caption) then
      begin
        Result := Screen.Forms[I];
        Break;
      end;
  end;

  if Result = nil then
  begin
    Application.CreateForm(FormClass, Result);
    if Caption <> '' then Result.Caption := Caption;
  end;

  with Result do
  begin
    if Restore and (WindowState = wsMinimized) then WindowState := wsNormal;
    Show;
  end;
end;

procedure UgasiFormu(ime: TForm);
var i: Integer;
begin
    if ime <> nil then
        for I := 0 to Screen.FormCount-1 do
            if Screen.Forms[I].Name=ime.Name then ime.Close;
end;

function FindShowForm(FormClass: TFormClass; const Caption: string; Restore: Boolean): TForm;
begin
  Result := InternalFindShowForm(FormClass, Caption, Restore);
end;

function TMainForm.IzracunajSinclair(tezina:double; spol:string):double;
begin
    if tezina>0 then
    begin
        if spol='M' then
            Result:=Power(10, (sinclairKoeficijenMuski2 * Power(Log10(tezina/sinclairKoeficijenMuski),2)))
        else
            Result:=Power(10, (sinclairKoeficijenZenski2 * Power(Log10(tezina/sinclairKoeficijenZenski),2)));
    end
    else
        Result:=0;
end;

function TMainForm.DaLiJeJunior(godina:integer):string;
begin
    if godina>1900 then
    begin
        if (YearOf(Date)-godina)>20 then
            Result:='N'
        else
            Result:='D';
    end
    else
        Result:='N';
end;

function TMainForm.DajKategoriju(Spol, Tezina:String):Integer;
begin
    with qTemp do
    begin
        SQL.Clear;
        SQL.Add('SELECT SifraKategorije, NazivKategorije '+
                'FROM Kategorije WHERE (Spol = '''+Spol+''') '+
                'AND (DoKG >= '+Tezina+') '+
                'AND (OdKG < '+Tezina+')');

//            if jr='J' then SQL.Add('AND (Kadeti = ''D'')')
//            else SQL.Add('AND (Kadeti = ''N'')');
//            ShowMessage(sql.Text);
        Open;
    end;

    if not qTemp.IsEmpty then
        Result:=qTemp.FieldByName('SifraKategorije').AsInteger
    else
        Result:=0;
end;

function TMainForm.DajSpol(Ucesnik:Integer):String;
begin
    with qTemp do
    begin
        SQL.Clear;
        SQL.Add('SELECT Spol '+
                'FROM Ucesnici '+
                'WHERE UcesnikID='+IntToStr(Ucesnik));
        Open;
    end;

    if not qTemp.IsEmpty then
        Result:=qTemp.FieldByName('Spol').AsString
    else
        Result:='M';
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
    if logiraj_upite then SQL_Log.SaveToFile(PathApp+'SQL.log');
end;

function FloatToSQL(t: Double):string;
var S: string;
begin
    S:=FloatToStr(t);
    { Convert ',' to '.' }
    while Pos(',', S) > 0 do
    S[Pos(',', S)] := '.';
    Result:=S;
end;

function NullToZero(ulaz: Variant):Variant;
begin
    if VarIsNull(ulaz) then
    begin
        if VarIsNumeric(ulaz) then Result:=0
        else if VarIsStr(ulaz) then Result:=''
        else Result:=ulaz;
    end
    else Result:=ulaz;
end;

procedure OdaberiNatjecanje;
begin
    dlgNatjecanje.qNatjecanja.Open;

    if dlgNatjecanje.ShowModal=mrOk then
    begin
        MainForm.Caption:='WLC - Natjecanje u dizanju utega :: '+dlgNatjecanje.qNatjecanja.FieldByName('NazivNatjecanja').AsString;
        aktivnoNatjecanje:=dlgNatjecanje.qNatjecanja.FieldByName('NatjecanjeID').AsInteger;
        flagAktNat:=dlgNatjecanje.qNatjecanja.FieldByName('StatusNatjecanja').AsString;
    end
    else
    begin
        MainForm.Caption:='WLC - Natjecanje u dizanju utega :: NEMA NEZAKLJUÈENIH NATJECANJA';
        aktivnoNatjecanje:=0;
        flagAktNat:='';
    end;

    if flagAktNat='N' then MainForm.Ispravakvaganja1.Enabled:=True else MainForm.Ispravakvaganja1.Enabled:=False;

    dlgNatjecanje.qNatjecanja.Close;
end;

end.
