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
    procedure llenar(f:integer; s:string);
    var
    c : integer;
    begin
      for c := 1 to length(s) do
       M[f,c]:=strtoint(s[c]);
    end;
  begin
    Nf:=4;
    Nc:=4;
    llenar(1,'1111');
    llenar(2,'1001');
    llenar(3,'1201');
    llenar(4,'1111');
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
