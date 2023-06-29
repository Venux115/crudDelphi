unit PesquisaFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPesquisaForm = class(TForm)
    edtPesq: TEdit;
    lblPesq: TLabel;
    grdClientes: TDBGrid;
    pnlPesquisa: TPanel;
    pnlGrid: TPanel;
    pnlBotao: TPanel;
    procedure edtPesqChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PesquisaForm: TPesquisaForm;

implementation

{$R *.dfm}

Uses

    dmProcesso;

procedure TPesquisaForm.edtPesqChange(Sender: TObject);
begin

    with dm.qryClientes do
    begin
        sql.Clear;
        sql.add('Select * from CLIENTES where DS_NOME like :pesq ;');

        ParamByName('pesq').AsString := '%' + edtPesq.Text + '%';

        open;

    end;

end;

end.
