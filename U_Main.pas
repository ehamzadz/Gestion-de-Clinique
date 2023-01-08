unit U_Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FMX.Controls.Presentation, FMX.StdCtrls, FMX.TabControl, FMX.Effects,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, System.Actions, FMX.ActnList, FMX.Media, FMX.ExtCtrls,
  FMX.DateTimeCtrls, FMX.Calendar, FMX.Layouts, FMX.Edit, FMX.EditBox,
  FMX.NumberBox, FMX.SpinBox, FMX.MagnifierGlass, FMX.Printer, IPPeerServer,
  System.JSON, Data.DBXCommon, Datasnap.DSCommonServer, Datasnap.DSHTTP,
  FMX.WebBrowser, FMX.Gestures, FireDAC.UI.Intf, FireDAC.FMXUI.Wait, FMX.Header,
  FireDAC.Stan.Intf, FireDAC.Comp.UI, FMX.MultiView, FMX.ListBox, FMX.Colors,
  FMX.ImgList, FMX.Maps, Vcl.Dialogs, FMX.DialogService, FMX.Menus, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

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
    text_USER_fullName: TText;
    text_USER_type: TText;
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
    btn_logout_from_profile_menu: TRectangle;
    Image4: TImage;
    Text6: TText;
    ColorAnimation8: TColorAnimation;
    Rectangle9: TRectangle;
    Image5: TImage;
    Text7: TText;
    ColorAnimation10: TColorAnimation;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure Rect_dashboardClick(Sender: TObject);
    procedure Rect_patientsClick(Sender: TObject);
    procedure Rect_usersClick(Sender: TObject);
    procedure btn_logoutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nav_barMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure rect_profile_barClick(Sender: TObject);
    procedure rec(type_rc :string);
    procedure btn_logout_from_profile_menuClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    U,P :string;
    USER_username, USER_password, USER_fullName, USER_type :string;
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.fmx}

uses U_Auth, DM;

procedure Tfrm_main.btn_logoutClick(Sender: TObject);
begin
  rec('Application Closed');
  application.Terminate;
end;

procedure Tfrm_main.btn_logout_from_profile_menuClick(Sender: TObject);
begin
  if MessageDlg('Confirm ?',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    rec('Logout');
    DeleteFile('USER_SESSIONS.txt');
    application.Terminate;
  end;
end;

procedure Tfrm_main.FormShow(Sender: TObject);
begin
  img_patients.Opacity := 0.5;
  img_users.Opacity := 0.5;

  // Fetch USER data
  DM.DataModule1.FDQuery1.SQL.Clear;
  DM.DataModule1.FDQuery1.SQL.Add('select * from users where user = :user');
  DM.DataModule1.FDQuery1.ParamByName('user').asstring := USER_username;
  Datamodule1.FDQuery1.Open;
  USER_fullName := DM.DataModule1.FDQuery1.FieldByName('fullName').AsString;
  USER_type := DM.DataModule1.FDQuery1.FieldByName('type').AsString;
  text_USER_fullName.Text := USER_fullName;
  text_USER_type.Text := USER_type;

  rec('Login');

end;

procedure Tfrm_main.MenuItem1Click(Sender: TObject);
begin
  if MessageDlg('Voulez-vous vraiment fermer logiciel?',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
  begin
    rec('Application Closed');
    application.Terminate;
  end;
end;

procedure Tfrm_main.nav_barMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if (Button = TMouseButton.mbLeft) then StartWindowDrag;
end;

procedure Tfrm_main.rec(type_rc: string);
var
  id_rc :integer;
begin

  DM.DataModule1.FDQuery1.SQL.Clear;
  DM.DataModule1.FDQuery1.SQL.Add('select top 1 * from records order by id_rc desc');
  DM.DataModule1.FDQuery1.open;

  id_rc := DM.DataModule1.FDQuery1.FieldByName('id_rc').AsInteger + 1;

  DM.DataModule1.FDQuery1.SQL.Clear;
  DM.DataModule1.FDQuery1.SQL.Add('insert into records values(:id_rc, :type, :date, :usr)');
  DM.DataModule1.FDQuery1.ParamByName('id_rc').AsInteger := id_rc;
  DM.DataModule1.FDQuery1.ParamByName('type').AsString := type_rc;
  DM.DataModule1.FDQuery1.ParamByName('date').AsDateTime := now;
  DM.DataModule1.FDQuery1.ParamByName('usr').AsString := USER_username;
  DM.DataModule1.FDQuery1.Execute;
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
