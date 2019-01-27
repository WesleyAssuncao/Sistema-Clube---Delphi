unit U_entrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TEntrada = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    barra: TProgressBar;
    Labelbarra: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Entrada: TEntrada;

implementation

{$R *.dfm}

uses Menu_inicial, U_sistema;

procedure TEntrada.Timer1Timer(Sender: TObject);

begin

barra.Position := barra.Position +1;
Labelbarra.Caption := IntToStr(barra.Position) + '%';

  if barra.Position = 100 then



begin
Entrada.Destroy;
login.Show;
end;

end;


end.
