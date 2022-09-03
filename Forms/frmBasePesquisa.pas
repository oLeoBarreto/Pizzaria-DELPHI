unit frmBasePesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmBase, System.Actions, Vcl.ActnList,
  Vcl.ExtCtrls, udmDados, untMensagens, FireDAC.Comp.Client, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormBasePesquisa = class(TFormBase)
    ActionList: TActionList;
    ActVoltar: TAction;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActImprimir: TAction;
    dts: TDataSource;
    BtnVoltar: TButton;
    Label1: TLabel;
    BtnImprimir: TButton;
    Button1: TButton;
    Button2: TButton;
    PnlPesquisar: TPanel;
    DBGrid1: TDBGrid;
    procedure ActVoltarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    SqlInicial: string;
    procedure AbreCadastro(); virtual;
    procedure Pesquisar(sql: string); virtual;
  end;

var
  FormBasePesquisa: TFormBasePesquisa;

implementation

{$R *.dfm}

{ TFormBasePesquisa }

procedure TFormBasePesquisa.AbreCadastro;
begin
 //
end;

procedure TFormBasePesquisa.ActAlterarExecute(Sender: TObject);
begin
  if (dts.DataSet.IsEmpty) then
  begin
    FormMensagens.Mensagem('Problemas ao Alterar!', 'N�o existem dados para alterar! Selecione um registro ou realize uma pesquisa!', msgErro);
    Abort;
  end;
  dts.DataSet.Edit;
  AbreCadastro();
  dts.DataSet.Refresh;
end;

procedure TFormBasePesquisa.ActImprimirExecute(Sender: TObject);
begin
  //
end;

procedure TFormBasePesquisa.ActIncluirExecute(Sender: TObject);
begin
  dts.DataSet.Append;
  AbreCadastro();
  dts.DataSet.Refresh;
end;

procedure TFormBasePesquisa.ActVoltarExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormBasePesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Tag = 0 then
  begin
    dts.DataSet.Close;
    TFDQuery(dts.DataSet).SQL.Clear;
    TFDQuery(dts.DataSet).SQL.Add(sqlInicial)
  end;
end;

procedure TFormBasePesquisa.FormShow(Sender: TObject);
begin
  SqlInicial := TFDQuery(dts.DataSet).SQL.Text;
  dts.DataSet.Open;
end;

procedure TFormBasePesquisa.Pesquisar(sql: string);
begin
  TFDQuery(dts.DataSet).SQL.Clear;
  TFDQuery(dts.DataSet).SQL.Add(sql);
  dts.DataSet.Open;
end;

end.
