program SEOCorpEmpresa;

uses
  Vcl.Forms,
  menuFrm in 'menuFrm.pas' {menuForm},
  CadastroFrm in 'CadastroFrm.pas' {CadastroForm},
  dmProcesso in 'dmProcesso.pas' {dm: TDataModule},
  AlteracaoFrm in 'AlteracaoFrm.pas' {AlteracaoForm},
  ExcluirFrm in 'ExcluirFrm.pas' {ExcluirForm},
  PesquisaFrm in 'PesquisaFrm.pas' {PesquisaForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TmenuForm, menuForm);
  Application.CreateForm(TCadastroForm, CadastroForm);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TAlteracaoForm, AlteracaoForm);
  Application.CreateForm(TExcluirForm, ExcluirForm);
  Application.CreateForm(TPesquisaForm, PesquisaForm);
  Application.Run;
end.
