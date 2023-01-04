unit U_Auth;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FireDAC.Stan.Param;

type
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
    procedure Rectangle1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btn_loginClick(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    user,pswd : string;
  end;

var
  frm_auth: Tfrm_auth;

implementation

{$R *.fmx}

uses U_Main, U_Load, DM;


procedure Tfrm_auth.FloatAnimation1Finish(Sender: TObject);
begin
  showmessage('Done');

  Visible := False; // Makes Form1 invisible
  try
    frm_main.ShowModal; // Shows the Form
  finally
    close;
  end;
end;

procedure Tfrm_auth.FloatAnimation2Finish(Sender: TObject);
begin
  floatanimation1.Enabled := true;
end;

procedure Tfrm_auth.FormCreate(Sender: TObject);
begin
//
//  edit_user.text := '';
//  edit_pass.text := '';
////  label5.text := '';
//
//  if (form2.U='') and (form2.P='') then begin
//
//  end else begin
//    user := form2.U;
//    pswd := form2.P;
//
//    Visible := False; // Makes Form1 invisible
//    try
////      frm_home.ShowModal; // Shows the Form
//    finally
//      Visible := true;
//      // Makes Form1 visible again
//    end;
//  end;
end;

procedure Tfrm_auth.FormShow(Sender: TObject);
begin

  edit_user.text := '';
  edit_pass.text := '';
  text_err_msg.text := '';

  if (frm_load.U='') and (frm_load.P='') then begin

  end else begin
    user := frm_load.U;
    pswd := frm_load.P;

    Visible := False; // Makes Form1 invisible
    try
      frm_main.ShowModal; // Shows the Form
    finally
      Visible := true;
      // Makes Form1 visible again
    end;
  end;
end;

procedure Tfrm_auth.Rectangle1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if (Button = TMouseButton.mbLeft) then StartWindowDrag;
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
      text_err_msg.Visible := true;
      text_err_msg.TextSettings.FontColor := TAlphacolorRec.red;
      text_err_msg.Text := 'Invalid User/pass !';
    end;
  end;



end;

end.
