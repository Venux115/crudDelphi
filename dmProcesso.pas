unit dmProcesso;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Win.ADODB, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef;

type
  Tdm = class(TDataModule)
    srcClientes: TDataSource;
    qryReport: TFDQuery;
    DSreport: TDataSource;
    qryReportCD_CODIGOCLI: TIntegerField;
    qryReportDS_NOME: TStringField;
    qryReportDS_ENDERECO: TStringField;
    qryReportDS_BAIRRO: TStringField;
    qryReportNR_CEP: TStringField;
    qryReportDS_CIDADE: TStringField;
    qryReportDS_UF: TStringField;
    qryReportDS_FONE: TStringField;
    conexao: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    qryClientes: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
