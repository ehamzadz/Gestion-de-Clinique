unit U_Load;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TUsers = Record
     usr : string[50];
     pswd  : string[50];
  end;
  TForm3 = class(TForm)
    Rectangle1: TRectangle;
    Rectangle3: TRectangle;
    FloatAnimation3: TFloatAnimation;
    Rectangle2: TRectangle;
    FloatAnimation2: TFloatAnimation;
    Timer1: TTimer;
    text_welcome: TText;
    procedure FormShow(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    U,P: string;
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

uses U_Auth, U_Main;

procedure TForm3.FloatAnimation2Finish(Sender: TObject);
begin
  Visible := False; // Makes Form1 invisible
  try
    Timer1.enabled := false;
    form1.ShowModal; // Shows the Form
  finally
    close;
  end;
end;

procedure TForm3.FormShow(Sender: TObject);
var
  sCmd: string;
  mfile   : File of TUsers;  // A file of customer records
  User : TUsers;          // A customer record variable
begin

  sCmd := Pwidechar('ping 8.8.8.8');
  //ShellExecute (Application.Handle, 'open', PChar('I:\Projects\Delphi\New folder\Win32\Debug\ping.bat'), nil, nil, SW_SHOW);

  if FileExists('USER_SESSIONS.txt') then begin
    AssignFile(mFile, 'USER_SESSIONS.txt');

    // Reopen the file in read only mode
    FileMode := fmOpenRead;
    Reset(mFile);

    // Display the file contents

    while not Eof(mFile) do begin
      Read(mFile, User);
      U := User.usr;
      P := User.pswd;
    end;
    // Close the file for the last time
    CloseFile(mFile);
    text_welcome.text := 'Bienvenue ' + U + ' ..';
  end else begin
    U := '';
    P := '';
  end;

  if (U='') and (P='') then begin
    text_welcome.text := '';
  end else begin
//    Visible := False; // Makes Form1 invisible
//    try
//      Timer1.enabled := false;
//      form1.ShowModal; // Shows the Form
//    finally
//      close;
//    end;
  end;

end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin

  Visible := False; // Makes Form1 invisible
  try
    Timer1.enabled := false;
    form1.ShowModal; // Shows the Form
  finally
    close;
  end;
end;

end.
