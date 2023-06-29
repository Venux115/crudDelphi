unit ExcluirFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TExcluirForm = class(TForm)
    edtPesq: TEdit;
    lblPesq: TLabel;
    grdClientes: TDBGrid;
    lblNome: TLabel;
    edtNome: TEdit;
    lblEndereco: TLabel;
    edtEndereco: TEdit;
    lblbairro: TLabel;
    edtBairro: TEdit;
    lblCep: TLabel;
    edtCep: TEdit;
    lblCidade: TLabel;
    edtCidade: TEdit;
    lblUf: TLabel;
    edtUf: TEdit;
    lblTelefone: TLabel;
    edtTelefone: TEdit;
    btnExcluir: TButton;
    btnFechar: TButton;
    lblID: TLabel;
    edtId: TEdit;
    procedure edtPesqChange(Sender: TObject);
    procedure grdClientesCellClick(Column: TColumn);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExcluirForm: TExcluirForm;

implementation

{$R *.dfm}

Uses

  dmProcesso;

procedure TExcluirForm.btnExcluirClick(Sender: TObject);
begin

    with dm.qryClientes do
    begin

        sql.clear;
        sql.Add('delete from CLIENTES where CD_CODIGOCLI = :id');

        ParamByName('id').AsInteger := strtoint(edtId.Text);

        execSQL;

    end;

end;

procedure TExcluirForm.btnFecharClick(Sender: TObject);
begin

    ExcluirForm.close;

end;

procedure TExcluirForm.edtPesqChange(Sender: TObject);
begin

    with dm.qryClientes do
    begin

        sql.Clear;
        sql.add('Select * from CLIENTES where DS_NOME like :pesq ;');

        ParamByName('pesq').AsString := '%' + edtPesq.Text + '%';

        open;

    end;

end;

procedure TExcluirForm.grdClientesCellClick(Column: TColumn);
begin

    edtId.text := grdClientes.Fields[0].Value;
    edtNome.text := grdClientes.Fields[1].Value;
    edtEndereco.text := grdClientes.Fields[2].Value;
    edtBairro.text := grdClientes.Fields[3].Value;
    edtCep.text := grdClientes.Fields[4].Value;
    edtCidade.text := grdClientes.Fields[5].Value;
    edtUf.text := grdClientes.Fields[6].Value;
    edtTelefone.text := grdClientes.Fields[7].Value;

end;

end.
