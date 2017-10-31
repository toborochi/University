procedure TForm1.Button1Click(Sender: TObject);
begin
  canvas.Pen.Width:=20;
  canvas.Pen.Color:=clblue;
  canvas.Rectangle(5,10,150,150);
  canvas.MoveTo(100,50);
  canvas.lineto(100,100);



end;

end.
