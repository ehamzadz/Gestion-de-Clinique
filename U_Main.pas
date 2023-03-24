﻿unit U_Main;

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
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, System.ImageList, ComObj,
  FMX.frxClass, FMX.frxDBSet, FMX.frxDesgn, FMX.frxBarcode, FMX.frxBarcode2DView, Winapi.ShellAPI, Winapi.Windows,
  FMX.Memo.Types, FMX.Memo, DateUtils;

type
  Tfrm_main = class(TForm)
    nav_bar: TRectangle;
    Rect_Exit: TRectangle;
    btn_logout: TRectangle;
    img_logoff: TImage;
    Text4: TText;
    ColorAnimation5: TColorAnimation;
    Circle_new_users_counter: TCircle;
    N_of_Users_Invts: TText;
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
    tab_users: TTabItem;
    rect_top_bar: TRectangle;
    Circle2: TCircle;
    rect_profile_bar: TRectangle;
    text_USER_fullName: TText;
    text_USER_type: TText;
    ColorAnimation1: TColorAnimation;
    rec_BG: TRectangle;
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
    PopupMenu_esc: TPopupMenu;
    MenuItem1: TMenuItem;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    rect_logo: TRectangle;
    logo: TImage;
    VertScrollBox1: TVertScrollBox;
    StyleBook1: TStyleBook;
    Text11: TText;
    Label1: TLabel;
    Text12: TText;
    Text2: TText;
    sky_blue: TBrushObject;
    rect123: TRectangle;
    btn_switch: TImage;
    Brush1: TBrushObject;
    SubMenu_Animation: TFloatAnimation;
    btn_maximize_minimize: TRectangle;
    Image3: TImage;
    ColorAnimation3: TColorAnimation;
    rect_dashboard: TRectangle;
    img_dashboard: TImage;
    ColorAnimation11: TColorAnimation;
    Text1: TText;
    ShadowEffect2: TShadowEffect;
    blue: TBrushObject;
    blueee: TBrushObject;
    grid_users: TStringGrid;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    PopupMenu_grid_users: TPopupMenu;
    btn_export_to_excel: TMenuItem;
    SaveDialog1: TSaveDialog;
    tab_patients: TTabItem;
    Rectangle1: TRectangle;
    Rectangle3: TRectangle;
    Rectangle7: TRectangle;
    edit_search_patients: TEdit;
    Rectangle8: TRectangle;
    ColorAnimation4: TColorAnimation;
    Text15: TText;
    Rectangle10: TRectangle;
    frxReport_ticket: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    MenuItem2: TMenuItem;
    Edit_num_recent_ticket: TEdit;
    Rectangle11: TRectangle;
    grid_patients: TStringGrid;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    PopupMenu_grid_patients: TPopupMenu;
    print_patient_id: TMenuItem;
    frxReport_patient_id: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frx2DBarCodeObject1: Tfrx2DBarCodeObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    Rectangle12: TRectangle;
    Rectangle14: TRectangle;
    ColorAnimation13: TColorAnimation;
    Text18: TText;
    green: TBrushObject;
    Rectangle13: TRectangle;
    yellow: TBrushObject;
    SpeedButton1: TSpeedButton;
    SizeGrip1: TSizeGrip;
    ColorAnimation14: TColorAnimation;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    ColorAnimation15: TColorAnimation;
    Text13: TText;
    Rectangle17: TRectangle;
    Rectangle18: TRectangle;
    edit_search_users: TEdit;
    Rectangle19: TRectangle;
    SpeedButton2: TSpeedButton;
    ColorAnimation16: TColorAnimation;
    Rectangle20: TRectangle;
    ColorAnimation17: TColorAnimation;
    Text14: TText;
    rect_popup_accept_users: TRectangle;
    Rectangle21: TRectangle;
    Rectangle22: TRectangle;
    Rectangle23: TRectangle;
    Text8: TText;
    Rectangle24: TRectangle;
    Rectangle25: TRectangle;
    Rectangle26: TRectangle;
    Text9: TText;
    Rectangle27: TRectangle;
    Rectangle28: TRectangle;
    ComboBox2: TComboBox;
    Text10: TText;
    ColorAnimation12: TColorAnimation;
    ColorAnimation18: TColorAnimation;
    SpeedButton3: TSpeedButton;
    Memo1: TMemo;
    Button1: TButton;
    Timer1: TTimer;
    add_new_patient: TMenuItem;
    tab_dashboard: TTabItem;
    Rectangle2: TRectangle;
    Rectangle29: TRectangle;
    Rectangle30: TRectangle;
    Edit1: TEdit;
    Rectangle31: TRectangle;
    SpeedButton4: TSpeedButton;
    ColorAnimation19: TColorAnimation;
    Rectangle32: TRectangle;
    ColorAnimation20: TColorAnimation;
    Text16: TText;
    StringGrid1: TStringGrid;
    Rectangle35: TRectangle;
    Rectangle36: TRectangle;
    ColorAnimation21: TColorAnimation;
    Text17: TText;
    Rectangle143: TRectangle;
    Rectangle149: TRectangle;
    Text89: TText;
    Image9: TImage;
    FlowLayout_FR: TFlowLayout;
    Rectangle144: TRectangle;
    Rectangle145: TRectangle;
    Image6: TImage;
    Rectangle146: TRectangle;
    Text90: TText;
    Text88: TText;
    Text91: TText;
    FloatAnimation1: TFloatAnimation;
    ColorAnimation27: TColorAnimation;
    Text19: TText;
    Text20: TText;
    Rectangle33: TRectangle;
    Rectangle34: TRectangle;
    Image7: TImage;
    Text21: TText;
    Rectangle37: TRectangle;
    Text22: TText;
    Text23: TText;
    Text24: TText;
    Text25: TText;
    FloatAnimation2: TFloatAnimation;
    ColorAnimation22: TColorAnimation;
    Rectangle38: TRectangle;
    Rectangle39: TRectangle;
    Image8: TImage;
    Text26: TText;
    Rectangle40: TRectangle;
    Text27: TText;
    Text28: TText;
    Text29: TText;
    Text30: TText;
    FloatAnimation3: TFloatAnimation;
    ColorAnimation23: TColorAnimation;
    Rectangle41: TRectangle;
    Rectangle42: TRectangle;
    Image10: TImage;
    Text31: TText;
    Rectangle43: TRectangle;
    Text32: TText;
    Text33: TText;
    Text34: TText;
    Text35: TText;
    FloatAnimation4: TFloatAnimation;
    ColorAnimation24: TColorAnimation;
    VertScrollBox2: TVertScrollBox;
    FlowLayout_AR: TFlowLayout;
    Rectangle44: TRectangle;
    Rectangle45: TRectangle;
    Image11: TImage;
    Text36: TText;
    Rectangle46: TRectangle;
    Text37: TText;
    Text38: TText;
    Text39: TText;
    Text40: TText;
    FloatAnimation5: TFloatAnimation;
    ColorAnimation25: TColorAnimation;
    btn_add_cardio: TRectangle;
    Rectangle48: TRectangle;
    Image12: TImage;
    Text41: TText;
    Rectangle49: TRectangle;
    Text42: TText;
    Text43: TText;
    Text44: TText;
    Text45: TText;
    FloatAnimation6: TFloatAnimation;
    ColorAnimation26: TColorAnimation;
    Rectangle50: TRectangle;
    Rectangle51: TRectangle;
    Image13: TImage;
    Text46: TText;
    Rectangle52: TRectangle;
    Text47: TText;
    Text48: TText;
    Text49: TText;
    Text50: TText;
    FloatAnimation7: TFloatAnimation;
    ColorAnimation28: TColorAnimation;
    Rectangle53: TRectangle;
    Rectangle54: TRectangle;
    Image14: TImage;
    Text51: TText;
    Rectangle55: TRectangle;
    Text52: TText;
    Text53: TText;
    Text54: TText;
    Text55: TText;
    FloatAnimation8: TFloatAnimation;
    ColorAnimation29: TColorAnimation;
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
    procedure btn_switchClick(Sender: TObject);
    procedure SubMenu_AnimationFinish(Sender: TObject);
    procedure rect_top_barMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btn_maximize_minimizeClick(Sender: TObject);
    procedure btn_export_to_excelClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure print_patient_idClick(Sender: TObject);
    procedure edit_search_patientsTyping(Sender: TObject);
    procedure Rectangle13Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Rectangle1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Rectangle20Click(Sender: TObject);
    procedure Rectangle25Click(Sender: TObject);
    procedure fetch_n_users_invts;
    procedure Rectangle26Click(Sender: TObject);
    procedure roles(U_type: string);
    procedure edit_search_usersTyping(Sender: TObject);
    procedure RunDosInMemo(DosApp: string; AMemo:TMemo);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure add_new_patientClick(Sender: TObject);
    procedure frxReport_patient_idProgressStop(Sender: TfrxReport;
      ProgressType: TfrxProgressType; Progress: Integer);
    procedure btn_add_cardioClick(Sender: TObject);
    procedure add_ticket(room: string);
    procedure Rectangle44Click(Sender: TObject);
    procedure Rectangle53Click(Sender: TObject);
    procedure Rectangle50Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    U,P :string;
    USER_username, USER_password, USER_fullName, USER_type, filter_by_role :string;
  end;

const
  ALPHANUMERIC_CHARS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

var
  frm_main: Tfrm_main;
  i: integer;

implementation

{$R *.fmx}

uses U_Auth, DM;

function GenerateRandomString: string;
var
  i: Integer;
begin
  Result := '';
  for i := 1 to 8 do
    Result := Result + ALPHANUMERIC_CHARS[Random(Length(ALPHANUMERIC_CHARS)) + 1];
end;

function IsInDatabase(const S: string): Boolean;                                    // check if Generated Barcode is available
begin
  DM.DataModule1.FDQuery1.SQL.Clear;
  DM.DataModule1.FDQuery1.SQL.Add('select count(*) from patients where CODE_B = :code_b');
  DM.DataModule1.FDQuery1.ParamByName('code_b').asstring := S;
  DM.DataModule1.FDQuery1.Open;
  Result := DM.DataModule1.FDQuery1.Fields[0].AsInteger > 0;
end;

function GetDosOutput(CommandLine: string; Work: string = 'C:\'): string;
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array[0..255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin
  Result := '';
  with SA do begin
    nLength := SizeOf(SA);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
    begin
      FillChar(SI, SizeOf(SI), 0);
      cb := SizeOf(SI);
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE;
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin
      hStdOutput := StdOutPipeWrite;
      hStdError := StdOutPipeWrite;
    end;
    WorkDir := Work;
    Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine),
                            nil, nil, True, 0, nil,
                            PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
      try
        repeat
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
          if BytesRead > 0 then
          begin
            Buffer[BytesRead] := #0;
            Result := Result + Buffer;
          end;
        until not WasOK or (BytesRead = 0);
        WaitForSingleObject(PI.hProcess, INFINITE);
      finally
        CloseHandle(PI.hThread);
        CloseHandle(PI.hProcess);
      end;
  finally
    CloseHandle(StdOutPipeRead);
  end;
end;

function RefToCell(ARow, ACol: Integer): string;
begin
  Result := Chr(Ord('A') + ACol - 1) + IntToStr(ARow);
end;

function SaveAsExcelFile(AGrid: TStringGrid; ASheetName, AFileName: string;ColCount:integer): Boolean;
const
  xlWBATWorksheet = -4167;
var
  Row, Col: Integer;
  GridPrevFile: string;
  XLApp, Sheet, Data: OLEVariant;
  i, j: Integer;
begin
  // Prepare Data
  Data := VarArrayCreate([1, AGrid.RowCount, 1, ColCount], varVariant);
  for i := 0 to ColCount - 1 do
    for j := 0 to AGrid.RowCount - 1 do
      Data[j + 1, i + 1] := AGrid.Cells[i, j];
  // Create Excel-OLE Object
  Result := False;
  XLApp := CreateOleObject('Excel.Application');
  try
    // Hide Excel
    XLApp.Visible := False;
    // Add new Workbook
    XLApp.Workbooks.Add(xlWBatWorkSheet);
    Sheet := XLApp.Workbooks[1].WorkSheets[1];
    Sheet.Name := ASheetName;
    // Fill up the sheet
    Sheet.Range[RefToCell(1, 1), RefToCell(AGrid.RowCount, ColCount)].Value := Data;
    // Save Excel Worksheet
    try
      XLApp.Workbooks[1].SaveAs(AFileName);
      Result := True;
    except
      // Error ?
    end;
  finally
    // Quit Excel
    if not VarIsEmpty(XLApp) then
    begin
      XLApp.DisplayAlerts := False;
      XLApp.Quit;
      XLAPP := Unassigned;
      Sheet := Unassigned;
    end;
  end;
end;

procedure Tfrm_main.add_new_patientClick(Sender: TObject);
var
  RandomString: string;
begin
  RandomString := GenerateRandomString;                                                            // Add New Patient
  while IsInDatabase(RandomString) do
    RandomString := GenerateRandomString;
  showmessage(RandomString);
end;

procedure Tfrm_main.add_ticket(room: string);
var
  num, ticket_number, day, month, year :integer;
  date_ticket :TDateTime;
  record_msg :string;
begin
  if MessageDlg('Confirm ?',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      DM.DataModule1.FDQuery1.SQL.Clear;
      DM.DataModule1.FDQuery1.SQL.Add('select top 1 * from tickets order by num DESC');
      DM.Datamodule1.FDQuery1.Open;
      num := DM.Datamodule1.FDQuery1.FieldByName('num').AsInteger+1;

      DM.DataModule1.FDQuery1.SQL.Clear;
      DM.DataModule1.FDQuery1.SQL.Add('select top 1 * from tickets WHERE status=:status order by num DESC');
      DM.DataModule1.FDQuery1.ParamByName('status').AsWideString := room;
      DM.Datamodule1.FDQuery1.Open;
      date_ticket := DM.Datamodule1.FDQuery1.FieldByName('created_at').AsDateTime;

//      showmessage(datetostr(date_ticket));
      if (MonthOf(date_ticket)<>MonthOf(now)) OR (YearOf(date_ticket)<>YearOf(now)) OR (DayOf(date_ticket)<>DayOf(now)) then begin
        ticket_number := 1;
      end else begin
        DM.DataModule1.FDQuery1.SQL.Clear;
        DM.DataModule1.FDQuery1.SQL.Add('select top 1 * from tickets WHERE status=:status order by num DESC');
      DM.DataModule1.FDQuery1.ParamByName('status').AsWideString := room;
        DM.Datamodule1.FDQuery1.Open;
        ticket_number := DM.Datamodule1.FDQuery1.FieldByName('ticket_number').AsInteger+1;
      end;

      DM.DataModule1.FDQuery1.SQL.Clear;
      DM.DataModule1.FDQuery1.SQL.Add('INSERT INTO tickets values (:num,:ticket_number,:status,:created_at,:updated_at)');
      DM.DataModule1.FDQuery1.ParamByName('num').asinteger := num;
      DM.DataModule1.FDQuery1.ParamByName('ticket_number').asinteger := ticket_number;
      DM.DataModule1.FDQuery1.ParamByName('status').AsWideString := room;
      DM.DataModule1.FDQuery1.ParamByName('created_at').asdatetime := now;
      DM.DataModule1.FDQuery1.ParamByName('updated_at').asdatetime := now;
      DM.Datamodule1.FDQuery1.Execute;

      DM.Datamodule1.table_tickets.Filtered := false;
      DM.Datamodule1.table_tickets.Filter := 'num like '+inttostr(num);
      DM.Datamodule1.table_tickets.Filtered := true;


    //  FrxReport_ticket.ShowReport();
      FrxReport_ticket.PrepareReport;
      FrxReport_ticket.PrintOptions.ShowDialog := False;
      FrxReport_ticket.Print;

      record_msg := 'Impression de Ticket "' + room + ' Num:'+ inttostr(ticket_number)+'"';
      rec(record_msg);

      DM.Datamodule1.table_tickets.Filtered := false;
    end;

end;

procedure Tfrm_main.btn_add_cardioClick(Sender: TObject);
begin
  add_ticket('أمراض القلب والشرايين');
end;

procedure Tfrm_main.btn_export_to_excelClick(Sender: TObject);
begin

  if SaveDialog1.Execute then begin
    if SaveAsExcelFile(grid_users, 'Liste des utilisateurs', SaveDialog1.Filename, 3) then begin
      ShowMessage('Data saved!');
      rec('Users Data saved');
    end;
  end;
end;

procedure Tfrm_main.MenuItem2Click(Sender: TObject);
begin
  Rectangle8Click(nil);
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

procedure Tfrm_main.btn_maximize_minimizeClick(Sender: TObject);
begin
  if frm_main.WindowState = TWindowState.wsNormal then frm_main.WindowState := TWindowState.wsMaximized
  else frm_main.WindowState := TWindowState.wsNormal;
end;

procedure Tfrm_main.btn_switchClick(Sender: TObject);
begin
  if i=1 then begin
    i := 0;
    SubMenu_Animation.StartValue := 257;
    SubMenu_Animation.StopValue := 57;
    SubMenu_Animation.Enabled := true;
    label1.Visible := false;
    Text12.Visible := false;
//    rectangle14.Visible := false;
  end else begin
    if i=0 then begin
      i := 1;
      SubMenu_Animation.StartValue := 57;
      SubMenu_Animation.StopValue := 257;
      SubMenu_Animation.Enabled := true;
      label1.Visible := true;
      Text12.Visible := true;
    end;
  end;
end;

procedure Tfrm_main.Button1Click(Sender: TObject);
var text :string;
begin
//  RunDosInMemo('ping 8.8.8.8 -c 1',Memo1);
  timer1.Enabled := true;
end;

procedure Tfrm_main.edit_search_patientsTyping(Sender: TObject);
begin
  if edit_search_patients.Text ='' then begin
    DM.Datamodule1.table_patients.Filtered := false;
  end else begin
    DM.Datamodule1.table_patients.Filtered := false;
    DM.Datamodule1.table_patients.Filter := 'CODE_B like '+ quotedstr('%'+edit_search_patients.Text+'%') ;
    DM.Datamodule1.table_patients.Filtered := true;
  end;
end;

procedure Tfrm_main.edit_search_usersTyping(Sender: TObject);
begin
  if edit_search_users.Text ='' then begin
    DM.Datamodule1.table_users.Filtered := false;
    DM.Datamodule1.table_users.Filter := filter_by_role ;
    DM.Datamodule1.table_users.Filtered := true;
  end else begin
    DM.Datamodule1.table_users.Filtered := false;
    if filter_by_role='' then
      DM.Datamodule1.table_users.Filter := 'user like '+ quotedstr(edit_search_users.Text+'%')
    else
      DM.Datamodule1.table_users.Filter := 'user like '+ quotedstr(edit_search_users.Text+'%') + ' and ' +  filter_by_role ;
    DM.Datamodule1.table_users.Filtered := true;
  end;
end;

procedure Tfrm_main.fetch_n_users_invts;
begin
  // Fetch N_of_Users_Invts /////////////////////////////////////////////////////////////////////////////////////
  DM.DataModule1.FDQuery1.SQL.Clear;
  DM.DataModule1.FDQuery1.SQL.Add('select count(*) from users where type = :user');
  DM.DataModule1.FDQuery1.ParamByName('user').asstring := 'Guest';
  Datamodule1.FDQuery1.Open;
  N_of_Users_Invts.Text := DM.DataModule1.FDQuery1.Fields[0].AsString + '+';
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
end;

procedure Tfrm_main.FormResize(Sender: TObject);
var
  form_width, grid_patients_list_width, grid_users_list_width, rest_width: real;
begin

  // Auto Adjust Columns width for ***PATIENT*** StringGrid//////////////////////////////////////////////////////
  form_width := frm_main.Width;                                                                               ///
  grid_patients_list_width := form_width - 57 - 60;                                                           ///
  rest_width := grid_patients_list_width;                                                                     ///
  LinkGridToDataSourceBindSourceDB3.Columns[0].Width := round((5.93) * grid_patients_list_width / 100);       ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[0].Width;                              ///
  LinkGridToDataSourceBindSourceDB3.Columns[1].Width := round((8.30) * grid_patients_list_width / 100);       ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[1].Width;                              ///
  LinkGridToDataSourceBindSourceDB3.Columns[2].Width := round((17.79) * grid_patients_list_width / 100);      ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[2].Width;                              ///
  LinkGridToDataSourceBindSourceDB3.Columns[3].Width := round((23.72) * grid_patients_list_width / 100);      ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[3].Width;                              ///
  LinkGridToDataSourceBindSourceDB3.Columns[4].Width := round((8.30) * grid_patients_list_width / 100);       ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[4].Width;                              ///
  LinkGridToDataSourceBindSourceDB3.Columns[5].Width := round((11.86) * grid_patients_list_width / 100);      ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[5].Width;                              ///
  LinkGridToDataSourceBindSourceDB3.Columns[6].Width := round(rest_width)-45;                                 ///
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////


  // Auto Adjust Columns width for ***USERS*** StringGrid////////////////////////////////////////////////////////
  form_width := frm_main.Width;                                                                               ///
  grid_users_list_width := form_width - 57 - 60;                                                              ///
  rest_width := grid_users_list_width;                                                                        ///
  LinkGridToDataSourceBindSourceDB2.Columns[0].Width := round((20) * grid_users_list_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[0].Width;                              ///
  LinkGridToDataSourceBindSourceDB2.Columns[1].Width := round((40) * grid_users_list_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[1].Width;                              ///
  LinkGridToDataSourceBindSourceDB2.Columns[2].Width := round((38) * grid_users_list_width / 100);            ///
  rest_width := rest_width - LinkGridToDataSourceBindSourceDB3.Columns[2].Width;                              ///
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////

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

  // Fetch_n_users_invts
  fetch_n_users_invts;


  // User Roles
  roles(USER_type);



end;


procedure Tfrm_main.frxReport_patient_idProgressStop(Sender: TfrxReport;
  ProgressType: TfrxProgressType; Progress: Integer);
begin
  DM.Datamodule1.table_patients.Filtered := false;
end;

procedure Tfrm_main.nav_barMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
//  if (Button = TMouseButton.mbLeft) then StartWindowDrag;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_main.print_patient_idClick(Sender: TObject);
begin
//  FrxReport_ticket.ShowReport();

//  showmessage(grid_patients.Cells[1,grid_patients.Selected]);

  DM.Datamodule1.table_patients.Filtered := false;
  DM.Datamodule1.table_patients.Filter := 'CODE_B = '''+grid_patients.Cells[1,grid_patients.Selected]+'''';
  DM.Datamodule1.table_patients.Filtered := true;

  FrxReport_patient_id.PrepareReport;
  FrxReport_patient_id.PrintOptions.ShowDialog := False;
  FrxReport_patient_id.Print;
end;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////

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

// Impression Ticket
procedure Tfrm_main.Rectangle13Click(Sender: TObject);
begin
  edit_search_patientsTyping(nil);
end;

procedure Tfrm_main.Rectangle1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if (Button = TMouseButton.mbLeft) then StartWindowDrag;
end;

procedure Tfrm_main.Rectangle20Click(Sender: TObject);
begin
  rect_popup_accept_users.Visible := true;
  text8.Text := 'Choisissez le type d''utilisateur que vous souhaitez attribuer à ' + grid_users.Cells[1,grid_users.Selected];
end;

procedure Tfrm_main.Rectangle25Click(Sender: TObject);
begin
  if MessageDlg('Confirm ?',
    mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      DM.DataModule1.FDQuery1.SQL.Clear;
      DM.DataModule1.FDQuery1.SQL.Add('DELETE FROM users WHERE user = :user ');
      DM.DataModule1.FDQuery1.ParamByName('user').asstring := grid_users.Cells[0,grid_users.Selected];
      DM.Datamodule1.FDQuery1.ExecSQL;
      SpeedButton3Click(nil);
      DM.Datamodule1.table_users.Refresh;
      // Fetch_n_users_invts
      fetch_n_users_invts;
    end;
end;

procedure Tfrm_main.Rectangle26Click(Sender: TObject);
begin

    DM.DataModule1.FDQuery1.SQL.Clear;
    DM.DataModule1.FDQuery1.SQL.Add('UPDATE users SET type=:type WHERE user = :user ');
    DM.DataModule1.FDQuery1.ParamByName('user').asstring := grid_users.Cells[0,grid_users.Selected];
    DM.DataModule1.FDQuery1.ParamByName('type').asstring := combobox2.items[combobox2.ItemIndex];
    DM.Datamodule1.FDQuery1.Execute;
    SpeedButton3Click(nil);
    DM.Datamodule1.table_users.Refresh;
    // Fetch_n_users_invts
    fetch_n_users_invts;

end;

procedure Tfrm_main.Rectangle44Click(Sender: TObject);
begin
  add_ticket('أخصائي التخدير والإنعاش');
end;

procedure Tfrm_main.Rectangle50Click(Sender: TObject);
begin
  add_ticket('طبيب عام');
end;

procedure Tfrm_main.Rectangle53Click(Sender: TObject);
begin
  add_ticket('أمراض السكري والغدة الدرقية');
end;

procedure Tfrm_main.Rectangle8Click(Sender: TObject);
var
  num, ticket_number, day, month, year :integer;
  date_ticket :TDateTime;
  record_msg :string;
begin
  if MessageDlg('Confirm ?',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
    begin
      DM.DataModule1.FDQuery1.SQL.Clear;
      DM.DataModule1.FDQuery1.SQL.Add('select top 1 * from tickets order by num DESC');
      DM.Datamodule1.FDQuery1.Open;
      date_ticket := DM.Datamodule1.FDQuery1.FieldByName('created_at').AsDateTime;
//      showmessage(datetostr(date_ticket));
      if (MonthOf(date_ticket)<>MonthOf(now)) OR (YearOf(date_ticket)<>YearOf(now)) OR (DayOf(date_ticket)<>DayOf(now)) then begin
        DM.DataModule1.FDQuery1.SQL.Clear;
        DM.DataModule1.FDQuery1.SQL.Add('select top 1 * from tickets order by num DESC');
        DM.Datamodule1.FDQuery1.Open;
        num := DM.Datamodule1.FDQuery1.FieldByName('num').AsInteger+1;
        ticket_number := 1;
        DM.DataModule1.FDQuery1.SQL.Clear;
        DM.DataModule1.FDQuery1.SQL.Add('INSERT INTO tickets values (:num,:ticket_number,:status,:created_at,:updated_at)');
        DM.DataModule1.FDQuery1.ParamByName('num').asinteger := num;
        DM.DataModule1.FDQuery1.ParamByName('ticket_number').asinteger := ticket_number;
        DM.DataModule1.FDQuery1.ParamByName('status').AsWideString := 'أمراض القلب والأوعية';
        DM.DataModule1.FDQuery1.ParamByName('created_at').asdatetime := now;
        DM.DataModule1.FDQuery1.ParamByName('updated_at').asdatetime := now;
        DM.Datamodule1.FDQuery1.Execute;
      end else begin
        DM.DataModule1.FDQuery1.SQL.Clear;
        DM.DataModule1.FDQuery1.SQL.Add('select top 1 * from tickets order by num DESC');
        DM.Datamodule1.FDQuery1.Open;
        num := DM.Datamodule1.FDQuery1.FieldByName('num').AsInteger+1;
        DM.DataModule1.FDQuery1.SQL.Clear;
        DM.DataModule1.FDQuery1.SQL.Add('select top 1 * from tickets order by num DESC');
        DM.Datamodule1.FDQuery1.Open;
        ticket_number := DM.Datamodule1.FDQuery1.FieldByName('ticket_number').AsInteger+1;
        DM.DataModule1.FDQuery1.SQL.Clear;
        DM.DataModule1.FDQuery1.SQL.Add('INSERT INTO tickets values (:num,:ticket_number,:status,:created_at,:updated_at)');
        DM.DataModule1.FDQuery1.ParamByName('num').asinteger := num;
        DM.DataModule1.FDQuery1.ParamByName('ticket_number').asinteger := ticket_number;
        DM.DataModule1.FDQuery1.ParamByName('status').asstring := 'Cariologue';
        DM.DataModule1.FDQuery1.ParamByName('created_at').asdatetime := now;
        DM.DataModule1.FDQuery1.ParamByName('updated_at').asdatetime := now;
        DM.Datamodule1.FDQuery1.Execute;
      end;

      DM.Datamodule1.table_tickets.Filtered := false;
      DM.Datamodule1.table_tickets.Filter := 'num like '+inttostr(num);
      DM.Datamodule1.table_tickets.Filtered := true;

      DM.Datamodule1.table_patients.Filtered := false;
      DM.Datamodule1.table_patients.Filter := 'CDEP like '+ grid_patients.Cells[0,grid_patients.Selected];
      DM.Datamodule1.table_patients.Filtered := true;

    //  FrxReport_ticket.ShowReport();
      FrxReport_ticket.PrepareReport;
      FrxReport_ticket.PrintOptions.ShowDialog := False;
      FrxReport_ticket.Print;

      Edit_num_recent_ticket.Text := 'N°: ' + inttostr(num);

      record_msg := 'Impression Ticket pour "' + grid_patients.Cells[2,grid_patients.Selected] + ' ' + grid_patients.Cells[3,grid_patients.Selected] +'" Code:'+ grid_patients.Cells[0,grid_patients.Selected];
      rec(record_msg);

      DM.Datamodule1.table_patients.Filtered := false;
      DM.Datamodule1.table_tickets.Filtered := false;
    end;
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
  tabcontrol1.TabIndex := 2;
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
  //Switch to Patients TAB
  tabcontrol1.TabIndex := 1;
end;

procedure Tfrm_main.rect_profile_barClick(Sender: TObject);
begin
  if rect_profile_bar_menu.Visible = false then rect_profile_bar_menu.Visible := true
  else rect_profile_bar_menu.Visible := false;
end;

procedure Tfrm_main.rect_top_barMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if (Button = TMouseButton.mbLeft) then StartWindowDrag;
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
  //Switch to Users TAB
  tabcontrol1.TabIndex := 0;
end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////// ROLE
procedure Tfrm_main.roles(U_type: string);
begin

  if U_type='Admin' then begin
    DM.DataModule1.table_users.Filtered := false;
  end else begin
    if U_type='Administrateur' then begin
      DM.DataModule1.table_users.Filtered := false;
      DM.DataModule1.table_users.Filter := 'type <>'+ quotedstr('Admin');
      filter_by_role := 'type <> ''Admin'' ';
      DM.DataModule1.table_users.Filtered := true;
      // Delete Administrateur role
      combobox2.Items.Delete(0);
    end else begin
      if U_type='Medecin' then begin
        //
      end;
      filter_by_role := '';
      Rect_users.Visible := false;
      tab_users.Visible := false;
    end;
  end;

end;

procedure Tfrm_main.RunDosInMemo(DosApp: string; AMemo: TMemo);
const
    READ_BUFFER_SIZE = 2400;
var
    Security: TSecurityAttributes;
    readableEndOfPipe, writeableEndOfPipe: THandle;
    start: TStartUpInfo;
    ProcessInfo: TProcessInformation;
    Buffer: PAnsiChar;
    BytesRead: DWORD;
    AppRunning: DWORD;
begin
    Security.nLength := SizeOf(TSecurityAttributes);
    Security.bInheritHandle := True;
    Security.lpSecurityDescriptor := nil;

    if CreatePipe({var}readableEndOfPipe, {var}writeableEndOfPipe, @Security, 0) then
    begin
        Buffer := AllocMem(READ_BUFFER_SIZE+1);
        FillChar(Start, Sizeof(Start), #0);
        start.cb := SizeOf(start);

        // Set up members of the STARTUPINFO structure.
        // This structure specifies the STDIN and STDOUT handles for redirection.
        // - Redirect the output and error to the writeable end of our pipe.
        // - We must still supply a valid StdInput handle (because we used STARTF_USESTDHANDLES to swear that all three handles will be valid)
        start.dwFlags := start.dwFlags or STARTF_USESTDHANDLES;
        start.hStdInput := GetStdHandle(STD_INPUT_HANDLE); //we're not redirecting stdInput; but we still have to give it a valid handle
        start.hStdOutput := writeableEndOfPipe; //we give the writeable end of the pipe to the child process; we read from the readable end
        start.hStdError := writeableEndOfPipe;

        //We can also choose to say that the wShowWindow member contains a value.
        //In our case we want to force the console window to be hidden.
        start.dwFlags := start.dwFlags + STARTF_USESHOWWINDOW;
        start.wShowWindow := SW_HIDE;

        // Don't forget to set up members of the PROCESS_INFORMATION structure.
        ProcessInfo := Default(TProcessInformation);

        //WARNING: The unicode version of CreateProcess (CreateProcessW) can modify the command-line "DosApp" string.
        //Therefore "DosApp" cannot be a pointer to read-only memory, or an ACCESS_VIOLATION will occur.
        //We can ensure it's not read-only with the RTL function: UniqueString
        UniqueString({var}DosApp);

        if CreateProcess(nil, PChar(DosApp), nil, nil, True, NORMAL_PRIORITY_CLASS, nil, nil, start, {var}ProcessInfo) then
        begin
            //Wait for the application to terminate, as it writes it's output to the pipe.
            //WARNING: If the console app outputs more than 2400 bytes (ReadBuffer),
            //it will block on writing to the pipe and *never* close.
            repeat
                Apprunning := WaitForSingleObject(ProcessInfo.hProcess, 100);
                Application.ProcessMessages;
            until (Apprunning <> WAIT_TIMEOUT);

            //Read the contents of the pipe out of the readable end
            //WARNING: if the console app never writes anything to the StdOutput, then ReadFile will block and never return
            repeat
                BytesRead := 0;
                ReadFile(readableEndOfPipe, Buffer[0], READ_BUFFER_SIZE, {var}BytesRead, nil);
                Buffer[BytesRead]:= #0;
                OemToAnsi(Buffer,Buffer);
                AMemo.Text := AMemo.text + String(Buffer);
            until (BytesRead < READ_BUFFER_SIZE);
        end;
        FreeMem(Buffer);
        CloseHandle(ProcessInfo.hProcess);
        CloseHandle(ProcessInfo.hThread);
        CloseHandle(readableEndOfPipe);
        CloseHandle(writeableEndOfPipe);
    end;

end;

procedure Tfrm_main.SpeedButton3Click(Sender: TObject);
begin
  rect_popup_accept_users.Visible := false;
end;

procedure Tfrm_main.SubMenu_AnimationFinish(Sender: TObject);
begin
  SubMenu_Animation.Enabled := false;
//  if i=1 then rectangle14.Visible := true;
end;

procedure Tfrm_main.Timer1Timer(Sender: TObject);
var text :string;
begin
  rect_popup_accept_users.Visible := true;
  text := GetDosOutput('ping -n 1 8.8.8.8 ');
  Memo1.Lines.Add(text);
  timer1.Enabled := false;
//  Button1Click(nil);

  text := memo1.Lines[2];
  rect_popup_accept_users.Visible := false;
//  showmessage(text);

end;

end.
