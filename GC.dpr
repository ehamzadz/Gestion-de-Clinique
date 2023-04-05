program GC;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Auth in 'U_Auth.pas' {frm_auth},
  U_Main in 'U_Main.pas' {frm_main},
  DM in 'DM.pas' {DataModule1: TDataModule},
  U_Load in 'U_Load.pas' {frm_load},
  U_Add_Patient in 'U_Add_Patient.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_auth, frm_auth);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(Tfrm_load, frm_load);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
