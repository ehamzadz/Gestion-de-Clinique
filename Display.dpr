program Display;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Display in 'U_Display.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
