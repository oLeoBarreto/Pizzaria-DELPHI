inherited FormBasePesquisa: TFormBasePesquisa
  Caption = 'FormBasePesquisa'
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Header: TPanel
    DesignSize = (
      763
      70)
    object Label1: TLabel
      Left = 78
      Top = 14
      Width = 111
      Height = 37
      Caption = 'Pesquisa'
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
      Width = 73
      Height = 64
      Action = ActVoltar
      Images = dmDados.ImgList60px
      Style = bsCommandLink
      TabOrder = 0
    end
    object BtnImprimir: TButton
      Left = 688
      Top = 0
      Width = 70
      Height = 64
      Action = ActImprimir
      Anchors = [akTop, akRight]
      Images = dmDados.ImgList60px
      Style = bsCommandLink
      TabOrder = 1
    end
    object Button1: TButton
      Left = 624
      Top = 0
      Width = 70
      Height = 64
      Action = ActAlterar
      Anchors = [akTop, akRight]
      Images = dmDados.ImgList60px
      Style = bsCommandLink
      TabOrder = 2
    end
    object Button2: TButton
      Left = 556
      Top = -8
      Width = 70
      Height = 72
      Action = ActIncluir
      Anchors = [akTop, akRight]
      Images = dmDados.ImgList60px
      Style = bsCommandLink
      TabOrder = 3
    end
  end
  inherited Content: TPanel
    object PnlPesquisar: TPanel
      Left = 0
      Top = 0
      Width = 763
      Height = 45
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 45
      Width = 763
      Height = 357
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = dts
      DrawingStyle = gdsGradient
      GradientEndColor = clYellow
      GradientStartColor = 5755391
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
    end
  end
  object ActionList: TActionList
    Images = dmDados.ImgList60px
    Left = 712
    Top = 80
    object ActVoltar: TAction
      Caption = 'Voltar'
      ImageIndex = 1
      ShortCut = 8219
      OnExecute = ActVoltarExecute
    end
    object ActIncluir: TAction
      Caption = 'Incluir'
      ImageIndex = 0
      ShortCut = 113
      OnExecute = ActIncluirExecute
    end
    object ActAlterar: TAction
      Caption = 'Alterar'
      ImageIndex = 4
      ShortCut = 114
      OnExecute = ActAlterarExecute
    end
    object ActImprimir: TAction
      Caption = 'Imprimir'
      ImageIndex = 3
      ShortCut = 115
      OnExecute = ActImprimirExecute
    end
  end
  object dts: TDataSource
    Left = 648
    Top = 78
  end
end
