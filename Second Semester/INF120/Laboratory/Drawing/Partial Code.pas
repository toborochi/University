procedure TForm1.Button1Click(Sender: TObject);
var i : integer;
begin

   for i := 1 to 100 do
   begin
     canvas.Rectangle(i,10,i+150,150);
   end;

  canvas.Pen.Width:=20;
  canvas.Pen.Color:=clblue;
  canvas.Rectangle(5,10,150,150);
  canvas.MoveTo(100,50);
  canvas.lineto(100,100);
end;

end.
