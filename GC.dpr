program GC;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Auth in 'U_Auth.pas' {Form1},
  U_Main in 'U_Main.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
