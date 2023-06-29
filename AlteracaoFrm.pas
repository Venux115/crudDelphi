unit AlteracaoFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TAlteracaoForm = class(TForm)
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
    btnCadastrar: TButton;
    btnFechar: TButton;
    lblID: TLabel;
    edtId: TEdit;
    procedure edtPesqChange(Sender: TObject);
    procedure grdClientesCellClick(Column: TColumn);
    procedure btnFecharClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AlteracaoForm: TAlteracaoForm;

implementation

{$R *.dfm}

Uses

  dmProcesso;

procedure TAlteracaoForm.btnCadastrarClick(Sender: TObject);
begin

    with dm.qryClientes do
    begin

      sql.clear;
      sql.add('Update CLIENTES set DS_NOME = :nome, DS_ENDERECO = :endereco, DS_BAIRRO = :bairro, NR_CEP = :cep, DS_CIDADE = :cidade, DS_UF = :uf, DS_FONE = :fone where CD_CODIGOCLI = :id;');

      ParamByName('id').AsInteger := strtoint(edtId.text);
      ParamByName('nome').AsString := edtNome.text;
      ParamByName('endereco').AsString := edtEndereco.text;
      ParamByName('bairro').AsString := edtBairro.text;
      ParamByName('cep').AsInteger := strtoint(edtCep.text);
      ParamByName('cidade').AsString := edtCidade.text;
      ParamByName('uf').AsString := edtUf.text;
      ParamByName('fone').AsString := edtTelefone.text;

      ExecSQL;

      sql.clear;
      sql.Add('select * from CLIENTES;');

      open;

    end;

end;

procedure TAlteracaoForm.btnFecharClick(Sender: TObject);
begin

    AlteracaoForm.close;

end;

procedure TAlteracaoForm.edtPesqChange(Sender: TObject);
begin

    with dm.qryClientes do
    begin

        sql.Clear;
        sql.add('Select * from CLIENTES where DS_NOME like :pesq ;');

        ParamByName('pesq').AsString := '%' + edtPesq.Text + '%';

        open;

    end;

end;

procedure TAlteracaoForm.grdClientesCellClick(Column: TColumn);
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
