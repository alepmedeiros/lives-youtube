unit listatarefas.model.conexao;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDMConexao = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function DataSet: TDataSet;
    procedure SQL(Value: String);
    procedure Params(aParam: String; aValue: Variant); overload;
    function Params(aParam: String): Variant; overload;
    procedure ExecSQL;
    procedure Open;
    procedure StartTransaction;
    procedure Commit;
    procedure Rollback;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

{ TDataModule1 }

procedure TDMConexao.Commit;
begin
  FDConnection1.Commit;
end;

procedure TDMConexao.DataModuleCreate(Sender: TObject);
begin
  FDConnection1.Connected;
end;

function TDMConexao.DataSet: TDataSet;
begin
  Result := FDQuery1;
end;

procedure TDMConexao.ExecSQL;
begin
  FDQuery1.ExecSQL;
end;

procedure TDMConexao.Open;
begin
  FDQuery1.Open;
end;

function TDMConexao.Params(aParam: String): Variant;
begin
  Result := FDQuery1.ParamByName(aParam).Value;
end;

procedure TDMConexao.Params(aParam: String; aValue: Variant);
begin
  FDQuery1.ParamByName(aParam).Value := aValue;
end;

procedure TDMConexao.Rollback;
begin
  FDConnection1.Rollback;
end;

procedure TDMConexao.SQL(Value: String);
begin
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add(Value);
end;

procedure TDMConexao.StartTransaction;
begin
  FDConnection1.StartTransaction;
end;

end.
