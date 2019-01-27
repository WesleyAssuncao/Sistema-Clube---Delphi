unit Menu_inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tlogin = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Senha: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  login: Tlogin;

implementation

{$R *.dfm}

uses U_sistema;

procedure Tlogin.SpeedButton1Click(Sender: TObject);
begin
if (Edit1.Text='admin') and (Edit2.Text='senha') then Estoque.ShowModal
else
MessageBox(0, 'Usuario ou senha inv�lido' , 'Erro de acesso' ,0)
end;

procedure Tlogin.SpeedButton2Click(Sender: TObject);
begin

Edit1.Clear;
Edit2.Clear;
Edit1.SetFocus;
end;


end.
