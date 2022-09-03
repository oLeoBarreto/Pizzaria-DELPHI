inherited FormPesquisaPedidos: TFormPesquisaPedidos
  Caption = 'FormPesquisaPedidos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Header: TPanel
    inherited Label1: TLabel
      Width = 220
      Caption = 'Pesquisa Pedidos'
      ExplicitWidth = 220
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
          FieldName = 'Preco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomePizza'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ingredientes'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCliente'
          Visible = True
        end>
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryPedidos
  end
  object Report: TfrxReport
    Version = '6.9.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44805.719608576400000000
    ReportOptions.LastChange = 44806.671184756900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 584
    Top = 80
    Datasets = <
      item
        DataSet = ReportDataset
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 124.724490000000000000
        Top = 120.944960000000000000
        Width = 718.110700000000000000
        DataSet = ReportDataset
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1NomeCliente: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 26.456710000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'NomeCliente'
          DataSet = ReportDataset
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NomeCliente"]')
        end
        object frxDBDataset1Preco: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 90.708720000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Preco'
          DataSet = ReportDataset
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Preco"]')
        end
        object frxDBDataset1NomePizza: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 64.252010000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataField = 'NomePizza'
          DataSet = ReportDataset
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NomePizza"]')
        end
        object frxDBDataset1Id: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 638.740570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Id'
          DataSet = ReportDataset
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Id"]')
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome Cliente:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 64.252010000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pedido:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pre'#231'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#176' Pedido:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 691.653990000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094620000000000000
          Width = 302.362400000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Rel'#225'torio de Pedidos')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 619.842920000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
    end
  end
  object ReportDataset: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dts
    BCDToCurrency = False
    Left = 508
    Top = 80
  end
end
