unit U_Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm2 = class(TForm)
    nav_bar: TRectangle;
    Rect_Logo: TRectangle;
    Rectangle1: TRectangle;
    logo: TImage;
    Rect_Exit: TRectangle;
    btn_logout: TRectangle;
    Image6: TImage;
    Text4: TText;
    ColorAnimation5: TColorAnimation;
    Circle1: TCircle;
    N_of_Users_Invts: TText;
    Rectangle7: TRectangle;
    Image3: TImage;
    ColorAnimation3: TColorAnimation;
    Rect_dashboard: TRectangle;
    Image4: TImage;
    ColorAnimation4: TColorAnimation;
    current_tab: TRectangle;
    Rect_patients: TRectangle;
    Image8: TImage;
    ColorAnimation6: TColorAnimation;
    Rect_users: TRectangle;
    Image11: TImage;
    ColorAnimation9: TColorAnimation;
    procedure Rect_dashboardClick(Sender: TObject);
    procedure Rect_patientsClick(Sender: TObject);
    procedure Rect_usersClick(Sender: TObject);
    procedure btn_logoutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    U,P :string;
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses U_Auth;

procedure TForm2.btn_logoutClick(Sender: TObject);
begin
  DeleteFile('USER_SESSIONS.txt');
  close;
end;

procedure TForm2.Rect_dashboardClick(Sender: TObject);
var
  this :TButton;
begin
  this := TButton(sender);
  current_tab.Parent := this;
  this.Opacity := 1;
  Rect_patients.Opacity := 0.5;
  Rect_users.Opacity := 0.5;
  //tabcontrol1.TabIndex := 3;
end;

procedure TForm2.Rect_patientsClick(Sender: TObject);
var
  this :TButton;
begin
  this := TButton(sender);
  current_tab.Parent := this;
  Rect_dashboard.Opacity := 0.5;
  Rect_patients.Opacity := 1;
  Rect_users.Opacity := 0.5;
end;

procedure TForm2.Rect_usersClick(Sender: TObject);
var
  this :TButton;
begin
  this := TButton(sender);
  current_tab.Parent := this;
  Rect_dashboard.Opacity := 0.5;
  Rect_patients.Opacity := 0.5;
  Rect_users.Opacity := 1;
end;

end.
