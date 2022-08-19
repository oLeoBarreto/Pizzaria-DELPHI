inherited FormMensagens: TFormMensagens
  AlphaBlend = True
  AlphaBlendValue = 220
  Caption = 'FormMensagens'
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Header: TPanel
    Height = 472
    Align = alClient
  end
  inherited Footer: TPanel
    Visible = False
  end
  inherited Content: TPanel
    Left = 56
    Top = 61
    Width = 650
    Height = 290
    Align = alNone
    Anchors = []
    Color = clBlack
    ExplicitLeft = 56
    ExplicitTop = 61
    ExplicitWidth = 650
    ExplicitHeight = 290
    object LblTitulo: TLabel
      Left = 56
      Top = 35
      Width = 76
      Height = 37
      Caption = 'Titulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblTexto: TLabel
      Left = 32
      Top = 90
      Width = 585
      Height = 100
      Caption = 
        'Mensagem Mensagem Mensagem Mensagem Mensagem Mensagem Mensagem M' +
        'ensagem Mensagem Mensagem Mensagem Mensagem Mensagem Mensagem Me' +
        'nsagem Mensagem Mensagem Mensagem Mensagem Mensagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel1: TBevel
      Left = 32
      Top = 78
      Width = 585
      Height = 17
      Shape = bsTopLine
    end
    object Btn1: TSpeedButton
      Left = 451
      Top = 220
      Width = 80
      Height = 45
      Caption = 'Sim'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Btn1Click
    end
    object Btn2: TSpeedButton
      Left = 537
      Top = 220
      Width = 80
      Height = 45
      Caption = 'N'#227'o'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Btn2Click
    end
  end
end
