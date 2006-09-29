object FrmRelCarteiras: TFrmRelCarteiras
  Left = 379
  Top = 220
  Width = 804
  Height = 524
  Caption = 'Pr'#233'-visualiza'#231#227'o de Impress'#227'o'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 15
  object QuickRep1: TQuickRep
    Left = 6
    Top = 8
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = FrmCarteiras.IBQuery_Titular
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 2
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      10.000000000000000000
      2970.000000000000000000
      10.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 38
      Top = 4
      Width = 359
      Height = 210
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        555.625000000000000000
        949.854166666666700000)
      BandType = rbDetail
      object QRShape1: TQRShape
        Left = 11
        Top = 0
        Width = 337
        Height = 207
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          547.687500000000000000
          29.104166666666670000
          0.000000000000000000
          891.645833333333300000)
        Pen.Style = psDot
        Shape = qrsRectangle
      end
      object QRRoundRect1: TQRRoundRect
        Left = 23
        Top = 96
        Width = 312
        Height = 100
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          264.583333333333300000
          60.854166666666670000
          254.000000000000000000
          825.500000000000000000)
        EllipseHeight = 25.000000000000000000
        EllipseWidth = 25.000000000000000000
      end
      object QRDBText3: TQRDBText
        Left = 33
        Top = 158
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          87.312500000000000000
          418.041666666666700000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmCarteiras.IBQuery_Titular
        DataField = 'CIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 214
        Top = 158
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          566.208333333333300000
          418.041666666666700000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmCarteiras.IBQuery_Titular
        DataField = 'ESTADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 75
        Top = 176
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          198.437500000000000000
          465.666666666666700000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmCarteiras.IBQuery_Titular
        DataField = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRRoundRect3: TQRRoundRect
        Left = 23
        Top = 9
        Width = 312
        Height = 82
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          216.958333333333300000
          60.854166666666670000
          23.812500000000000000
          825.500000000000000000)
        EllipseHeight = 25.000000000000000000
        EllipseWidth = 25.000000000000000000
      end
      object QRLabel2: TQRLabel
        Left = 33
        Top = 99
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          87.312500000000000000
          261.937500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Titular:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 33
        Top = 112
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          87.312500000000000000
          296.333333333333300000
          216.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmCarteiras.IBQuery_Titular
        DataField = 'NOME_CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 33
        Top = 129
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          87.312500000000000000
          341.312500000000000000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 33
        Top = 143
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          87.312500000000000000
          378.354166666666700000
          148.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FrmCarteiras.IBQuery_Titular
        DataField = 'ENDERECO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 33
        Top = 176
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          87.312500000000000000
          465.666666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'digo:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 186
        Top = 176
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          492.125000000000000000
          465.666666666666700000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'T.E.:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 184
        Top = 17
        Width = 141
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          486.833333333333300000
          44.979166666666670000
          373.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Dm.IBDS_EMPRESA
        DataField = 'NOME_FANTASIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 14
      end
      object QRDBText9: TQRDBText
        Left = 184
        Top = 36
        Width = 141
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          486.833333333333300000
          95.250000000000000000
          373.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Dm.IBDS_EMPRESA
        DataField = 'SLOGAN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 184
        Top = 52
        Width = 141
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          486.833333333333300000
          137.583333333333300000
          373.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CNPJ: 000.000.000/0001-00'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRDBText11: TQRLabel
        Left = 33
        Top = 65
        Width = 292
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          87.312500000000000000
          171.979166666666700000
          772.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'RUA S'#195'O PAULO, 1439 CENTRO CEP:62.760-000 BATURIT'#201' - CE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRDBText12: TQRLabel
        Left = 33
        Top = 77
        Width = 292
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          87.312500000000000000
          203.729166666666700000
          772.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tel.: (85) 347.1142   E-MAIL: plammor@bol.com.br'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRRoundRect4: TQRRoundRect
        Left = 32
        Top = 18
        Width = 145
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          113.770833333333300000
          84.666666666666670000
          47.625000000000000000
          383.645833333333300000)
        Pen.Width = 2
        EllipseHeight = 15.000000000000000000
        EllipseWidth = 15.000000000000000000
      end
      object QRImage1: TQRImage
        Left = 37
        Top = 22
        Width = 35
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666670000
          97.895833333333330000
          58.208333333333330000
          92.604166666666670000)
        Center = True
        Picture.Data = {
          0954474946496D6167653C02000047494638396132003200B300000000008000
          00008000808000000080800080008080808080C0C0C0FF000000FF00FFFF0000
          00FFFF00FF00FFFFFFFFFF2C00000000320032000004FEF0C9492B4527830DF2
          4156288E15C60144AA9E1FE98E074730746DD30477BCFC13A3B7A030D7E98910
          9B99909659E23620E3E4676BDE160B670D2AF501AB5970F876B8E576BD9852CC
          BE8E6B679E7A882D33B16EBBB9489A2FB163077835826F7B5121486B4285840B
          7A857A430088151B5A3475777A80980C1B21319E0C048F3581839E7C145F9E56
          64864CAF4F15A24B39293644328BA485A95B6812ADBA27494403030BC9C4BFA6
          413953009302D5D61BCA805803970CDA9241941207BDA400D6E8021BDADA281E
          E0427CC4E6E9E900D9ECDCA370000F487BF5EA016007681E264AB6B69C0B88EE
          1EC1054008BC9B65A303B9620C053E74F7F059453FF23416666C88AFA0920CDF
          E0496C9563A4BD81ECA6ED7BD24AA4CB6BF964CE24A2A4E54D9280B8AD4961AC
          1CCF90367F3A5CF66557C324C52226557A0FAAB9A9D7744ABCE8F3675696585F
          86D4F029EC48625D5D5EEAF0CFECD9A16E0572411197A1D4BA72C76DF0FAF204
          DF6B687EFCCD4A14AF3D447B07AB5BA11894B4C62888361636CC70B56385FF3A
          A610832FE6159657B1AACB4B0568D2FD1225B61BD9B4EB5D61B988E8CCFAB5ED
          D349C5F5C1FAF9F6EDD5A2614C6DEDBB380B23822F132FEE7B036539897B337F
          2DBB0B92BDCBA79FAED4C54B69EDBB9E779726FDB7F3F12E4C185BEF9C3B7A12
          1834E8C8E09E4704003B}
        Stretch = True
      end
      object QRLabel7: TQRLabel
        Left = 78
        Top = 25
        Width = 95
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          206.375000000000000000
          66.145833333333330000
          251.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Plano de Assist'#234'ncia'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 74
        Top = 37
        Width = 95
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          195.791666666666700000
          97.895833333333330000
          251.354166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Monte Mor'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 11
      end
      object QRDBText5: TQRLabel
        Left = 214
        Top = 176
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          566.208333333333300000
          465.666666666666700000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '000.000.000-00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 249
      Width = 359
      Height = 12
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        31.750000000000000000
        949.854166666666700000)
      Master = QuickRep1
      DataSet = IBQuery_Dependentes
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText8: TQRDBText
        Left = 33
        Top = 0
        Width = 98
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          87.312500000000000000
          0.000000000000000000
          259.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = IBQuery_Dependentes
        DataField = 'NOME_DEPENDENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 214
      Width = 359
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        92.604166666666670000
        949.854166666666700000)
      Master = QRSubDetail1
      ReprintOnNewPage = False
      object QRRoundRect2: TQRRoundRect
        Left = 23
        Top = 10
        Width = 312
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          60.854166666666670000
          26.458333333333330000
          825.500000000000000000)
        EllipseHeight = 15.000000000000000000
        EllipseWidth = 15.000000000000000000
      end
      object QRLabel1: TQRLabel
        Left = 142
        Top = 12
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          375.708333333333300000
          31.750000000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dependente(s):'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
    end
  end
  object DataSource2: TDataSource
    DataSet = IBQuery_Dependentes
    Left = 16
    Top = 50
  end
  object IBQuery_Dependentes: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    Active = True
    DataSource = FrmCarteiras.Ds_Titular
    SQL.Strings = (
      
        'select COD_DEPE, CODIGO, NOME_DEPENDENTE, PARENTESCO from DEPEND' +
        'E'
      'where (CODIGO = :CODIGO)'
      'order by NOME_DEPENDENTE')
    Left = 16
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 12
      end>
    object IBQuery_DependentesCOD_DEPE: TIntegerField
      FieldName = 'COD_DEPE'
      Origin = '"DEPENDE"."COD_DEPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBQuery_DependentesCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"DEPENDE"."CODIGO"'
      Size = 11
    end
    object IBQuery_DependentesNOME_DEPENDENTE: TIBStringField
      FieldName = 'NOME_DEPENDENTE'
      Origin = '"DEPENDE"."NOME_DEPENDENTE"'
      Size = 50
    end
    object IBQuery_DependentesPARENTESCO: TIBStringField
      FieldName = 'PARENTESCO'
      Origin = '"DEPENDE"."PARENTESCO"'
    end
  end
end
