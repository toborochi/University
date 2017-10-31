unit PProgram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 i,sep  : integer;
 col : boolean;
begin

    sep:= strtoint(edit1.Text);

    canvas.Pen.Color:=clred;

    col:=true;

    for i := 300 downto 1 do
    begin
     canvas.MoveTo(i,0);

     if i mod sep = 0 then
     begin

     if col=true then
     begin
      canvas.Pen.Color:=clred;
      col:=false;
     end else
     begin
      canvas.Pen.Color:=clblue;
      col:=true;
     end;

     canvas.lineto(0,300-i);
     end;

    end;
end;

end.
