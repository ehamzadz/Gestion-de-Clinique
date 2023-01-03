program GC;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Auth in 'U_Auth.pas' {Form1},
  U_Main in 'U_Main.pas' {Form2},
  DM in 'DM.pas' {DataModule1: TDataModule},
  U_Load in 'U_Load.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
