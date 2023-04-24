unit DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.FMXUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, Data.Win.ADODB, FireDAC.Phys.ODBCDef,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.ODBC, DBAccess, Uni, MemDS,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef;

type
  TDataModule1 = class(TDataModule)
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    table_records: TFDTable;
    table_users: TFDTable;
    table_tickets: TFDTable;
    table_patients: TFDTable;
    FDConnection2: TFDConnection;
    qry_patients: TFDQuery;
    qry_commune: TFDQuery;
    UniQuery1: TUniQuery;
    UniConnection1: TUniConnection;
    FDConnection3: TFDConnection;
    procedure FDConnection1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.FDConnection1AfterConnect(Sender: TObject);
begin

  table_records.Active :=true;

  table_users.Active :=true;

  table_tickets.Active :=true;
//
////  table_patients.Active :=true;
//
//  qry_patients.Active :=true;



end;

end.
