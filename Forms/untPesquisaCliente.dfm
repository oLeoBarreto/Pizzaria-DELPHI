inherited FormPesquisaClientes: TFormPesquisaClientes
  Caption = 'FormPesquisaClientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Header: TPanel
    inherited Label1: TLabel
      Width = 208
      Caption = 'Pesquisa Cliente'
      ExplicitWidth = 208
    end
  end
  inherited Content: TPanel
    inherited DBGrid1: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'Id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nascimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Rua'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Visible = True
        end>
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryClientes
  end
end
