program WLC;

{%ToDo 'WLC.todo'}

uses
  Forms,
  MAIN in 'MAIN.PAS' {MainForm},
  CHILDWIN in 'CHILDWIN.PAS' {MDIChild},
  about in 'about.pas' {AboutBox},
  fUcesnici in 'fUcesnici.pas' {fUnosUcesnika},
  fKlubovi in 'fKlubovi.pas' {fUnosKlubova},
  fNatjecanja in 'fNatjecanja.pas' {fUnosNatjecanja},
  fVaganje in 'fVaganje.pas' {fUnosVaganje},
  fOpcije in 'fOpcije.pas' {fSetup},
  fNatjecanjaDetails in 'fNatjecanjaDetails.pas' {fNatjecanjeDetails},
  fIzvjestaj in 'fIzvjestaj.pas' {fZapisnik},
  dOdabirNatjecanja in 'dOdabirNatjecanja.pas' {dlgNatjecanje},
  fSemafor in 'fSemafor.pas' {fGlavniSemafor},
  fVagaTablica in 'fVagaTablica.pas' {fVaganjeTablica},
  fVelikiSat in 'fVelikiSat.pas' {fSat},
  fIspravak in 'fIspravak.pas' {fIspravakVaganja};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'WLC';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAboutBox, AboutBox);
//  Application.CreateForm(TfIspravakVaganja, fIspravakVaganja);
//  Application.CreateForm(TfSat, fSat);
//  Application.CreateForm(TfVaganjeTablica, fVaganjeTablica);
//  Application.CreateForm(TfGlavniSemafor, fGlavniSemafor);
//  Application.CreateForm(TfZapisnik, fZapisnik);
//  Application.CreateForm(TdlgNatjecanje, dlgNatjecanje);
//  Application.CreateForm(TfNatjecanjeDetails, fNatjecanjeDetails);
  Application.Run;
end.
