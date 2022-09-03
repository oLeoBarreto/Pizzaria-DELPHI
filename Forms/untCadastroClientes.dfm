inherited FormCadastroClientes: TFormCadastroClientes
  Caption = 'FormCadastroClientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Header: TPanel
    inherited Label1: TLabel
      Width = 102
      Caption = 'Clientes'
      ExplicitWidth = 102
    end
  end
  inherited Content: TPanel
    ExplicitTop = 64
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 30
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 16
      Top = 72
      Width = 60
      Height = 13
      Caption = 'Nascimento'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 216
      Top = 72
      Width = 20
      Height = 13
      Caption = 'Rua'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 168
      Top = 72
      Width = 14
      Height = 13
      Caption = 'UF'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 16
      Top = 120
      Width = 30
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 602
      Top = 120
      Width = 41
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Numero'
      FocusControl = DBEdit6
    end
    object Label8: TLabel
      Left = 16
      Top = 175
      Width = 36
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit7
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 720
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Nome'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 88
      Width = 134
      Height = 21
      DataField = 'Nascimento'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 216
      Top = 88
      Width = 520
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Rua'
      DataSource = dts
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 168
      Top = 88
      Width = 30
      Height = 21
      DataField = 'UF'
      DataSource = dts
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 139
      Width = 561
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Bairro'
      DataSource = dts
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 602
      Top = 139
      Width = 134
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Numero'
      DataSource = dts
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 16
      Top = 191
      Width = 720
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Cidade'
      DataSource = dts
      TabOrder = 6
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryClientes
  end
end
