unit frmBaseCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmBase, Vcl.ExtCtrls, udmDados,
  untMensagens, System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls;

type
  TFormBaseCadastro = class(TFormBase)
    ActionList: TActionList;
    ActVoltar: TAction;
    ActSalvar: TAction;
    ActCancelar: TAction;
    ActExcluir: TAction;
    dts: TDataSource;
    BtnVoltar: TButton;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure ActVoltarExecute(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure dtsDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    editou: boolean;
  public
    { Public declarations }
  end;

var
  FormBaseCadastro: TFormBaseCadastro;

implementation

{$R *.dfm}

procedure TFormBaseCadastro.ActCancelarExecute(Sender: TObject);
begin
  dts.DataSet.Cancel;
  Close;
end;

procedure TFormBaseCadastro.ActExcluirExecute(Sender: TObject);
begin
  if FormMensagens.Mensagem('Confirmar a exclus�o?', 'A exclus�o do registro n�o poder� ser desfeita', msgSimNao) = mrYes then
  begin  
    dts.DataSet.Cancel;
    dts.DataSet.Delete;
    FormMensagens.Mensagem('Exclus�o concluida com sucesso!', '', msgOk);
    Close;
  end;
end;

procedure TFormBaseCadastro.ActSalvarExecute(Sender: TObject);
var mensagem: string;
    i: integer;
begin
  try
    for i := 0 to dts.DataSet.FieldCount-1 do
      if (dts.DataSet.Fields[i].Required and (dts.DataSet.Fields[i].IsNull or (Trim(dts.DataSet.Fields[i].AsString) = ''))) then
        raise Exception.Create('Campo obrigat�rio, informe o valor do(a): ' + dts.DataSet.Fields[i].DisplayLabel);

    if (dts.DataSet.State = dsInsert) then
      mensagem := 'Cadastro realizado com sucesso'
    else
      mensagem := 'Altera��es realizadas com sucesso!';
    dts.DataSet.Post;
    FormMensagens.Mensagem(mensagem, '', msgOk);
    Close;
  except
    on e: exception do
      FormMensagens.Mensagem('Problema ao Salvar', e.Message, msgErro);
  end;
end;

procedure TFormBaseCadastro.ActVoltarExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormBaseCadastro.dtsDataChange(Sender: TObject; Field: TField);
begin
  editou := True;
end;

procedure TFormBaseCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
var retorno: integer;
begin
  retorno := 0;
  if (dts.DataSet.State = dsInsert) and editou then
  begin
    retorno := FormMensagens.Mensagem('Sair sem Salvar?', 
      'Existem dados em inclus�o! Cancelar o cadastro?', msgSimNao);
  end 
  else if (dts.DataSet.State = dsEdit) and editou then
  begin
    retorno := FormMensagens.Mensagem('Sair sem Salvar?', 
      'Existem dados em altera��o! Cancelar o cadastro?', msgSimNao);
  end;

  if (retorno = mrNo) then
    Abort;
  
  if (dts.DataSet.State in [dsInsert, dsEdit]) then
    dts.DataSet.Cancel;
end;

procedure TFormBaseCadastro.FormShow(Sender: TObject);
begin
  editou := False;
  if dts.DataSet.State = dsInsert then
    ActExcluir.Enabled := false
  else
    ActExcluir.Enabled := true;
end;

end.
