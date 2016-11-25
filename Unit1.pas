unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, XPMan, Spin;

type
  TForm1 = class(TForm)
    mmo1: TMemo;
    tmr1: TTimer;
    xpmnfst1: TXPManifest;
    btn1: TButton;
    shp: TShape;
    btn2: TButton;
    se1: TSpinEdit;
    procedure tmr1Timer(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  t:Integer;
  jj:Integer;
implementation

{$R *.dfm}

procedure coloca(s:string);
var p:TPoint;
begin
if s='c' then
   begin
      t:=t+500;
   end;


   
if s='s' then
begin
  if t<>0 then
       begin
         Form1.mmo1.Lines.Add(IntToStr(t));
         t:=0;
       end;
  GetCursorPos(p);
  Form1.mmo1.Lines.Add('l'+inttostr(p.X)+'_'+inttostr(p.Y));
  mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
         mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
end;



if s='a' then
begin
t:=t-500;
  if t<>0 then
       begin
         Form1.mmo1.Lines.Add(IntToStr(t));
         t:=0;
       end;
  GetCursorPos(p);
  Form1.mmo1.Lines.Add('r'+inttostr(p.X)+'_'+inttostr(p.Y));
  
         mouse_event(MOUSEEVENTF_RIGHTDOWN, 0, 0, 0, 0);
         mouse_event(MOUSEEVENTF_RIGHTUP, 0, 0, 0, 0);
end;

end;

procedure TForm1.tmr1Timer(Sender: TObject);
var
keyloop, KeyResult : Integer;
begin
keyloop := 0;
repeat
KeyResult := GetAsyncKeyState(keyloop);   
if KeyResult = -32767 then
begin
case keyloop of
16: Coloca('s');
17: Coloca('c');
12: Coloca('a');
18: Coloca('a');
end;
end; //case;
inc(keyloop);
until keyloop = 255;
end;


procedure TForm1.btn1Click(Sender: TObject);
begin
if btn1.Caption='Record' then
  begin
    btn1.Caption:='Stop';
    shp.Brush.Color:=clLime;
    tmr1.Enabled:=true;
  end
else
begin
  btn1.Caption:='Record';
  shp.Brush.Color:=clRed;
  tmr1.Enabled:=false;
end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var i,j:Integer;
x:string;
p:TPoint;
begin
  jj:=1;
for j:=1 to se1.Value do
for i:=0 to (mmo1.Lines.Count-1) do
  begin
    if jj=1 then begin
    x:=mmo1.Lines[i];

    if x[1]='l' then
       begin
         p.X:=StrToInt(Copy(x,2,Pos('_',x)-2));
         p.Y:=StrToInt(Copy(x,Pos('_',x)+1,Length(x)));
         SetCursorPos(p.X,p.Y);
         mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 0);
         mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);

       end else
    if x[1]='r' then
       begin
         p.X:=StrToInt(Copy(x,2,Pos('_',x)-2));
         p.Y:=StrToInt(Copy(x,Pos('_',x)+1,Length(x)));
         SetCursorPos(p.X,p.Y);
         mouse_event(MOUSEEVENTF_RIGHTDOWN, 0, 0, 0, 0);
         mouse_event(MOUSEEVENTF_RIGHTUP, 0, 0, 0, 0);

       end else Sleep(Abs(StrToInt(x)));


  end;
  end;  
end;



procedure TForm1.FormCreate(Sender: TObject);
begin
jj:=1;
end;

end.
