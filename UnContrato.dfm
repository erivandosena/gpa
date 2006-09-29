object FrmContrato: TFrmContrato
  Left = 331
  Top = 220
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Contrato'
  ClientHeight = 175
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
    Top = 64
    Width = 777
    Height = 57
  end
  object Label2: TLabel
    Left = 8
    Top = 12
    Width = 55
    Height = 16
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 96
    Width = 53
    Height = 16
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 72
    Top = 93
    Width = 80
    Height = 24
    AutoSize = True
    DataField = 'NOME_CLIENTE'
    DataSource = Ds_Cliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 72
    Width = 55
    Height = 16
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 72
    Top = 69
    Width = 80
    Height = 24
    AutoSize = True
    DataField = 'CODIGO'
    DataSource = Ds_Cliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Btn_Exibir: TBitBtn
    Left = 112
    Top = 26
    Width = 90
    Height = 25
    Cursor = crHandPoint
    Caption = '&Encontrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Btn_ExibirClick
    NumGlyphs = 4
  end
  object Btn_Fechar: TBitBtn
    Left = 355
    Top = 138
    Width = 83
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Btn_FecharClick
    NumGlyphs = 4
  end
  object MEdit_Codigo: TMaskEdit
    Left = 8
    Top = 28
    Width = 95
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
    OnExit = MEdit_CodigoExit
  end
  object BtnContrato: TBitBtn
    Left = 328
    Top = 26
    Width = 153
    Height = 25
    Cursor = crHandPoint
    Caption = '&Imprimir Contrato'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BtnContratoClick
    NumGlyphs = 4
  end
  object CBox_PJ: TCheckBox
    Left = 208
    Top = 30
    Width = 113
    Height = 17
    Caption = 'Cliente Empresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object IBQuery_Cliente: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    SQL.Strings = (
      
        'select CIDADE, CODIGO, CPF, ENDERECO, ESTADO, NOME_CLIENTE, RG, ' +
        'TE, BAIRRO, CEP, ESTADO_CIVIL, PONTO_REFERENCIA, UF, CNPJ, IE, N' +
        'OME_EMPRESARIAL, NOME_FANTASIA, NOME_RESPONSAVEL, TC from CLIENT' +
        'ES'
      'where CODIGO = '#39'0000'#39)
    Left = 168
    Top = 64
    object IBQuery_ClienteCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CLIENTES"."CIDADE"'
      Size = 25
    end
    object IBQuery_ClienteCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES"."CODIGO"'
      Size = 11
    end
    object IBQuery_ClienteCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTES"."CPF"'
    end
    object IBQuery_ClienteENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTES"."ENDERECO"'
      Size = 50
    end
    object IBQuery_ClienteESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CLIENTES"."ESTADO"'
      Size = 25
    end
    object IBQuery_ClienteNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"CLIENTES"."NOME_CLIENTE"'
      Size = 50
    end
    object IBQuery_ClienteRG: TIBStringField
      FieldName = 'RG'
      Origin = '"CLIENTES"."RG"'
      Size = 25
    end
    object IBQuery_ClienteTE: TIBStringField
      FieldName = 'TE'
      Origin = '"CLIENTES"."TE"'
      Size = 25
    end
    object IBQuery_ClienteBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CLIENTES"."BAIRRO"'
      Size = 30
    end
    object IBQuery_ClienteCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CLIENTES"."CEP"'
      Size = 10
    end
    object IBQuery_ClienteESTADO_CIVIL: TIBStringField
      FieldName = 'ESTADO_CIVIL'
      Origin = '"CLIENTES"."ESTADO_CIVIL"'
      Size = 25
    end
    object IBQuery_ClientePONTO_REFERENCIA: TIBStringField
      FieldName = 'PONTO_REFERENCIA'
      Origin = '"CLIENTES"."PONTO_REFERENCIA"'
      Size = 35
    end
    object IBQuery_ClienteUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CLIENTES"."UF"'
      Size = 2
    end
    object IBQuery_ClienteCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CLIENTES"."CNPJ"'
      Size = 18
    end
    object IBQuery_ClienteIE: TIBStringField
      FieldName = 'IE'
      Origin = '"CLIENTES"."IE"'
      Size = 11
    end
    object IBQuery_ClienteNOME_EMPRESARIAL: TIBStringField
      FieldName = 'NOME_EMPRESARIAL'
      Origin = '"CLIENTES"."NOME_EMPRESARIAL"'
      Size = 116
    end
    object IBQuery_ClienteNOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"CLIENTES"."NOME_FANTASIA"'
      Size = 56
    end
    object IBQuery_ClienteNOME_RESPONSAVEL: TIBStringField
      FieldName = 'NOME_RESPONSAVEL'
      Origin = '"CLIENTES"."NOME_RESPONSAVEL"'
      Size = 50
    end
    object IBQuery_ClienteTC: TIBStringField
      FieldName = 'TC'
      Origin = '"CLIENTES"."TC"'
      Size = 2
    end
  end
  object Ds_Cliente: TDataSource
    DataSet = IBQuery_Cliente
    Left = 168
    Top = 96
  end
end
