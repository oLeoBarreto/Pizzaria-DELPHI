inherited FormAbertura: TFormAbertura
  Caption = 'FormAbertura'
  ClientHeight = 200
  ClientWidth = 360
  Position = poScreenCenter
  OnShow = FormShow
  ExplicitWidth = 360
  ExplicitHeight = 200
  PixelsPerInch = 96
  TextHeight = 13
  inherited Header: TPanel
    Width = 360
    Height = 55
    Caption = 'Pizzaria'
    Font.Height = -19
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 360
    ExplicitHeight = 55
  end
  inherited Footer: TPanel
    Top = 170
    Width = 360
    ExplicitTop = 170
    ExplicitWidth = 360
  end
  inherited Content: TPanel
    Top = 55
    Width = 360
    Height = 115
    ExplicitTop = 55
    ExplicitWidth = 360
    ExplicitHeight = 115
    object Label1: TLabel
      Left = 19
      Top = 28
      Width = 100
      Height = 25
      Caption = 'Carregando'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 125
      Top = 28
      Width = 12
      Height = 25
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object ProgressBar1: TProgressBar
      Left = 19
      Top = 59
      Width = 321
      Height = 17
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 320
    Top = 64
  end
end
