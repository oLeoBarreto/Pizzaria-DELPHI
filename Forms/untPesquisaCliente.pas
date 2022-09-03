unit untPesquisaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmBasePesquisa, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, udmDados, untCadastroClientes;

type
  TFormPesquisaClientes = class(TFormBasePesquisa)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbreCadastro(); override;
  end;

var
  FormPesquisaClientes: TFormPesquisaClientes;

implementation

{$R *.dfm}
{ TFormBasePesquisa1 }

procedure TFormPesquisaClientes.AbreCadastro;
begin
  Application.CreateForm(TFormCadastroClientes, FormCadastroClientes);
  FormCadastroClientes.Show;
end;

end.
