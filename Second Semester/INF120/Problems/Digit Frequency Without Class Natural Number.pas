program Project1;

uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';


var
  k,v0,v1,v2,v3,v4,v5,v6,v7,v8,v9 : integer;
begin

  readln(k);

  while(k>0)do
  begin
     case (k mod 10) of
     0 : v0:=v0+1;
     1 : v1:=v1+1;
     2 : v2:=v2+1;
     3 : v3:=v3+1;
     4 : v4:=v4+1;
     5 : v5:=v5+1;
     6 : v6:=v6+1;
     7 : v7:=v7+1;
     8 : v8:=v8+1;
     9 : v9:=v9+1;
     end;
     k:= k div 10;
  end;

  if(v0>0) then writeln('0 ', v0);
  if(v1>0) then writeln('1 ', v1);
  if(v2>0) then writeln('2 ', v2);
  if(v3>0) then writeln('3 ', v3);
  if(v4>0) then writeln('4 ', v4);
  if(v5>0) then writeln('5 ', v5);
  if(v6>0) then writeln('6 ', v6);
  if(v7>0) then writeln('7 ', v7);
  if(v8>0) then writeln('8 ', v8);
  if(v9>0) then writeln('9 ', v9);


  readln;
end.
