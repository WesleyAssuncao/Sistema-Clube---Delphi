unit U_cadastroD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client,
  Vcl.DBCtrls, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls;

type
  TCadastro_dep = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Gravar: TBitBtn;
    Alterar: TBitBtn;
    Excluir: TButton;
    Novo: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Query_Titular: TFDQuery;
    Con_Dp: TFDConnection;
    FDTransaction1: TFDTransaction;
    TabDep: TFDTable;
    Ds_dep: TDataSource;
    Dt_Titular: TDataSource;
    Query_Paren: TFDQuery;
    Ds_Paren: TDataSource;
    Sair: TButton;
    PaintBox1: TPaintBox;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure GravarClick(Sender: TObject);
    procedure AlterarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_dep: TCadastro_dep;

implementation

{$R *.dfm}


procedure TCadastro_dep.AlterarClick(Sender: TObject);
begin
TabDep.Edit;
end;

procedure TCadastro_dep.ExcluirClick(Sender: TObject);
begin
if Application.MessageBox('Confirma exclus�o ?', 'Aten��o',
                          mb_yesno + mb_iconquestion + mb_defbutton2) = idyes then
                          TabDep.Delete;
end;

procedure TCadastro_dep.FormActivate(Sender: TObject);
begin
if not Con_Dp.Connected then
       Con_Dp.Connected := True;
if not TabDep.Active then
       TabDep.Open;
end;

procedure TCadastro_dep.FormShow(Sender: TObject);
begin
  Query_Titular.Open();
  Query_Paren.Open();
end;

procedure TCadastro_dep.GravarClick(Sender: TObject);
begin
if  TabDep.State in[dsEdit,dsInsert] then
   TabDep.Post;
end;

procedure TCadastro_dep.NovoClick(Sender: TObject);
begin
TabDep.Append;
end;

procedure TCadastro_dep.SairClick(Sender: TObject);
begin
Self.Close;
end;

end.
