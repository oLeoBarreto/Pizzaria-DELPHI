unit untAbertura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmBase, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls;

type
  TFormAbertura = class(TFormBase)
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbertura: TFormAbertura;

implementation

{$R *.dfm}

procedure TFormAbertura.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TFormAbertura.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + 11;
  case ProgressBar1.Position of
    11: Label2.Caption := 'Produtos';
    31: Label2.Caption := 'Pizzas';
    51: Label2.Caption := 'Clientes';
    71: Label2.Caption := 'Poções';
    91: Label2.Caption := 'Bebidas';
  end;
  if ProgressBar1.Position = 100 then
  begin
    Timer1.Enabled := False;
    Self.Close;
  end;
end;

end.
