inherited FormCadastroPedidos: TFormCadastroPedidos
  Caption = 'FormCadastroPedidos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Header: TPanel
    inherited Label1: TLabel
      Width = 102
      Caption = 'Pedidos'
      ExplicitWidth = 102
    end
  end
  inherited Content: TPanel
    object Label2: TLabel
      Left = 24
      Top = 16
      Width = 55
      Height = 13
      Caption = 'NomePizza'
    end
    object Label3: TLabel
      Left = 24
      Top = 72
      Width = 66
      Height = 13
      Caption = 'NomeCliente'
    end
    object Label4: TLabel
      Left = 24
      Top = 128
      Width = 64
      Height = 13
      Caption = 'PrecoPedido'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 144
      Width = 134
      Height = 21
      DataField = 'Preco'
      DataSource = dts
      TabOrder = 0
    end
  end
  object CBXNomePizza: TComboBox [3]
    Left = 24
    Top = 105
    Width = 721
    Height = 21
    Style = csDropDownList
    TabOrder = 3
  end
  object CBXNomeCliente: TComboBox [4]
    Left = 24
    Top = 161
    Width = 721
    Height = 21
    Style = csDropDownList
    TabOrder = 4
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryPedidos
  end
end
