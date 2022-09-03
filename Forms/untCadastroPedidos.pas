unit untCadastroPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmBaseCadastro, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, udmDados,
  Vcl.DBCtrls, Vcl.Mask;

type
  TFormCadastroPedidos = class(TFormBaseCadastro)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    CBXNomePizza: TComboBox;
    CBXNomeCliente: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPedidos: TFormCadastroPedidos;

implementation

{$R *.dfm}

procedure TFormCadastroPedidos.ActSalvarExecute(Sender: TObject);
begin
  if (CBXNomePizza.Text <> '') and (CBXNomeCliente.Text <> '') then
  begin
    with dmDados do
    begin
      QryPizzas.Open;
      QryPizzas.Locate('Nome', CBXNomePizza.Text, []);
      dmDados.QryPedidosPizzaID.Value := QryPizzasId.Value;

      QryClientes.Open;
      QryClientes.Locate('Nome', CBXNomeCliente.Text, []);
      dmDados.QryPedidosClienteID.Value := QryClientesId.Value;

      QryPizzas.Close;
      QryClientes.Close;
    end;
  end;

  inherited;
end;

procedure TFormCadastroPedidos.FormShow(Sender: TObject);
begin
  inherited;

  CBXNomePizza.Clear;
  CBXNomeCliente.Clear;
  with dmDados do
  begin
    QryPizzas.Open;
    QryPizzas.First;
    QryClientes.Open;
    QryClientes.First;

    while not QryPizzas.Eof do
    begin
      CBXNomePizza.Items.Add(QryPizzasNome.Text);
      QryPizzas.Next;
    end;
    QryPizzas.Close;

    while not QryClientes.Eof do
    begin
      CBXNomeCliente.Items.Add(QryClientesNome.Text);
      QryClientes.Next;
    end;
    QryClientes.Close;

    if dts.DataSet.State = dsEdit then
    begin
      CBXNomePizza.Text := QryPizzasNome.Text;
      CBXNomeCliente.Text := QryClientesNome.Text;
    end;
  end;
end;

end.
