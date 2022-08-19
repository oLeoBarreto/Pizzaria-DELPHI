unit udmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, System.ImageList, Vcl.ImgList,
  Vcl.Controls;

type
  TdmDados = class(TDataModule)
    FDConnection: TFDConnection;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    QryLogin: TFDQuery;
    QryLoginId: TFDAutoIncField;
    QryLoginNomeUsuario: TStringField;
    QryLoginSenha: TStringField;
    ImgList30px: TImageList;
    ImgList60px: TImageList;
    QryPizzas: TFDQuery;
    QryPizzasId: TFDAutoIncField;
    QryPizzasNome: TStringField;
    QryPizzasIngredientes: TStringField;
    QryPizzasPreco: TSingleField;
    QueryUsuarios: TFDQuery;
    QueryUsuariosId: TFDAutoIncField;
    QueryUsuariosNomeUsuario: TStringField;
    QueryUsuariosSenha: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
