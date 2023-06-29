unit CadastroFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCadastroForm = class(TForm)
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
    btnLimpar: TButton;
    btnFechar: TButton;
    lblID: TLabel;
    edtId: TEdit;
    procedure btnLimparClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroForm: TCadastroForm;

implementation

{$R *.dfm}

Uses

    dmProcesso, biblioFrm;

procedure TCadastroForm.btnCadastrarClick(Sender: TObject);
begin

    with dm.qryClientes do
    begin

      sql.clear;
      sql.add('insert into CLIENTES (DS_NOME, DS_ENDERECO, DS_BAIRRO, NR_CEP, DS_CIDADE, DS_UF, DS_FONE) values (:nome, :endereco, :bairro, :cep, :cidade, :uf, :fone);');
      ParamByName('nome').AsString := edtNome.text;
      ParamByName('endereco').AsString := edtEndereco.text;
      ParamByName('bairro').AsString := edtBairro.text;
      ParamByName('cep').AsString := (edtCep.text);
      ParamByName('cidade').AsString := edtCidade.text;
      ParamByName('uf').AsString := edtUf.text;
      ParamByName('fone').AsString := edtTelefone.text;

      ExecSQL;

    end;

end;

procedure TCadastroForm.btnFecharClick(Sender: TObject);
begin

    CadastroForm.close;

end;

procedure TCadastroForm.btnLimparClick(Sender: TObject);
begin

  Limpar(CadastroForm);

end;

end.
