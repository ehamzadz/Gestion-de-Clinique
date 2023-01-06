unit U_Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FMX.Controls.Presentation, FMX.StdCtrls;

type
  Tfrm_main = class(TForm)
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
    Gradient_Light_Blue: TBrushObject;
    Gradient_Dark_Blue: TBrushObject;
    procedure Rect_dashboardClick(Sender: TObject);
    procedure Rect_patientsClick(Sender: TObject);
    procedure Rect_usersClick(Sender: TObject);
    procedure btn_logoutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav_barMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
  private
    { Private declarations }
  public
    { Public declarations }
    U,P :string;
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.fmx}

uses U_Auth;

procedure Tfrm_main.btn_logoutClick(Sender: TObject);
begin
  DeleteFile('USER_SESSIONS.txt');
  close;
end;

procedure Tfrm_main.FormShow(Sender: TObject);
begin
  Rect_patients.Opacity := 0.5;
  Rect_users.Opacity := 0.5;
end;

procedure Tfrm_main.nav_barMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if (Button = TMouseButton.mbLeft) then StartWindowDrag;
end;

procedure Tfrm_main.Rect_dashboardClick(Sender: TObject);
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

procedure Tfrm_main.Rect_patientsClick(Sender: TObject);
var
  this :TButton;
begin
  this := TButton(sender);
  current_tab.Parent := this;
  Rect_dashboard.Opacity := 0.5;
  Rect_patients.Opacity := 1;
  Rect_users.Opacity := 0.5;
end;

procedure Tfrm_main.Rect_usersClick(Sender: TObject);
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
