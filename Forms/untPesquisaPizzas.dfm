inherited FormPesquisaPizzas: TFormPesquisaPizzas
  Caption = 'FormPesquisaPizzas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Header: TPanel
    inherited Label1: TLabel
      Width = 78
      Caption = 'Pizzas'
      ExplicitWidth = 78
    end
  end
  inherited Content: TPanel
    inherited DBGrid1: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ingredientes'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Preco'
          Visible = True
        end>
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryPizzas
  end
end
