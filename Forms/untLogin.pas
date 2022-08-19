unit untLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmBase, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls, udmDados, untMensagens;

type
  TFormLogin = class(TFormBase)
    LblTitulo: TLabel;
    Bevel1: TBevel;
    EdtNomeUsuario: TEdit;
    Label2: TLabel;
    EdtSenha: TEdit;
    Label3: TLabel;
    BtnEntrar: TSpeedButton;
    BtnCancelar: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnEntrarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    logou: boolean;
    nVezes: integer;
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

procedure TFormLogin.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormLogin.BtnEntrarClick(Sender: TObject);
begin
  with dmDados do
  begin
    QryLogin.Close;
    QryLogin.ParamByName('Nome').Value := EdtNomeUsuario.Text;
    QryLogin.ParamByName('Senha').Value := EdtSenha.Text;
    QryLogin.Open;
    if (QryLogin.IsEmpty) then
    begin
      dec(nVezes);
      FormMensagens.Mensagem('Acesso Negado!', 'Nome de Usuário e/ou Senha Inválido!' + #13 + 'Número de tentativas restantes: ' + IntToStr(nVezes), msgErro);
      if (nVezes = 0) then
        BtnCancelar.Click;
    end
    else
    begin
      logou := true;
      QryLogin.Close;
      Close;
    end;
  end;
end;

procedure TFormLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not logou then
    Application.Terminate;
end;

procedure TFormLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BtnEntrar.Click;
end;

procedure TFormLogin.FormShow(Sender: TObject);
begin
  logou := false;
  nVezes := 3;
  Content.Left := (Self.ClientWidth - Content.Width) div 2;
  Content.Top := (Self.Height - Content.Height) div 2;
end;

end.
