unit U_cadastroA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons;

type
  TCadastro_A = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Gravar: TBitBtn;
    Alterar: TBitBtn;
    Excluir: TButton;
    Novo: TButton;
    DBGrid1: TDBGrid;
    FDConnection1: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDTable1: TFDTable;
    DataSource1: TDataSource;
    Sair: TBitBtn;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    PaintBox1: TPaintBox;
    Label11: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure GravarClick(Sender: TObject);
    procedure AlterarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_A: TCadastro_A;

implementation

{$R *.dfm}

uses U_sistema;

procedure TCadastro_A.AlterarClick(Sender: TObject);
begin
FDTable1.Edit;
end;

procedure TCadastro_A.SairClick(Sender: TObject);
begin
Self.Close;
end;

procedure TCadastro_A.ExcluirClick(Sender: TObject);
begin
if Application.MessageBox('Confirma exclus�o ?', 'Aten��o',
                          mb_yesno + mb_iconquestion + mb_defbutton2) = idyes then
                          FDTable1.Delete;
end;

procedure TCadastro_A.FormActivate(Sender: TObject);
begin
if not FDConnection1.Connected then
       FDConnection1.Connected := True;
if not FDTable1.Active then
       FDTable1.Open;

end;

procedure TCadastro_A.GravarClick(Sender: TObject);

var
DataInicial : TDateTime;
begin
DataInicial := IncMonth(now,(18*-12));
if StrToDate(DBEdit3.Text) > dataInicial then
showMessage('Somente pessoas maiores de 18 anos podem ser titulares ');

if  FDTable1.State in[dsEdit,dsInsert] then
   FDTable1.Post;
end;

procedure TCadastro_A.NovoClick(Sender: TObject);
begin
FDTable1.Append;
end;



end.
