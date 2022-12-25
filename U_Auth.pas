unit U_Auth;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm1 = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Text1: TText;
    Text2: TText;
    Text3: TText;
    Rectangle4: TRectangle;
    pink: TBrushObject;
    Text4: TText;
    Text5: TText;
    Text6: TText;
    Edit1: TEdit;
    Text7: TText;
    Rectangle5: TRectangle;
    Text8: TText;
    CheckBox1: TCheckBox;
    StyleBook1: TStyleBook;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Edit2: TEdit;
    Brush1: TBrushObject;
    ColorAnimation1: TColorAnimation;
    ColorAnimation2: TColorAnimation;
    Rectangle8: TRectangle;
    Line1: TLine;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    procedure Rectangle1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Rectangle5Click(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses U_Main;


procedure TForm1.FloatAnimation1Finish(Sender: TObject);
begin
  showmessage('Done');

  Visible := False; // Makes Form1 invisible
  try
    form2.ShowModal; // Shows the Form
  finally
    close;
  end;
end;

procedure TForm1.FloatAnimation2Finish(Sender: TObject);
begin
  floatanimation1.Enabled := true;
end;

procedure TForm1.Rectangle1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  if (Button = TMouseButton.mbLeft) then StartWindowDrag;
end;

procedure TForm1.Rectangle5Click(Sender: TObject);
begin
  text5.Visible := false;
  text6.Visible := false;
  text7.Visible := false;
  rectangle5.Visible := false;
  rectangle6.Visible := false;
  rectangle7.Visible := false;
  checkbox1.Visible := false;
  floatanimation2.Enabled := true;
end;

end.
