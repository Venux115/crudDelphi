unit menuFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TmenuForm = class(TForm)
    mnuPrincipal: TMainMenu;
    Clientes1: TMenuItem;
    Cadastro1: TMenuItem;
    Cadastro2: TMenuItem;
    Excluso1: TMenuItem;
    Excluso2: TMenuItem;
    procedure Cadastro1Click(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
    procedure Excluso1Click(Sender: TObject);
    procedure Excluso2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menuForm: TmenuForm;

implementation

{$R *.dfm}

Uses

  CadastroFrm, AlteracaoFrm, ExcluirFrm, PesquisaFrm;

procedure TmenuForm.Cadastro1Click(Sender: TObject);
begin

  Application.CreateForm(TCadastroForm, CadastroForm);
  CadastroForm.showModal;

end;

procedure TmenuForm.Cadastro2Click(Sender: TObject);
begin

    Application.CreateForm(TAlteracaoForm, AlteracaoForm);
    AlteracaoForm.ShowModal;

end;

procedure TmenuForm.Excluso1Click(Sender: TObject);
begin

    Application.CreateForm(TExcluirForm,ExcluirForm);
    ExcluirForm.ShowModal;

end;

procedure TmenuForm.Excluso2Click(Sender: TObject);
begin

    Application.CreateForm(TPesquisaForm,PesquisaForm);
    PesquisaForm.ShowModal;

end;

end.
