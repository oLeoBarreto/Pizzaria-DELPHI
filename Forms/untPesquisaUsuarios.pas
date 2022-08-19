unit untPesquisaUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmBasePesquisa, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, udmDados, untCadastroUsuario;

type
  TFormPesquisaUsuario = class(TFormBasePesquisa)
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure AbreCadastro(); override;
  end;

var
  FormPesquisaUsuario: TFormPesquisaUsuario;

implementation

{$R *.dfm}

{ TFormPesquisaUsuario }

procedure TFormPesquisaUsuario.AbreCadastro;
begin
  Application.CreateForm(TFormCadastroUsuario, FormCadastroUsuario);
  FormCadastroUsuario.Show;
end;

end.
