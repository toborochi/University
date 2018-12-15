unit PProgram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label2: TLabel;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses math;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

var a,b,sum  : Double;

begin
  a:= strtofloat(  edit1.Text  );
  b:= strtofloat(  edit2.Text  );
  sum:= a+b;
  Label1.Caption:=floattostr(sum);



end;

procedure TForm1.Button2Click(Sender: TObject);
var a,b,prod : double;
begin
  a:=strtofloat(edit1.Text);
  b:=strtofloat(edit2.Text);
  prod:=a*b;
  Label1.Caption:=floattostr(prod);
end;

procedure TForm1.Button3Click(Sender: TObject);
var a,b,res : double;
begin
  a:=strtofloat(edit1.Text);
  b:=strtofloat(edit2.Text);
  res:=a-b;
  Label1.Caption:=floattostr(res);

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  a,b,co : double;
begin
  a:=strtofloat(edit1.Text);
  b:=strtofloat(edit2.Text);

  if b=0 then  Label1.Caption:= 'Error' else
  begin
    co:= trunc((a/b) * 100000000)/100000000;
    Label1.Caption:= floattostr(co) ;
  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   edit1.Text:='0';
   edit2.Text:='0';
   label1.Caption:='0';
end;

procedure TForm1.Button6Click(Sender: TObject);
var x,n,answer : double;
begin
   x:=strtofloat(edit1.Text);
   n:=strtofloat(edit2.Text);
   answer:=power(x,n);

   if ((x=0) and (n=0)) then Label1.Caption:='Error' else Label1.Caption:=floattostr(answer);
end;

end.
