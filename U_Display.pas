﻿unit U_Display;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Objects, FMX.Layouts, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI, ComObj;

type
  TForm1 = class(TForm)
    StyleBook1: TStyleBook;
    GridPanelLayout1: TGridPanelLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Image1: TImage;
    Text1: TText;
    Rectangle3: TRectangle;
    Text2: TText;
    Text3: TText;
    Text4: TText;
    Text5: TText;
    FloatAnimation1: TFloatAnimation;
    ColorAnimation1: TColorAnimation;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Image2: TImage;
    Text6: TText;
    Rectangle6: TRectangle;
    Text7: TText;
    Text8: TText;
    Text9: TText;
    Text10: TText;
    FloatAnimation2: TFloatAnimation;
    ColorAnimation2: TColorAnimation;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Image3: TImage;
    Text11: TText;
    Rectangle9: TRectangle;
    Text12: TText;
    Text13: TText;
    Text14: TText;
    Text15: TText;
    FloatAnimation3: TFloatAnimation;
    ColorAnimation3: TColorAnimation;
    Rectangle10: TRectangle;
    Rectangle11: TRectangle;
    Image4: TImage;
    Text16: TText;
    Rectangle12: TRectangle;
    Text17: TText;
    Text18: TText;
    Text19: TText;
    Text20: TText;
    FloatAnimation4: TFloatAnimation;
    ColorAnimation4: TColorAnimation;
    Rectangle13: TRectangle;
    Rectangle14: TRectangle;
    Image5: TImage;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    Image6: TImage;
    Text21: TText;
    time: TText;
    Image7: TImage;
    Rectangle17: TRectangle;
    Text23: TText;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    Timer1: TTimer;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure Timer1Timer(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Image5Click(Sender: TObject);
var
  Voice: Variant;
begin
  Voice := CreateOleObject('SAPI.SpVoice');
  Voice.Voice := Voice.GetVoices('Language=409; Gender=Male; Age=Adult').Item(0);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin


    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('select count(num) as cnt FROM tickets WHERE status=:status and created_at>=:dt');
    FDQuery1.ParamByName('dt').AsDate := now;
    FDQuery1.ParamByName('status').aswidestring := 'أمراض القلب والشرايين';
    FDQuery1.Open;
    text2.Text := FDQuery1.FieldByName('cnt').asstring;

    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('select count(num) as cnt FROM tickets WHERE status=:status and created_at>=:dt');
    FDQuery1.ParamByName('dt').AsDate := now;
    FDQuery1.ParamByName('status').aswidestring := 'أمراض السكري والغدة الدرقية';
    FDQuery1.Open;
    text17.Text := FDQuery1.FieldByName('cnt').asstring;

    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('select count(num) as cnt FROM tickets WHERE status=:status and created_at>=:dt');
    FDQuery1.ParamByName('dt').AsDate := now;
    FDQuery1.ParamByName('status').aswidestring := 'طبيب عام';
    FDQuery1.Open;
    text12.Text := FDQuery1.FieldByName('cnt').asstring;

    FDQuery1.SQL.Clear;
    FDQuery1.SQL.Add('select count(num) as cnt FROM tickets WHERE status=:status and created_at>=:dt');
    FDQuery1.ParamByName('dt').AsDate := now;
    FDQuery1.ParamByName('status').aswidestring := 'أخصائي التخدير والإنعاش';
    FDQuery1.Open;
    text7.Text := FDQuery1.FieldByName('cnt').asstring;

    time.text := timetostr(now);


end;

end.