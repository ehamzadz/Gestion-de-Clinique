unit U_Auth;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FireDAC.Stan.Param,
  FMX.TabControl;

type
  TUsers = Record
     usr : string[50];
     pswd  : string[50];
  end;
  Tfrm_auth = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Text1: TText;
    Text2: TText;
    Text3: TText;
    btn_go_to_register_form: TRectangle;
    pink: TBrushObject;
    Text4: TText;
    Text5: TText;
    Text6: TText;
    edit_user: TEdit;
    Text7: TText;
    btn_login: TRectangle;
    Text8: TText;
    CheckBox1: TCheckBox;
    StyleBook1: TStyleBook;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    edit_pass: TEdit;
    Brush1: TBrushObject;
    ColorAnimation1: TColorAnimation;
    ColorAnimation2: TColorAnimation;
    Rectangle8: TRectangle;
    Line1: TLine;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    Rectangle4: TRectangle;
    text_err_msg: TText;
    TabControl1: TTabControl;
    tab_login: TTabItem;
    tab_register: TTabItem;
    Rectangle5: TRectangle;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    btn_register: TRectangle;
    Text9: TText;
    ColorAnimation3: TColorAnimation;
    Rectangle12: TRectangle;
    edit_fullName: TEdit;
    Rectangle13: TRectangle;
    edit_pass2: TEdit;
    Text10: TText;
    Text11: TText;
    Text12: TText;
    text_err_msg2: TText;
    FloatAnimation3: TFloatAnimation;
    Rectangle14: TRectangle;
    Rectangle15: TRectangle;
    btn_go_to_login_form: TRectangle;
    Text14: TText;
    ColorAnimation4: TColorAnimation;
    Text15: TText;
    Text16: TText;
    Text17: TText;
    Line2: TLine;
    FloatAnimation4: TFloatAnimation;
    green: TBrushObject;
    Text18: TText;
    Rectangle16: TRectangle;
    edit_user2: TEdit;
    Text19: TText;
    Rectangle17: TRectangle;
    edit_pass22: TEdit;
    tab_load: TTabItem;
    Rectangle11: TRectangle;
    text_welcome: TText;
    Rectangle18: TRectangle;
    Image1: TImage;
    FloatAnimation5: TFloatAnimation;
    Timer1: TTimer;
    procedure Rectangle1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btn_loginClick(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_go_to_register_formClick(Sender: TObject);
    procedure btn_go_to_login_formClick(Sender: TObject);
    procedure btn_registerClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    user,pswd : string;
    U,P: string;
  end;

var
  frm_auth: Tfrm_auth;

implementation

{$R *.fmx}

uses U_Main, DM;


procedure Tfrm_auth.FloatAnimation1Finish(Sender: TObject);
begin
  Visible := False; // Makes Form1 invisible
  try
    frm_main.ShowModal; // Shows the Form
  finally
    application.Terminate;
  end;
end;

procedure Tfrm_auth.FloatAnimation2Finish(Sender: TObject);
begin
  floatanimation1.Enabled := true;
end;

procedure Tfrm_auth.FormShow(Sender: TObject);
var
  sCmd: string;
  mfile   : File of TUsers;  // A file of customer records
  User : TUsers;          // A customer record variable
begin
  //sCmd := Pwidechar('ping 8.8.8.8');
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
    timer1.Enabled := true;

  end else begin
    U := '';
    P := '';
    tabcontrol1.TabIndex := 0;
    edit_user.text := '';
    edit_pass.text := '';
    text_err_msg.text := '';
  end;
end;

procedure Tfrm_auth.btn_go_to_login_formClick(Sender: TObject);
begin
  tabcontrol1.TabIndex := 0;
end;

procedure Tfrm_auth.Rectangle1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if (Button = TMouseButton.mbLeft) then StartWindowDrag;
end;

procedure Tfrm_auth.Timer1Timer(Sender: TObject);
begin
  FloatAnimation1.Enabled := false;
  FloatAnimation2.Enabled := false;
  timer1.Enabled := false;
  Visible := False; // Makes Form1 invisible
  try
    frm_main.ShowModal; // Shows the Form
  finally
    application.Terminate;
    // Makes Form1 visible again
  end;
end;

procedure Tfrm_auth.btn_go_to_register_formClick(Sender: TObject);
begin
  tabcontrol1.TabIndex := 1;
end;

procedure Tfrm_auth.btn_loginClick(Sender: TObject);
var
  i,j : integer;
  mfile   : File of TUsers;  // A file of customer records
  US : TUsers;          // A customer record variable
begin


  // Login

  user := trim(edit_user.Text);
  pswd := trim(edit_pass.Text);

  if (user='') or (pswd='') then begin
    text_err_msg.Visible := true;
    text_err_msg.Text := 'Completer tous les champs';
    text_err_msg.TextSettings.FontColor := TAlphacolorRec.red;
//    text_err_msg.TextSettings.FontColor := $FF008000;
  end else begin

    j:=0;

    DM.DataModule1.FDQuery1.SQL.Clear;
    DM.DataModule1.FDQuery1.SQL.Add('select count(*) from users where user = :user and pass = :pswd');
    DM.DataModule1.FDQuery1.ParamByName('user').asstring := user;
    DM.DataModule1.FDQuery1.ParamByName('pswd').asstring := pswd;
    Datamodule1.FDQuery1.Open;

    j := Datamodule1.FDQuery1.Fields[0].AsInteger;

    if j=1 then begin

      if (checkbox1.IsChecked=true) then begin
        AssignFile(mFile, 'USER_SESSIONS.txt');
        // Try to open the Test.cus binary file for writing to
        ReWrite(mFile);

        // Write a user records to the file
        US.usr := user;
        US.pswd  := pswd;
        Write(mFile, US);

        // Close the file
        CloseFile(mfile);

        text_err_msg.Visible := false;
        Rectangle4.Visible := false;
        floatanimation2.Enabled := true;

      end else begin
        text_err_msg.Visible := false;
        Rectangle4.Visible := false;
        floatanimation2.Enabled := true;
      end;

    end else begin
      text_err_msg.Visible := true;
      text_err_msg.TextSettings.FontColor := TAlphacolorRec.red;
      text_err_msg.Text := 'Invalid User/pass !';
    end;
  end;



end;

procedure Tfrm_auth.btn_registerClick(Sender: TObject);
var
  i,j:integer;
  fullName,user,pass2,pass22 :string;
begin

  if (edit_fullName.Text='') OR (edit_user2.Text='') OR (edit_pass2.Text='') OR (edit_pass22.Text='') then begin
    text_err_msg2.Visible := true;
    text_err_msg2.TextSettings.FontColor := TAlphacolorRec.red;
    text_err_msg2.text := ('Completer tous les champs!');
  end else begin
    fullName := edit_fullName.Text;
    user := edit_user2.Text;
    pass2 := edit_pass2.Text;
    pass22 := edit_pass22.Text;

    if pass2=pass22 then begin


      DM.DataModule1.FDQuery1.SQL.Clear;
      DM.DataModule1.FDQuery1.SQL.Add('select count(*) from users where user=:user');
      DM.DataModule1.FDQuery1.ParamByName('user').asstring := user;
      Datamodule1.FDQuery1.Open;

      i := Datamodule1.FDQuery1.Fields[0].AsInteger;

      if i=1 then begin
        text_err_msg2.Visible := true;
        text_err_msg2.TextSettings.FontColor := TAlphacolorRec.red;
        text_err_msg2.Text := 'Invalid User/pass !';
      end else begin
        DM.DataModule1.FDQuery1.SQL.Clear;
        DM.DataModule1.FDQuery1.SQL.Add('INSERT INTO users (fullName,user,pass) values (:fullName,:user,:pass)');
        DM.DataModule1.FDQuery1.ParamByName('fullName').asstring := fullName;
        DM.DataModule1.FDQuery1.ParamByName('user').asstring := user;
        DM.DataModule1.FDQuery1.ParamByName('pass2').asstring := pass2;
        Datamodule1.FDQuery1.Execute;
        showmessage('Success');
      end;

    end else begin
      text_err_msg2.Visible := true;
      text_err_msg2.TextSettings.FontColor := TAlphacolorRec.red;
      text_err_msg2.Text := 'mot de passe non concordant !';
    end;

  end;
end;

end.
