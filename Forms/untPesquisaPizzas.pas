unit untPesquisaPizzas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmBasePesquisa, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, udmDados, untCadastroPizzas;

type
  TFormPesquisaPizzas = class(TFormBasePesquisa)
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure AbreCadastro(); override;
  end;

var
  FormPesquisaPizzas: TFormPesquisaPizzas;

implementation

{$R *.dfm}

{ TFormPesquisaPizzas }

procedure TFormPesquisaPizzas.AbreCadastro;
begin
  Application.CreateForm(TFormCadastroPizzas, FormCadastroPizzas);
  FormCadastroPizzas.Show;
end;

end.