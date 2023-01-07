unit U_Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.Effects;

type
  Tfrm_main = class(TForm)
    nav_bar: TRectangle;
    Rect_Logo: TRectangle;
    Rectangle1: TRectangle;
    logo: TImage;
    Rect_Exit: TRectangle;
    btn_logout: TRectangle;
    img_logoff: TImage;
    Text4: TText;
    ColorAnimation5: TColorAnimation;
    Circle1: TCircle;
    N_of_Users_Invts: TText;
    Rectangle7: TRectangle;
    Image3: TImage;
    ColorAnimation3: TColorAnimation;
    Rect_dashboard: TRectangle;
    img_dashboard: TImage;
    ColorAnimation4: TColorAnimation;
    current_tab: TRectangle;
    Rect_patients: TRectangle;
    img_patients: TImage;
    ColorAnimation6: TColorAnimation;
    Rect_users: TRectangle;
    img_users: TImage;
    ColorAnimation9: TColorAnimation;
    Gradient_Light_Blue: TBrushObject;
    Gradient_Dark_Blue: TBrushObject;
    content_area: TRectangle;
    TabControl1: TTabControl;
    tab_dashboard: TTabItem;
    Rectangle2: TRectangle;
    Circle2: TCircle;
    rect_profile_bar: TRectangle;
    Text1: TText;
    Text2: TText;
    ColorAnimation1: TColorAnimation;
    Rectangle3: TRectangle;
    BG: TBrushObject;
    rect_profile_bar_menu: TRectangle;
    Rectangle4: TRectangle;
    ShadowEffect1: TShadowEffect;
    Rectangle5: TRectangle;
    Image1: TImage;
    Text3: TText;
    ColorAnimation2: TColorAnimation;
    Rectangle6: TRectangle;
    Image2: TImage;
    Text5: TText;
    ColorAnimation7: TColorAnimation;
    Rectangle8: TRectangle;
    Image4: TImage;
    Text6: TText;
    ColorAnimation8: TColorAnimation;
    Rectangle9: TRectangle;
    Image5: TImage;
    Text7: TText;
    ColorAnimation10: TColorAnimation;
    Expander1: TExpander;
    procedure Rect_dashboardClick(Sender: TObject);
    procedure Rect_patientsClick(Sender: TObject);
    procedure Rect_usersClick(Sender: TObject);
    procedure btn_logoutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav_barMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure rect_profile_barClick(Sender: TObject);
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
  img_patients.Opacity := 0.5;
  img_users.Opacity := 0.5;
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
  img_dashboard.Opacity := 0.8;
  img_patients.Opacity := 0.5;
  img_users.Opacity := 0.5;
  //tabcontrol1.TabIndex := 3;
end;

procedure Tfrm_main.Rect_patientsClick(Sender: TObject);
var
  this :TButton;
begin
  this := TButton(sender);
  current_tab.Parent := this;
  img_dashboard.Opacity := 0.5;
  img_patients.Opacity := 0.8;
  img_users.Opacity := 0.5;
end;

procedure Tfrm_main.rect_profile_barClick(Sender: TObject);
begin
  if rect_profile_bar_menu.Visible = false then rect_profile_bar_menu.Visible := true
  else rect_profile_bar_menu.Visible := false;
end;

procedure Tfrm_main.Rect_usersClick(Sender: TObject);
var
  this :TButton;
begin
  this := TButton(sender);
  current_tab.Parent := this;
  img_dashboard.Opacity := 0.5;
  img_patients.Opacity := 0.5;
  img_users.Opacity := 0.8;
end;

end.
