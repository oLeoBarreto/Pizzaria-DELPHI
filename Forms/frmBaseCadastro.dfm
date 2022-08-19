inherited FormBaseCadastro: TFormBaseCadastro
  Caption = 'FormBaseCadastro'
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Header: TPanel
    object Label1: TLabel
      Left = 82
      Top = 15
      Width = 115
      Height = 37
      Caption = 'Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnVoltar: TButton
      Left = 0
      Top = -5
      Width = 81
      Height = 73
      Action = ActVoltar
      Images = dmDados.ImgList60px
      Style = bsCommandLink
      TabOrder = 0
    end
    object Button1: TButton
      Left = 693
      Top = -5
      Width = 70
      Height = 73
      Action = ActExcluir
      Images = dmDados.ImgList60px
      Style = bsCommandLink
      TabOrder = 1
    end
    object Button2: TButton
      Left = 621
      Top = -5
      Width = 70
      Height = 73
      Action = ActCancelar
      Images = dmDados.ImgList60px
      Style = bsCommandLink
      TabOrder = 2
    end
    object Button3: TButton
      Left = 550
      Top = -5
      Width = 70
      Height = 73
      Action = ActSalvar
      Images = dmDados.ImgList60px
      Style = bsCommandLink
      TabOrder = 3
    end
  end
  object ActionList: TActionList
    Images = dmDados.ImgList60px
    Left = 712
    Top = 80
    object ActVoltar: TAction
      Caption = 'Voltar'
      ImageIndex = 1
      OnExecute = ActVoltarExecute
    end
    object ActSalvar: TAction
      Caption = 'Salvar'
      ImageIndex = 6
      OnExecute = ActSalvarExecute
    end
    object ActCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 2
      OnExecute = ActCancelarExecute
    end
    object ActExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 5
      OnExecute = ActExcluirExecute
    end
  end
  object dts: TDataSource
    OnDataChange = dtsDataChange
    Left = 648
    Top = 80
  end
end
