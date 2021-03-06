program Sistema;

uses
  Vcl.Forms,
  U_entrada in 'U_entrada.pas' {Entrada},
  Menu_inicial in 'Menu_inicial.pas' {login},
  U_sistema in 'U_sistema.pas' {Estoque},
  U_cadastroA in 'U_cadastroA.pas' {Cadastro_A},
  U_cadastroD in 'U_cadastroD.pas' {Cadastro_dep},
  U_Reldepend in 'U_Reldepend.pas' {Rel_depen},
  U_Reltitular in 'U_Reltitular.pas' {Rel_Titular};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TEntrada, Entrada);
  Application.CreateForm(Tlogin, login);
  Application.CreateForm(TEstoque, Estoque);
  Application.CreateForm(TCadastro_A, Cadastro_A);
  Application.CreateForm(TCadastro_dep, Cadastro_dep);
  Application.CreateForm(TRel_depen, Rel_depen);
  Application.CreateForm(TRel_Titular, Rel_Titular);
  Application.Run;
end.
