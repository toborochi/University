Unit1 UJuego;

interface
uses sysutils,graphics,dialogs;
const
	pared :=1;
	camino:=0;

type
  Cjuego:=class;
  private
    M: array[1..50] of integer;
    Nf,Nc : integer;
  public
    constructor crear;
    procedure cargar;
    procedure dibujarpieza(f,c : integer; Pant :  Tcanvas);
end;

implementation
  constructor Cjuego.crear;
  begin
    Nf:=0;
    Nc:=0;
  end;

  procedure Cjuego.cargar;
  begin
    M[1,1]:=1; M[1,2]:=1; M[1,3]:=1; M[1,4]:=1;
    M[2,1]:=1; M[2,2]:=0; M[2,3]:=0; M[2,4]:=1;
    M[3,1]:=1; M[3,2]:=0; M[3,3]:=0; M[3,4]:=1;
    M[4,1]:=1; M[4,2]:=1; M[4,3]:=1; M[4,4]:=1;
  end;

  /// Posx = Cx + (c-1)*tamano
  /// Posy = Cy + (f-1)*tamano
  ///  tamano = tamano de la figura
  ///  Cx y Cy posiciones iniciales
  procedure Cjuego.dibujarpieza(f,c:integer;pant : Tcanvas);
  var
    xr,yr : integer;
    codFigura : integer;
    pantX,pantY : integer;
    dimpieza : integer;
  begin

  end;

