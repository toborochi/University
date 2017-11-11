unit Proyect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,UJuego,MMSystem,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Label1: TLabel;
    Image1: TImage;
    Edit1: TEdit;
    Image2: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    comenzo : integer;
  public
     J : Cjuego;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 j:=Cjuego.crear;
 comenzo := 1;
end;

procedure TForm1.Button2Click(Sender: TObject);
var s : string;
begin
  s := Edit1.Text;
  j.cargar(s);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   Label1.Caption:='PUNTOS: 0';
   sndPlaySound('C:\Images DELPHI\Blu J - War Ground.wav',snd_Async);
   j.dibujarplano(canvas);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  j.MoverDerecha(canvas);
  Label1.Caption:='PUNTOS: '+inttostr(j.PuntosJuego);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  j.MoverIzquierda(canvas);
  Label1.Caption:='PUNTOS: '+inttostr(j.PuntosJuego);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  j.MoverAbajo(canvas);
  Label1.Caption:='PUNTOS: '+inttostr(j.PuntosJuego);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  j.MoverArriba(canvas);
  Label1.Caption:='PUNTOS: '+inttostr(j.PuntosJuego);
end;

end.
