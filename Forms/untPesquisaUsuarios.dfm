inherited FormPesquisaUsuario: TFormPesquisaUsuario
  Caption = 'FormPesquisaUsuario'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Header: TPanel
    inherited Label1: TLabel
      Caption = 'Usu'#225'rios'
    end
  end
  inherited Content: TPanel
    inherited DBGrid1: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'NomeUsuario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Senha'
          Visible = True
        end>
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QueryUsuarios
  end
end
