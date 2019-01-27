unit U_sistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.StdCtrls;

type
  TEstoque = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo: TMenuItem;
    Image1: TImage;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    CadastrarAssociado1: TMenuItem;
    CadastrarDependente1: TMenuItem;
    itulares1: TMenuItem;
    Dependentes1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure CadastrarAssociado1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure CadastrarDependente1Click(Sender: TObject);
    procedure Dependentes1Click(Sender: TObject);
    procedure itulares1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Estoque: TEstoque;

implementation

{$R *.dfm}

uses U_cadastroA, U_cadastroD, U_Reldepend, U_Reltitular;

procedure TEstoque.Button1Click(Sender: TObject);
begin
Estoque.Destroy;

end;

procedure TEstoque.CadastrarAssociado1Click(Sender: TObject);
begin
Cadastro_A.Show;
end;

procedure TEstoque.CadastrarDependente1Click(Sender: TObject);
begin
 Cadastro_dep.Show;
end;

procedure TEstoque.Dependentes1Click(Sender: TObject);
begin
 Rel_depen.RLReport1.Preview();
end;

procedure TEstoque.itulares1Click(Sender: TObject);
begin
 Rel_Titular.RLReport1.Preview();
end;

procedure TEstoque.Sair2Click(Sender: TObject);
begin
Self.Close;

end;

end.
