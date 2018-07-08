unit Sierpinsky;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    var
      p1x,p1y,p2x,p2y,p3x,p3y,rad,lado,xcur,ycur : integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
procedure DibujarPunto(x,y : integer);
begin
  rad:=2;
  with canvas do
  begin
    Pen.Color := clblack;
    Brush.Color := clblack;
    Ellipse(x-rad,y-rad,x+rad,y+rad);
  end;
end;

begin
  lado:=150;    //LADO DEL TRIANGULO
  //POSICION EN X
  p1x:=50;
  p2x:=p1x+lado;
  p3x:= trunc((p1x+p2x)div 2);
  //POSICION Y
  p1y:=200;
  p2y:=p1y;
  p3y:= p1y - trunc(sqrt( (lado*lado)-((lado div 2)*(lado div 2)) ));

  DibujarPunto(p1x,p1y);
  DibujarPunto(p2x,p2y);
  DibujarPunto(p3x,p3y);

end;

procedure TForm1.Button2Click(Sender: TObject);
var x,y : integer;
begin
    xcur:=strtoint(Edit1.Text);
    ycur:=strtoint(Edit2.Text);
   with canvas do
   begin
    Pen.Color := clred;
    Brush.Color := clred;
    Ellipse(xcur-2,ycur-2,xcur+2,ycur+2);
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
procedure DibujarPunto(x,y : integer);
begin
  rad:=1;
  with canvas do
  begin
    Pen.Color := clblack;
    Brush.Color := clblack;
    Ellipse(x-rad,y-rad,x+rad,y+rad);
  end;
end;
var pasos,i,punta : integer;
begin
  pasos:=strtoint(Edit3.Text);
  for i := 1 to pasos do
  begin
     Randomize;
     punta:=Random(4);

     if punta=3 then
     begin
          xcur:= xcur-trunc((xcur - p3x)div 2);
          ycur:= ycur-trunc((ycur - p3y)div 2);
          DibujarPunto(xcur,ycur);
     end
     else
     if punta=2 then
     begin
          xcur:= xcur-trunc((xcur - p2x)div 2);
          ycur:= ycur-trunc((ycur - p2y)div 2);
          DibujarPunto(xcur,ycur);
     end
     else
     if punta=1 then
     begin
          xcur:= xcur-trunc((xcur - p1x)div 2);
          ycur:= ycur-trunc((ycur - p1y)div 2);
          DibujarPunto(xcur,ycur);
     end;

  end;

end;

end.
