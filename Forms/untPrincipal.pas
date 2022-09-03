unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmBase, Vcl.ExtCtrls, Vcl.Buttons,
  untMensagens, udmDados, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TFormPrincipal = class(TFormBase)
    BtnFechar: TButton;
    BtnMinimizar: TButton;
    ToolBar1: TToolBar;
    BtnPesquisas: TToolButton;
    PopMenuPesquisas: TPopupMenu;
    BtnPesquisas_Pizzas: TMenuItem;
    BtnPesquisa_Usuarios: TMenuItem;
    Clientes: TMenuItem;
    Pedidos: TMenuItem;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnMinimizarClick(Sender: TObject);
    procedure BtnCadastro_PizzasClick(Sender: TObject);
    procedure BtnPesquisas_PizzasClick(Sender: TObject);
    procedure BtnCadastros_UsuariosClick(Sender: TObject);
    procedure BtnPesquisa_UsuariosClick(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure PedidosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses
  untCadastroPizzas, untPesquisaPizzas, untCadastroUsuario,
  untPesquisaUsuarios, untPesquisaCliente, untPesquisaPedidos;

{$R *.dfm}

procedure TFormPrincipal.BtnCadastro_PizzasClick(Sender: TObject);
begin
  Application.CreateForm(TFormCadastroPizzas, FormCadastroPizzas);
  FormCadastroPizzas.Show;
end;

procedure TFormPrincipal.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipal.BtnMinimizarClick(Sender: TObject);
begin
  Self.WindowState := wsMinimized;
end;

procedure TFormPrincipal.BtnPesquisas_PizzasClick(Sender: TObject);
begin
  Application.CreateForm(TFormPesquisaPizzas, FormPesquisaPizzas);
  FormPesquisaPizzas.Show;
end;

procedure TFormPrincipal.BtnPesquisa_UsuariosClick(Sender: TObject);
begin
  Application.CreateForm(TFormPesquisaUsuario, FormPesquisaUsuario);
  FormPesquisaUsuario.Show;
end;

procedure TFormPrincipal.ClientesClick(Sender: TObject);
begin
  Application.CreateForm(TFormPesquisaClientes, FormPesquisaClientes);
  FormPesquisaClientes.Show;
end;

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FormMensagens.mensagem('Tem certeza que deseja fechar a aplicação?', '',
    msgSimNao) = mrNo then
    Abort;
end;

procedure TFormPrincipal.PedidosClick(Sender: TObject);
begin
   Application.CreateForm(TFormPesquisaPedidos, FormPesquisaPedidos);
  FormPesquisaPedidos.Show;
end;

procedure TFormPrincipal.BtnCadastros_UsuariosClick(Sender: TObject);
begin
  Application.CreateForm(TFormCadastroUsuario, FormCadastroUsuario);
  FormCadastroUsuario.Show;
end;

end.
