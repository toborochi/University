Unit UJuego;

interface
uses sysutils,graphics,dialogs;
const
	pared =1;
	camino=0;

type
  Cjuego = class
  private
    M : array[1..50,1..50] of integer;
    Nf,Nc : integer;
      pantX,pantY : integer;
    dimpieza : integer;
  public
    constructor crear;
    procedure cargar;
    procedure dibujarpieza(f,c : integer; Pant :  Tcanvas);
    procedure DibujarPlano(Pant :  Tcanvas);
end;

implementation
  constructor Cjuego.crear;
  begin
    Nf:=0;
    Nc:=0;
  end;

  procedure Cjuego.cargar;
  begin
    Nf:=4;
    Nc:=4;
    M[1,1]:=1; M[1,2]:=1; M[1,3]:=1; M[1,4]:=1;
    M[2,1]:=1; M[2,2]:=0; M[2,3]:=0; M[2,4]:=1;
    M[3,1]:=1; M[3,2]:=0; M[3,3]:=0; M[3,4]:=1;
    M[4,1]:=1; M[4,2]:=1; M[4,3]:=1; M[4,4]:=1;
  end;

  /// Posx = Cx + (c-1)*tamano
  /// Posy = Cy + (f-1)*tamano
  ///  tamano = tamano de la figura
  ///  Cx y Cy posiciones iniciales
  procedure Cjuego.dibujarpieza(f,c:integer; pant : Tcanvas);
  var
    xr,yr : integer;
    cod : integer;
  begin
    PANTX:=200;
    PANTY:=100;
    dimpieza:=20;
    xr:= pantx + (c-1)*dimpieza;
    yr:= panty + (f-1)*dimpieza;
    cod:=M[f,c];
    pant.TextOut(xr,yr,inttostr(cod));

  end;

  procedure Cjuego.DibujarPlano(Pant :  Tcanvas);
  var
   fi,co:integer;
  begin
    for FI := 1 to Nf do
      begin
        for Co := 1 to Nc do
          begin
            dibujarpieza(fi,co,pant);
          end;
      end;


  end;

end.
