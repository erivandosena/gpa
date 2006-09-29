object FrmRecebimentos: TFrmRecebimentos
  Left = 200
  Top = 79
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Recebimentos'
  ClientHeight = 544
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 3
    Width = 775
    Height = 51
    Style = bsRaised
  end
  object Label9: TLabel
    Left = 162
    Top = 10
    Width = 44
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label1: TLabel
    Left = 16
    Top = 10
    Width = 69
    Height = 13
    Caption = 'Documento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label2: TLabel
    Left = 328
    Top = 10
    Width = 44
    Height = 13
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label3: TLabel
    Left = 8
    Top = 426
    Width = 87
    Height = 19
    Caption = 'Acrescimo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label4: TLabel
    Left = 296
    Top = 426
    Width = 80
    Height = 19
    Caption = 'Desconto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label5: TLabel
    Left = 575
    Top = 426
    Width = 88
    Height = 19
    Caption = 'Total Pago:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label7: TLabel
    Left = 424
    Top = 388
    Width = 92
    Height = 19
    Caption = 'Juros/Mora:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label8: TLabel
    Left = 272
    Top = 388
    Width = 47
    Height = 19
    Caption = 'Multa:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label10: TLabel
    Left = 8
    Top = 388
    Width = 132
    Height = 19
    Caption = 'Data Pagamento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label_Multa: TLabel
    Left = 322
    Top = 384
    Width = 95
    Height = 30
    AutoSize = False
    Caption = '0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label_Juros: TLabel
    Left = 519
    Top = 384
    Width = 95
    Height = 30
    AutoSize = False
    Caption = '0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 56
    Width = 74
    Height = 24
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label11: TLabel
    Left = 8
    Top = 81
    Width = 72
    Height = 24
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object DBText1: TDBText
    Left = 85
    Top = 55
    Width = 96
    Height = 29
    AutoSize = True
    DataField = 'CODIGO'
    DataSource = DS_PGParcelas
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText2: TDBText
    Left = 85
    Top = 80
    Width = 96
    Height = 29
    AutoSize = True
    DataField = 'NOME_CLIENTE'
    DataSource = DS_PGParcelas
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBText3: TDBText
    Left = 304
    Top = 55
    Width = 96
    Height = 29
    AutoSize = True
    DataField = 'CONTRATO'
    DataSource = DS_PGParcelas
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 216
    Top = 56
    Width = 85
    Height = 24
    Caption = 'Contrato:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label13: TLabel
    Left = 618
    Top = 388
    Width = 44
    Height = 19
    Caption = 'Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Label_Total: TLabel
    Left = 665
    Top = 384
    Width = 120
    Height = 30
    AutoSize = False
    Caption = '0,00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 456
    Top = 56
    Width = 114
    Height = 24
    Caption = 'Documento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object DBText4: TDBText
    Left = 574
    Top = 55
    Width = 96
    Height = 29
    AutoSize = True
    DataField = 'NUMERO_DOC'
    DataSource = DS_PGParcelas
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label15: TLabel
    Left = 8
    Top = 463
    Width = 41
    Height = 19
    Caption = 'Obs.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object Btn_Acessar: TBitBtn
    Left = 665
    Top = 22
    Width = 110
    Height = 23
    Cursor = crHandPoint
    Caption = 'Acessar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Btn_AcessarClick
    NumGlyphs = 4
  end
  object MEdit_PGCodigo: TMaskEdit
    Left = 162
    Top = 23
    Width = 162
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 15
    ParentFont = False
    TabOrder = 1
    OnExit = MEdit_PGCodigoExit
    OnKeyPress = MEdit_PGCodigoKeyPress
  end
  object MEdit_PGDoc: TMaskEdit
    Left = 16
    Top = 23
    Width = 142
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 17
    ParentFont = False
    TabOrder = 0
    OnExit = MEdit_PGDocExit
    OnKeyPress = MEdit_PGDocKeyPress
  end
  object MEdit_PGCliente: TMaskEdit
    Left = 328
    Top = 23
    Width = 330
    Height = 21
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 49
    ParentFont = False
    TabOrder = 2
    OnExit = MEdit_PGClienteExit
  end
  object DBGrid_PG_Parcelas: TDBGrid
    Left = 8
    Top = 108
    Width = 777
    Height = 269
    Color = clWhite
    DataSource = DS_PGParcelas
    FixedColor = cl3DLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid_PG_ParcelasCellClick
    OnDrawColumnCell = DBGrid_PG_ParcelasDrawColumnCell
    OnDblClick = DBGrid_PG_ParcelasDblClick
    OnExit = DBGrid_PG_ParcelasExit
    OnKeyDown = DBGrid_PG_ParcelasKeyDown
    OnKeyUp = DBGrid_PG_ParcelasKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO_PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MES_REFERENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_MENSAL'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_PAGAMENTO'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PAGO'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_DOC'
        Width = 105
        Visible = True
      end>
  end
  object MEdit_Acrescimo: TMaskEdit
    Left = 97
    Top = 421
    Width = 120
    Height = 30
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 15
    ParentFont = False
    TabOrder = 6
    Text = '0,00'
    OnExit = MEdit_AcrescimoExit
  end
  object MEdit_Desconto: TMaskEdit
    Left = 378
    Top = 421
    Width = 120
    Height = 30
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 15
    ParentFont = False
    TabOrder = 7
    Text = '0,00'
    OnExit = MEdit_DescontoExit
  end
  object MEdit_Apagar: TMaskEdit
    Left = 664
    Top = 421
    Width = 120
    Height = 30
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 15
    ParentFont = False
    TabOrder = 8
    Text = '0,00'
    OnExit = MEdit_ApagarExit
  end
  object Btn_ConfirmaPG: TBitBtn
    Left = 8
    Top = 496
    Width = 210
    Height = 35
    Cursor = crHandPoint
    Caption = 'Confirmar Pagamento'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Btn_ConfirmaPGClick
  end
  object Btn_EstornaPG: TBitBtn
    Left = 440
    Top = 496
    Width = 210
    Height = 35
    Cursor = crHandPoint
    Caption = 'Estornar Pagamento'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = Btn_EstornaPGClick
  end
  object BtnFechar: TBitBtn
    Left = 683
    Top = 496
    Width = 100
    Height = 35
    Cursor = crHandPoint
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = BtnFecharClick
  end
  object Btn_ProximoPG: TBitBtn
    Left = 224
    Top = 496
    Width = 210
    Height = 35
    Cursor = crHandPoint
    Caption = 'Pr'#243'ximo Pagamento'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = Btn_ProximoPGClick
  end
  object MEdit_DataPG: TMaskEdit
    Left = 147
    Top = 384
    Width = 124
    Height = 30
    BevelInner = bvNone
    BorderStyle = bsNone
    CharCase = ecUpperCase
    EditMask = '99/99/9999;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentColor = True
    ParentFont = False
    TabOrder = 5
    Text = '  /  /    '
    OnExit = MEdit_DataPGExit
  end
  object MEdit_Obs: TComboBox
    Left = 97
    Top = 457
    Width = 687
    Height = 30
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 22
    MaxLength = 50
    ParentFont = False
    TabOrder = 9
    Items.Strings = (
      'BONIFICA'#199#195'O'
      'TAXA')
  end
  object DS_PGParcelas: TDataSource
    DataSet = IBQuery_PGParcelas
    Left = 136
    Top = 280
  end
  object IBQuery_PGParcelas: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select * from CARNE'
      'where CODIGO = '#39'0000'#39
      'order by DATA_VENCIMENTO')
    Left = 136
    Top = 248
    object IBQuery_PGParcelasCOD_CARN: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_CARN'
      Origin = '"CARNE"."COD_CARN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBQuery_PGParcelasDATA_CONTRATO: TDateTimeField
      DisplayLabel = 'Data Contrato'
      FieldName = 'DATA_CONTRATO'
      Origin = '"CARNE"."DATA_CONTRATO"'
      Visible = False
    end
    object IBQuery_PGParcelasCONTRATO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Contrato'
      FieldName = 'CONTRATO'
      Origin = '"CARNE"."CONTRATO"'
      Required = True
      Visible = False
      DisplayFormat = '####0000'
    end
    object IBQuery_PGParcelasNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente/Empresa'
      FieldName = 'NOME_CLIENTE'
      Origin = '"CARNE"."NOME_CLIENTE"'
      Visible = False
      Size = 50
    end
    object IBQuery_PGParcelasCODIGO: TIBStringField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'CODIGO'
      Origin = '"CARNE"."CODIGO"'
      Visible = False
      Size = 11
    end
    object IBQuery_PGParcelasRG: TIBStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'RG'
      Origin = '"CARNE"."RG"'
      Visible = False
      Size = 25
    end
    object IBQuery_PGParcelasCPF: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF'
      Origin = '"CARNE"."CPF"'
    end
    object IBQuery_PGParcelasTE: TIBStringField
      FieldName = 'TE'
      Origin = '"CARNE"."TE"'
      Visible = False
      Size = 25
    end
    object IBQuery_PGParcelasENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"CARNE"."ENDERECO"'
      Visible = False
      Size = 50
    end
    object IBQuery_PGParcelasBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"CARNE"."BAIRRO"'
      Visible = False
      Size = 30
    end
    object IBQuery_PGParcelasCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"CARNE"."CIDADE"'
      Visible = False
      Size = 25
    end
    object IBQuery_PGParcelasCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CARNE"."CEP"'
      Visible = False
      Size = 10
    end
    object IBQuery_PGParcelasESTADO: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = '"CARNE"."ESTADO"'
      Visible = False
      Size = 25
    end
    object IBQuery_PGParcelasUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CARNE"."UF"'
      Visible = False
      Size = 2
    end
    object IBQuery_PGParcelasNUMERO_PARCELA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Parcela'
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_PGParcelasMES_REFERENCIA: TIBStringField
      DisplayLabel = 'Referente'
      FieldName = 'MES_REFERENCIA'
      Origin = '"CARNE"."MES_REFERENCIA"'
      Size = 15
    end
    object IBQuery_PGParcelasDATA_VENCIMENTO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_PGParcelasVALOR_MENSAL: TIBBCDField
      DisplayLabel = 'Valor Mensalidade'
      FieldName = 'VALOR_MENSAL'
      Origin = '"CARNE"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_PGParcelasDATA_PAGAMENTO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Pagamento'
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARNE"."DATA_PAGAMENTO"'
    end
    object IBQuery_PGParcelasVALOR_PAGO: TIBBCDField
      DisplayLabel = 'Valor Pago'
      FieldName = 'VALOR_PAGO'
      Origin = '"CARNE"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_PGParcelasOBS: TIBStringField
      DisplayLabel = 'Observa'#231#227'o:'
      FieldName = 'OBS'
      Origin = '"CARNE"."OBS"'
      Size = 50
    end
    object IBQuery_PGParcelasNUMERO_DOC: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'N'#186' do Documento'
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 22
    end
    object IBQuery_PGParcelasSITUACAO: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      Origin = '"CARNE"."SITUACAO"'
      Visible = False
      Size = 1
    end
    object IBQuery_PGParcelasANO_BASE: TIBStringField
      DisplayLabel = 'Ano Base'
      FieldName = 'ANO_BASE'
      Origin = '"CARNE"."ANO_BASE"'
      Visible = False
      Size = 4
    end
    object IBQuery_PGParcelasUSUARIO: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"CARNE"."USUARIO"'
      Visible = False
    end
    object IBQuery_PGParcelasPAGAMENTO_MENSAL: TIBStringField
      FieldName = 'PAGAMENTO_MENSAL'
      Origin = '"CARNE"."PAGAMENTO_MENSAL"'
      Visible = False
      Size = 2
    end
    object IBQuery_PGParcelasDIA_VENCIMENTO: TIBStringField
      FieldName = 'DIA_VENCIMENTO'
      Origin = '"CARNE"."DIA_VENCIMENTO"'
      Visible = False
      Size = 2
    end
    object IBQuery_PGParcelasMODELOS: TIBStringField
      FieldName = 'MODELOS'
      Origin = '"CARNE"."MODELOS"'
      Visible = False
      Size = 10
    end
  end
  object DataSource_Carne: TDataSource
    DataSet = Dm.IBDS_CLIENTES
    Left = 216
    Top = 272
  end
end
