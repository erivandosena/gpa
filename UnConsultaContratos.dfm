object FrmConsultaContratos: TFrmConsultaContratos
  Left = 190
  Top = 105
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cobran'#231'as'
  ClientHeight = 424
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 392
    Width = 777
    Height = 22
  end
  object Label2: TLabel
    Left = 8
    Top = 4
    Width = 74
    Height = 16
    Caption = 'Dia Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 85
    Top = 4
    Width = 67
    Height = 16
    Caption = 'Dia Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 85
    Height = 13
    Caption = 'Vencimento(s):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 144
    Top = 56
    Width = 90
    Height = 13
    Caption = 'Mensalidade(s):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 480
    Top = 394
    Width = 113
    Height = 16
    Caption = 'Mensalidade(s):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 597
    Top = 395
    Width = 60
    Height = 16
    AutoSize = True
    DataField = 'F_1'
    DataSource = Ds_Dependente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 717
    Top = 395
    Width = 60
    Height = 16
    AutoSize = True
    DataField = 'F_2'
    DataSource = Ds_Dependente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 672
    Top = 394
    Width = 41
    Height = 16
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 162
    Top = 4
    Width = 103
    Height = 16
    Caption = 'Dias a Vencer:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 268
    Top = 4
    Width = 55
    Height = 16
    Caption = 'Cidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 13
    Top = 395
    Width = 60
    Height = 16
    AutoSize = True
    DataField = 'CIDADE'
    DataSource = Ds_Titular
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Btn_Exibir: TBitBtn
    Left = 423
    Top = 17
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Exibir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Btn_ExibirClick
    NumGlyphs = 4
  end
  object Btn_Todos: TBitBtn
    Left = 514
    Top = 17
    Width = 110
    Height = 25
    Cursor = crHandPoint
    Caption = 'Exibir &Todos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Btn_TodosClick
    NumGlyphs = 4
  end
  object Btn_Imprimir: TBitBtn
    Left = 630
    Top = 17
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Im&primir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Btn_ImprimirClick
    NumGlyphs = 4
  end
  object Btn_Fechar: TBitBtn
    Left = 709
    Top = 17
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Btn_FecharClick
    NumGlyphs = 4
  end
  object MEdit_CodINI: TMaskEdit
    Left = 8
    Top = 20
    Width = 73
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
    ParentFont = False
    TabOrder = 0
    OnExit = MEdit_CodINIExit
    OnKeyPress = MEdit_CodINIKeyPress
  end
  object MEdit_CodFIM: TMaskEdit
    Left = 85
    Top = 20
    Width = 73
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
    ParentFont = False
    TabOrder = 1
    OnExit = MEdit_CodFIMExit
    OnKeyPress = MEdit_CodFIMKeyPress
  end
  object DBGrid_Titular: TDBGrid
    Left = 8
    Top = 72
    Width = 129
    Height = 313
    DataSource = Ds_Titular
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid_TitularCellClick
    OnKeyDown = DBGrid_TitularKeyDown
    OnKeyUp = DBGrid_TitularKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'DIA_VENCIMENTO'
        Visible = True
      end>
  end
  object DBGrid_Dependente: TDBGrid
    Left = 144
    Top = 72
    Width = 641
    Height = 313
    DataSource = Ds_Dependente
    FixedColor = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA_VENCIMENTO'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_MENSAL'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MES_REFERENCIA'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Width = 425
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Width = 242
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGAMENTO_MENSAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIA_VENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODELOS'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_DOC'
        Visible = True
      end>
  end
  object MEdit_DiasVencer: TMaskEdit
    Left = 162
    Top = 20
    Width = 102
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
    ParentFont = False
    TabOrder = 2
    OnExit = MEdit_DiasVencerExit
    OnKeyPress = MEdit_DiasVencerKeyPress
  end
  object MEdit_Cidade: TComboBox
    Left = 268
    Top = 20
    Width = 149
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    BevelOuter = bvRaised
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 3
    OnExit = MEdit_CidadeExit
    OnKeyPress = MEdit_CidadeKeyPress
  end
  object IBQuery_Titular: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      'select CIDADE, DIA_VENCIMENTO,'
      '(select count (CODIGO) from PLANOS where CODIGO = '#39'0000'#39')'
      'from PLANOS  where CODIGO = '#39'0000'#39
      'order by DIA_VENCIMENTO')
    Left = 88
    Top = 112
    object IBQuery_TitularDIA_VENCIMENTO: TIBStringField
      DisplayLabel = 'Dia Vencimento'
      FieldName = 'DIA_VENCIMENTO'
      Origin = '"PLANOS"."DIA_VENCIMENTO"'
      Size = 2
    end
    object IBQuery_TitularCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"PLANOS"."CIDADE"'
      Size = 25
    end
  end
  object Ds_Titular: TDataSource
    DataSet = IBQuery_Titular
    Left = 88
    Top = 144
  end
  object IBQuery_Dependente: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      
        'select BAIRRO, CIDADE, CODIGO, DATA_VENCIMENTO, DIA_VENCIMENTO, ' +
        'ENDERECO, MES_REFERENCIA, MODELOS, NOME_CLIENTE, NUMERO_DOC, NUM' +
        'ERO_PARCELA, PAGAMENTO_MENSAL,CPF, RG, TE, VALOR_MENSAL,'
      '(select count (CODIGO) from CARNE'
      'where DIA_VENCIMENTO >= '#39'00'#39' and DIA_VENCIMENTO <= '#39'00'#39'),'
      '(select sum (VALOR_MENSAL) from CARNE'
      'where DIA_VENCIMENTO >= '#39'00'#39' and DIA_VENCIMENTO <= '#39'00'#39')'
      'from CARNE, PLANOS'
      'where DIA_VENCIMENTO >= '#39'00'#39' and DIA_VENCIMENTO <= '#39'00'#39' AND'
      'DIA_VENCIMENTO = PLANOS.DIA_VENCIMENTO')
    Left = 520
    Top = 128
    object IBQuery_DependenteBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"PLANOS"."BAIRRO"'
      Size = 30
    end
    object IBQuery_DependenteCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"PLANOS"."CIDADE"'
      Size = 25
    end
    object IBQuery_DependenteCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"PLANOS"."CODIGO"'
      Size = 11
    end
    object IBQuery_DependenteDATA_VENCIMENTO: TDateTimeField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_DependenteDIA_VENCIMENTO: TIBStringField
      DisplayLabel = 'Dia Venc.'
      FieldName = 'DIA_VENCIMENTO'
      Origin = '"PLANOS"."DIA_VENCIMENTO"'
      Size = 2
    end
    object IBQuery_DependenteENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"PLANOS"."ENDERECO"'
      Size = 50
    end
    object IBQuery_DependenteMES_REFERENCIA: TIBStringField
      DisplayLabel = 'M'#234's Referente'
      FieldName = 'MES_REFERENCIA'
      Origin = '"CARNE"."MES_REFERENCIA"'
      Size = 15
    end
    object IBQuery_DependenteMODELOS: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELOS'
      Origin = '"PLANOS"."MODELOS"'
      Size = 10
    end
    object IBQuery_DependenteNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"PLANOS"."NOME_CLIENTE"'
      Size = 50
    end
    object IBQuery_DependenteNUMERO_DOC: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 22
    end
    object IBQuery_DependenteNUMERO_PARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_DependentePAGAMENTO_MENSAL: TIBStringField
      DisplayLabel = 'Pagto. Mensal'
      FieldName = 'PAGAMENTO_MENSAL'
      Origin = '"PLANOS"."PAGAMENTO_MENSAL"'
      Size = 2
    end
    object IBQuery_DependenteCPF: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF'
      Origin = '"PLANOS"."CPF"'
    end
    object IBQuery_DependenteRG: TIBStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'RG'
      Origin = '"PLANOS"."RG"'
      Size = 25
    end
    object IBQuery_DependenteTE: TIBStringField
      FieldName = 'TE'
      Origin = '"PLANOS"."TE"'
      Size = 25
    end
    object IBQuery_DependenteVALOR_MENSAL: TIBBCDField
      DisplayLabel = 'Mensalidade'
      FieldName = 'VALOR_MENSAL'
      Origin = '"PLANOS"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_DependenteF_1: TIntegerField
      FieldName = 'F_1'
      DisplayFormat = '##00'
    end
    object IBQuery_DependenteF_2: TIBBCDField
      FieldName = 'F_2'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object Ds_Dependente: TDataSource
    DataSet = IBQuery_Dependente
    Left = 520
    Top = 168
  end
end
