object FrmClientes: TFrmClientes
  Left = 1
  Top = 38
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Clientes (Pessoa F'#237'sica / Pessoa Jur'#237'dica)'
  ClientHeight = 484
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 46
    Width = 649
    Height = 367
    Cursor = crHandPoint
    ActivePage = TabSheet4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    OnChanging = PageControl1Changing
    object TabSheet4: TTabSheet
      Caption = 'Dados da Empresa'
      ImageIndex = 3
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 336
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label34: TLabel
          Left = 8
          Top = 6
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label35: TLabel
          Left = 193
          Top = 6
          Width = 85
          Height = 13
          Caption = 'Nome Empresarial'
          FocusControl = DBEdit13
        end
        object Label40: TLabel
          Left = 8
          Top = 126
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit19
        end
        object Label41: TLabel
          Left = 8
          Top = 166
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit20
        end
        object Label42: TLabel
          Left = 211
          Top = 166
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit21
        end
        object Label43: TLabel
          Left = 381
          Top = 166
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit22
        end
        object Label44: TLabel
          Left = 469
          Top = 166
          Width = 33
          Height = 13
          Caption = 'Estado'
          FocusControl = DBEdit23
        end
        object Label45: TLabel
          Left = 589
          Top = 166
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label46: TLabel
          Left = 153
          Top = 246
          Width = 75
          Height = 13
          Caption = 'Dia Vencimento'
        end
        object Label47: TLabel
          Left = 8
          Top = 282
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object DBText11: TDBText
          Left = 8
          Top = 20
          Width = 80
          Height = 19
          Alignment = taCenter
          Color = clWhite
          DataField = 'CODIGO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label48: TLabel
          Left = 98
          Top = 6
          Width = 68
          Height = 13
          Caption = 'Data Cadastro'
          FocusControl = DBEdit24
        end
        object Label50: TLabel
          Left = 8
          Top = 86
          Width = 39
          Height = 13
          Caption = 'C.N.P.J.'
          FocusControl = DBEdit25
        end
        object Label51: TLabel
          Left = 161
          Top = 86
          Width = 16
          Height = 13
          Caption = 'I.E.'
          FocusControl = DBEdit26
        end
        object Label53: TLabel
          Left = 8
          Top = 246
          Width = 91
          Height = 13
          Caption = 'Pagamento Mensal'
        end
        object Label54: TLabel
          Left = 283
          Top = 246
          Width = 35
          Height = 13
          Caption = 'Modelo'
        end
        object Label55: TLabel
          Left = 380
          Top = 126
          Width = 98
          Height = 13
          Caption = 'Ponto de Refer'#234'ncia'
          FocusControl = DBEdit28
        end
        object Label56: TLabel
          Left = 425
          Top = 246
          Width = 54
          Height = 13
          Caption = 'Promotor(a)'
        end
        object DBText12: TDBText
          Left = 574
          Top = 262
          Width = 60
          Height = 16
          DataField = 'CODIGO_P'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label58: TLabel
          Left = 574
          Top = 246
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label60: TLabel
          Left = 83
          Top = 259
          Width = 17
          Height = 22
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 8
          Top = 46
          Width = 86
          Height = 13
          Caption = 'Nome de Fantasia'
          FocusControl = DBEdit14
        end
        object Label37: TLabel
          Left = 290
          Top = 86
          Width = 154
          Height = 13
          Caption = 'Nome do Respons'#225'vel (Contato)'
          FocusControl = DBEdit27
        end
        object Label38: TLabel
          Left = 8
          Top = 206
          Width = 75
          Height = 13
          Caption = '(DDD) Telefone'
          FocusControl = DBEdit29
        end
        object Label49: TLabel
          Left = 131
          Top = 206
          Width = 105
          Height = 13
          Caption = '(DDD) N'#250'mero do Fax'
          FocusControl = DBEdit30
        end
        object Label52: TLabel
          Left = 253
          Top = 206
          Width = 28
          Height = 13
          Caption = 'E-mail'
          FocusControl = DBEdit31
        end
        object Label66: TLabel
          Left = 380
          Top = 46
          Width = 90
          Height = 13
          Caption = 'Ramo de Atividade'
          FocusControl = DBEdit32
        end
        object DBEdit13: TDBEdit
          Left = 193
          Top = 20
          Width = 438
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NOME_EMPRESARIAL'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit19: TDBEdit
          Left = 8
          Top = 140
          Width = 365
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit20: TDBEdit
          Left = 8
          Top = 180
          Width = 193
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnExit = DBEdit20Exit
        end
        object DBEdit21: TDBEdit
          Left = 211
          Top = 180
          Width = 161
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnExit = DBEdit21Exit
        end
        object DBEdit22: TDBEdit
          Left = 381
          Top = 180
          Width = 78
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit23: TDBEdit
          Left = 469
          Top = 180
          Width = 111
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ESTADO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object DBComboBox8: TDBComboBox
          Left = 589
          Top = 180
          Width = 41
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            'AC'
            'AL '
            'AM'
            'AP'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA '
            'MG'
            'MS'
            'MT'
            'PA'
            'PB'
            'PE'
            'PI'
            'PR'
            'RJ'
            'RN'
            'RO'
            'RR'
            'RS'
            'SC'
            'SE'
            'SP'
            'TO')
          ParentFont = False
          TabOrder = 14
          OnChange = DBComboBox6Change
        end
        object DBComboBox10: TDBComboBox
          Left = 153
          Top = 260
          Width = 80
          Height = 21
          Hint = 'de cada m'#234's.'
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'DIA_VENCIMENTO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            '05'
            '10'
            '15'
            '20'
            '25'
            '30')
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          OnClick = DBComboBox10Click
          OnExit = DBComboBox9Exit
          OnKeyPress = DBComboBox9KeyPress
        end
        object DBMemo1: TDBMemo
          Left = 8
          Top = 296
          Width = 623
          Height = 29
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'OBS'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnEnter = DBMemo1Enter
          OnExit = DBMemo1Exit
          OnKeyPress = DBMemo_OBSKeyPress
        end
        object DBEdit24: TDBEdit
          Left = 98
          Top = 21
          Width = 83
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DATA_CADASTRO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnEnter = DBEdit24Enter
        end
        object DBDateEdit_DCE: TDBDateEdit
          Left = 98
          Top = 20
          Width = 87
          Height = 21
          DataField = 'DATA_CADASTRO'
          DataSource = Dm.Ds_CLIENTES
          ClickKey = 32776
          DialogTitle = 'Selecione a Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 22
          YearDigits = dyFour
          Visible = False
          OnExit = DBDateEdit_DCEExit
        end
        object DBEdit25: TDBEdit
          Left = 8
          Top = 100
          Width = 145
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CNPJ'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit26: TDBEdit
          Left = 161
          Top = 100
          Width = 120
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'IE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBComboBox13: TDBComboBox
          Left = 8
          Top = 260
          Width = 70
          Height = 21
          Hint = 'do sal'#225'rio m'#237'nimo.'
          Style = csDropDownList
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'PAGAMENTO_MENSAL'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            '5'
            '6'
            '9')
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
          OnClick = DBComboBox13Click
        end
        object DBComboBox14: TDBComboBox
          Left = 283
          Top = 260
          Width = 92
          Height = 21
          Style = csDropDownList
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'MODELOS'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            'COM VISOR'
            'LUXO'
            'STAND')
          ParentFont = False
          TabOrder = 20
          OnClick = DBComboBox14Click
        end
        object DBEdit28: TDBEdit
          Left = 380
          Top = 140
          Width = 251
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'PONTO_REFERENCIA'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object DBComboBox16: TDBComboBox
          Left = 425
          Top = 260
          Width = 141
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'APELIDO_PROMOTOR'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentFont = False
          TabOrder = 21
          OnClick = DBComboBox16Click
          OnExit = DBComboBox5Exit
          OnKeyPress = DBComboBox5KeyPress
        end
        object DBEdit14: TDBEdit
          Left = 8
          Top = 60
          Width = 365
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NOME_FANTASIA'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit27: TDBEdit
          Left = 290
          Top = 100
          Width = 341
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NOME_RESPONSAVEL'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit29: TDBEdit
          Left = 8
          Top = 220
          Width = 114
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'TELEFONE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit30: TDBEdit
          Left = 131
          Top = 220
          Width = 114
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'FAX'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object DBEdit31: TDBEdit
          Left = 253
          Top = 220
          Width = 377
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecLowerCase
          DataField = 'EMAIL'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object DBEdit32: TDBEdit
          Left = 380
          Top = 60
          Width = 251
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'RAMO_ATIVIDADE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados Usu'#225'rios Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 336
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Bevel3: TBevel
          Left = 8
          Top = 8
          Width = 625
          Height = 41
        end
        object DBText4: TDBText
          Left = 72
          Top = 14
          Width = 553
          Height = 27
          DataField = 'NOME_FANTASIA'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label_NomeCliente1: TLabel
          Left = 16
          Top = 20
          Width = 53
          Height = 13
          Caption = 'Empresa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 648
          Top = 32
          Width = 60
          Height = 16
          AutoSize = True
          DataField = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label61: TLabel
          Left = 648
          Top = 16
          Width = 28
          Height = 13
          Caption = 'CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 120
          Width = 65
          Height = 13
          Caption = 'C'#243'digo Titular'
        end
        object Label25: TLabel
          Left = 98
          Top = 120
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label27: TLabel
          Left = 8
          Top = 160
          Width = 126
          Height = 13
          Caption = 'Nome do Usu'#225'rio Empresa'
          FocusControl = DBEdit15
        end
        object DBText2: TDBText
          Left = 8
          Top = 136
          Width = 80
          Height = 19
          Alignment = taCenter
          Color = clWhite
          DataField = 'CODIGO'
          DataSource = Dm.Ds_DEPENDE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object DBText5: TDBText
          Left = 96
          Top = 136
          Width = 80
          Height = 19
          Alignment = taCenter
          Color = clWhite
          DataField = 'COD_DEPE'
          DataSource = Dm.Ds_DEPENDE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label_Dependentes: TLabel
          Left = 8
          Top = 55
          Width = 85
          Height = 13
          Caption = 'Usu'#225'rios Empresa'
        end
        object DBEdit15: TDBEdit
          Left = 8
          Top = 176
          Width = 414
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NOME_DEPENDENTE'
          DataSource = Dm.Ds_DEPENDE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit15Exit
        end
        object DBGrid_Dependentes: TDBGrid
          Left = 8
          Top = 72
          Width = 625
          Height = 41
          DataSource = DS_Dependentes
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
          Visible = False
          OnCellClick = DBGrid_DependentesCellClick
          OnKeyDown = DBGrid_DependentesKeyDown
          OnKeyUp = DBGrid_DependentesKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_DEPE'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_DEPENDENTE'
              Width = 327
              Visible = True
            end>
        end
        object BtnDep_Novo: TBitBtn
          Left = 8
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Alterar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BtnDep_NovoClick
        end
        object BtnDep_Salvar: TBitBtn
          Left = 78
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Salvar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = BtnDep_SalvarClick
        end
        object BtnDep_Excluir: TBitBtn
          Left = 148
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Excluir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = BtnDep_ExcluirClick
        end
        object BtnDep_Cancelar: TBitBtn
          Left = 218
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Cancelar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = BtnDep_CancelarClick
        end
        object BtnDep_Anterior: TBitBtn
          Left = 308
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Anterior'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = BtnDep_AnteriorClick
        end
        object BtnDep_Proximo: TBitBtn
          Left = 378
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Pr'#243'ximo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = BtnDep_ProximoClick
          Layout = blGlyphRight
        end
        object BtnDep_Sair: TBitBtn
          Left = 562
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Sair'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = BtnDep_SairClick
          Layout = blGlyphRight
        end
        object BtnDep_Voltar: TBitBtn
          Left = 490
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = '<- Voltar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = BtnDep_VoltarClick
          Layout = blGlyphRight
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dados Financeiros do Cliente Empresa'
      ImageIndex = 2
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 336
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object DBText3: TDBText
          Left = 648
          Top = 32
          Width = 60
          Height = 16
          AutoSize = True
          DataField = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label57: TLabel
          Left = 648
          Top = 16
          Width = 28
          Height = 13
          Caption = 'CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 8
          Top = 8
          Width = 625
          Height = 41
        end
        object DBText1: TDBText
          Left = 72
          Top = 14
          Width = 553
          Height = 27
          DataField = 'NOME_CLIENTE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label_NomeCliente2: TLabel
          Left = 16
          Top = 20
          Width = 53
          Height = 13
          Caption = 'Empresa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid_Hist_Parcelas: TDBGrid
          Left = 8
          Top = 59
          Width = 625
          Height = 269
          Color = clWhite
          DataSource = DS_HistParcelas
          FixedColor = cl3DLight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGrid_Hist_ParcelasDrawColumnCell
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
      end
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 418
    Width = 777
    Height = 55
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object SbExcluir: TBitBtn
      Left = 148
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = '&Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = SbExcluirClick
    end
    object SbCancelar: TBitBtn
      Left = 218
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = SbCancelarClick
    end
    object SbNovo: TBitBtn
      Left = 8
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = 'No&vo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = SbNovoClick
    end
    object SbAnterior: TBitBtn
      Left = 308
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = 'An&terior'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = SbAnteriorClick
    end
    object SbProximo: TBitBtn
      Left = 378
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = 'Pr'#243'&ximo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = SbProximoClick
      Layout = blGlyphRight
    end
    object SbAtualiza: TBitBtn
      Left = 469
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = 'Atuali&zar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = SbAtualizaClick
    end
    object SbSalvar: TBitBtn
      Left = 78
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = 'Sa&lvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = SbSalvarClick
    end
    object SbFecha: TBitBtn
      Left = 699
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Cancel = True
      Caption = '&Fecha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 9
      OnClick = SbFechaClick
    end
    object BitBtn2: TBitBtn
      Left = 609
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = '&Op'#231#245'es'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object SbLocalizar: TBitBtn
      Left = 539
      Top = 7
      Width = 70
      Height = 40
      Cursor = crHandPoint
      Caption = '&Localizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = SbLocalizarClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 41
    Align = alTop
    Caption = 'CADASTRO DE CLIENTES'
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Panel10: TPanel
    Left = 661
    Top = 69
    Width = 124
    Height = 344
    TabOrder = 2
    object Label109: TLabel
      Left = 36
      Top = 239
      Width = 51
      Height = 13
      Caption = 'C'#243'digo N'#186':'
    end
    object Image2: TImage
      Left = 4
      Top = 5
      Width = 116
      Height = 157
      Center = True
      Picture.Data = {
        0A544A504547496D61676568440000FFD8FFE000104A46494600010101006900
        690000FFDB004300010101010101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        0101010101010101FFDB00430101010101010101010101010101010101010101
        0101010101010101010101010101010101010101010101010101010101010101
        01010101010101010101010101FFC0001108009D007403012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD93
        FF00824E7FC1273FE09CFF001F3FE09CFF00B25FC64F8C9FB25FC2CF889F14BE
        227C2CB4F12F8E3C71E25B4D5EF75FF146BF7BABEAC2EF57D5EEC6AD1FDA6FAE
        7CB433CE5034AC37BE58927F43FF00E1C7DFF049BFFA317F823FF82BD63FF973
        4CFF00821FBE3FE0939FB0C0C74F823A58EBFF00518D67DABF557CCF6FD7FF00
        AD5C8B1387492728A6B469A5BAD0DA5ED39A5672B733B7BDD2FEA7E56FFC38FB
        FE0937FF00462FF047FF00057AC7FF002E68FF00871F7FC126FF00E8C5FE08FF
        00E0AF58FF00E5CD7EA9799EDFAFFF005A90CA0024800019249E00FCA9FD6B0D
        FCF1FB913FBDFE697FE05FF04FCAEFF871F7FC126FFE8C5FE08FFE0AF58FFE5C
        D21FF821FF00FC1268727F618F82007A9D2F581FFB99AE93F6D4FF0082A97ECD
        FF00B18C973E14D72E353F893F1764D2EEEEEC3E18F8164B096E34EB96B2D45F
        466F1EF892F265D33C15A5EA1A9D95BD8DEAC507887C65A7D95FDBEB76BE07D5
        74F28D2FF307F1E7FE0B31FB72FC6ABDD4E1D17E22C5F057C29792DC8B3F0DFC
        24B24D02FED2D65B59EC2112F8E6E8DFF8EA4BF4B59E59A7BAB1D7F4BB36D55C
        6A763A669B2DA6971E9DF9DF1578AFC23C2B52784AD5AAE679941B8D4C06590A
        55AA61E6927CB8BAD52A52A141EB6953F693C446CEF436BFF567837F439F1A7C
        64C1D0CF30197E1784F857130856C2F11F1755C5E028667427292F699365F87C
        2E2B32CC69B5172A78AFAB61F2DAA9A54F1EDDD2FE958FFC1107FE093039FF00
        861AF8218391C699AC1E8707A6B27A1E0FA535BFE0889FF04965059BF61AF820
        AABF798E97AC851EE5BFB63007BE715FC4878BBE2A7C51F885E7FF00C277F11B
        C7BE37373AA49ADDCFFC259E2EF107893ED1AD4DF69F3B579FFB6350BCF37539
        7ED979E6DFC9BAEA4FB55C9794F9F2EE8FC3BF137E25F83A7B8B9F09FC41F1C7
        85AE6F2FD355BAB8F0F78AB5ED127BAD4E37F323D46E25D3AFEDA49EF924F9D2
        EE566B857F98481B9AFCDDFD22B09ED6CB84AB3A3D2A3CE292ABD7FE5CFF0066
        B82D6DFF002FDEEFB24FFAA57ECC1CE3EA9CF2F1A300B1F6BFD59704629E12F7
        8FFCC63E2A8D66ACE6EFF505AA8AB7BCDC7FB715FF008223FF00C124DF84FD87
        BE05B1E981A7EAA4E7D08FEDACD4E3FE087DFF00049B3C8FD863E0891EA34BD6
        3FF9735FCC2FC15FF82BC7EDC5F07AEECA3D47E29CDF18BC376FE4A5CF86FE31
        DB7FC2632DD4714D1B975F19BCB67F10ADAEBC959E04922F159B63F6A965BAB3
        BA952168BFA2FF00D8D7FE0AE3F043F6A0D4B4DF04EEBFF859F16AEAD2CFC9F0
        078DF52D364D1FC59A9CC6CEDA7D27E1AF8BD66B64F10EAF26A177E5697E17D5
        B4DD1FC4BAB5B867D26DB559E1B9862FD0F85FC5CE10E27AB4F091AD5B29CC2A
        4A30A583CCE14A97D62A4B450C3626954A987AB26ED18539CE8D7A9269428B3F
        98BC5FFA1678D9E11E0B139E55C0E0F8CF863094EA623179DF08D6C5E32596E1
        A959CABE6B94E2B0D85CCF0B4A10E6A95B1187A18EC0E1E9C253AF8CA71573D2
        FF00E1C7DFF049BFFA317F823FF82BD63FF97347FC38FBFE0937FF00462FF047
        FF00057AC7FF002E6BF48FC3DE35D335E891A175121E194B60AB8E195948CA90
        7820818EF5D7F99EDFAFFF005ABF49FAD61BF9A3F723F91FF7BFCD2FFC0BFE09
        F95BFF000E3EFF00824DFF00D18BFC11FF00C15EB1FF00CB9A3FE1C7DFF049BF
        FA317F823FF82BD63FF9735FAA5E67B7EBFF00D6A3CCF6FD7FFAD47D6B0DFCF1
        FB907EF7F9A5FF00817FC13FCBE7FE0BE7E15D33F617FF008287F8B3E077EC7D
        75E22FD9CBE10AFC33F865E2EFF8579F0A3C5FE2CF0A785DBC51AFE892C7AD6B
        F269B61AD2452EABA9C5A7D845777926F9A586CAD612DE54112295D17FC1D3C7
        77FC158FC5E7FEA897C1BFFD33EA14564E6A4F9A0DF2BD574D1F91E8D2BFB385
        F7E557F53FB74FF82234D22FFC128BF61C512B281F0534CC0DD8C7FC4E359ED9
        AFD50FB44BFF003D9BFEFBFF00EBD7E4BFFC113A561FF04A8FD88002D81F0574
        C1C311FF00317D63B57EA579CFEADFF7D1AFCD7179E7B3C56269F3BF72BD687C
        4BECD492B6BAE96B1D4B0B2924FDDD55F65D4DEFB44BFF003D9BFEFBFF00EBD7
        C2BFF0513FDABB50FD923F65BF885F14F419ECCF8E643A5F823E1B43A8CB6DF6
        793C7BE3092E20B0D416D6F2DEF2DF557F09E8765AFF008D7FB1A5B59E0D5BFE
        11CFECFBC1058DC5CDE5BFD99E73FAB7FDF46BF16FFE0B47F0EBE277C68FD95F
        43F0B7C28F875E3BF89DE22D1BF699F056AD7BA0FC3FF09F883C69AD59E8D07C
        2EF8B56573AB5CE97E1DB0D4AFADF4C82FB51D3ACE7BF9604B48AEEFECEDDE55
        9AEA0493C8CDF3FC74726CE2AE5B2AD2C7D1CB3195309EC54AA568D7F652853A
        B4A105293AB465255A9AE592E7A71BC5C6E8FD57C0FE1BE1EE20F17FC39C9B8B
        9E0FFD59C6F15E56B3B863AAD2C3E06BE5F87ADF5BAF84C6D6AD3A74E9E0F18A
        82C2625BA906E856A8A138CDA92FE3CB5DD7357F136B7AC788FC41A8DD6AFAEE
        BFAA5FEB5AD6AB7D2B4F7BA9EADAADDCD7DA8EA177337CD2DD5E5E4F35CDC4AD
        F3492C8EE7926BACF84FF0CBC53F19FE26F80BE137826DE2B9F15FC45F16687E
        0FD096E7ED2B6305FEBBA841611DFEA9359DADEDC5A68FA6ACCDA86B37F1DA5C
        0D3F4BB5BBBE92268EDDC57AFF00FC3117ED9E3AFEC8DFB4E0FF00BA0DF14FFF
        00995AFB1FF605FD927F691F067ED47E0CF15FC4CFD9C3E3A7827C1FE1EF067C
        70D56F3C59E31F84FF00107C29E1FD0756B3F811F12A5F0B5FDDF88356D0B4FB
        0D36EA3F15AE8ABA4CB3DE42D2EAEF616F07997134513FF2F64DC379A6659D65
        582C5E5D99D3A38FCD30385C5622784C547D9D2C562E952AF5A756749A8F242A
        4AA4AA4AEA367295ECCFF7FB8F3C57E0FE12F0FF008CB88325E27E12C563F867
        83F88738CA72DC3E779456FAC62F26C97198DC06068E128E3232AAAAD6C352A1
        4F0F4B95CD4953A766D15B4AF8D12FC21D6AE7E1D7EC37A6697E16F0BE83776B
        657DFB40EB1E0DD0355F8DBF16F5FD30C09A8F8BE1F116B91788A6F86BE0FBDD
        4AD5DFC1FE0AF015C686B6BE1DF225F14DCEB1AFEABAF4F3FBD0F1578DFE34A5
        E68FFB6AE8DA77C62F04F8A4CE2F3E2059F80BC21A77C74F86D7F730C3143E2B
        F87DE38D1AC7C37A9DE4B622D34C8AE3C1DE2BD4359F066A1A4E9967A73686B1
        D9DAC6BBBFB1C7C00B4F101D30CF021DE63CEE5CF048E78073FA93D8F5AFDB8D
        5FF640D187835BCB86DE495ED14471C71B3C8EF22854444552CEECC4055504B3
        100024D7F5D55A991617051C8A197606395722A3FD9DF57A6F0B2838B8DA749C
        5F3D4926F9AAC9CAB4AA37525525524E67FCF056F107C40C57173E3FADC63C43
        3E3378BFAF2E24599E2A19A42BFB55554696221523EC70B094630A781A51A781
        A74210C353C3470D08D25FC5DFED13F0535BFD9DBE357C40F835AF6A16FAC5DF
        82F588A0B1D7AD206B5B5F12787357D3ACBC41E11F145B59BCF73258DBF89BC2
        BAB68DAFC3632DCCF35945A8ADACD3492C2EE7C6E09E7B59E1BAB59A5B6B9B69
        639EDEE2091E29E09E1712453432C65648A58A45578E446574750CA4100D7E85
        FF00C153B5DF0E6A9FB67FC41D03C32FA3DEDB7C33F0CFC30F84BAAEB5A42307
        D6BC51F0DFE1C7863C2FE2B6D5E595E79AE358D03C4363A8F836EA49AEEF9D21
        F0CDB5B2DEDCC504721FCEFAFE37E21C26172ECFF3AC0E066E583C166D8FC361
        25CEE6D50C3E2AAD3A49D47AD4942118C5D54ED51C79E2DA9267FD20785D9E67
        1C55E19F87FC47C47875433DE20E0AE19CE33AA0E8C684566599E4B83C5E3BFD
        9524B0D1A95EB549AC2CA2A5878CFD84E31953925FD897EC21FB646BFF001B7F
        678F877F127C5BAA5BDC7C42D0FC4FAC7C22F8A57704CB14FAF6BFE1FB0D335C
        F0A78E2FEC0B3490EA7E31F0A6AA906B77A816C358F1378675FD4EC8412DC5EE
        9FA7FED0F833C547C41A5C370B3B31F2D1B76FC82081919F6CD7F211FB0DEAFA
        87807F63892EEED26D3E5F899FB59DADE7845A464824D5F4AF865F0AEF34EF17
        DFDAC12C915D5D69F65AA7C43F0DE9EBA8594175603504D42C2EAE6D6EEDA382
        E3FA48FD95FC5375ACE816E2796476FB329F9998F01403C9FF003FD7FABB8773
        CC6D6E15C831B8EAB3962ABE5B45D7A951BF6955D394E853AF5252F7A7531146
        953AF3A92BFB4954752FEF5DFF00CFBFD24385F21E16F1DBC4FC838628E1F0D9
        260789F112C1E130AA0B0D8196370F86CC31997E1A9D3F72861F2FC762B1582A
        386828C70B4B0F1C3A8C7D972AFB83ED12FF00CF66FF00BEFF00FAF47DA25FF9
        ECDFF7DFFF005EB07CE7F56FFBE8D1E73FAB7FDF46BD0FEDF7FCEFFF000247E2
        9F5497F77EE47F9A7FFC1D24C5BFE0ABBE2E627713F053E0EF24E73FF127D428
        AADFF074436EFF0082ABF8B49CE7FE14AFC1ECE4E7FE611A877A2BF44CBAAFB6
        C0612B5EFED30F4E77EFCD14EFA98CA3CB271FE576FB8FED67FE08AB332FFC12
        B7F624024200F82FA60C038C7FC4DF58AFD45F3DFF00E7A1FF00BEABF297FE08
        B73B2FFC12CBF627504E07C19D37B2FF00D05F57F5AFD40FB4B7A9FF00BE56BF
        9CF36CD54334CCA1CCBDCC7E323F17F2E22A2EDE47D0D2C3DE9537EEEB4E0F6E
        F14CDAF3DFFE7A1FFBEABE25FDA1B46D7EFDF536D2353D534F69DE52CDA7DFDC
        D99760080E7ECD2C65980E327240E07BFD81F696F53FF7CAD739AB68363AC6FF
        00B564EFC93FBB46EBD7A915CD87CF7D85455235395AD9C6567E975AAF3E8FAF
        61CB0AA5169F2BF26BFE07F5F89FCD07C65F845F17F53D6CBD9F8FFE225B47E6
        3B05B5F18F88EDC1193FC30EA318C7E43D01AE37C05F03BE2EAEBA8BA8F8FBE2
        35E5A4B198A6B6BBF197896E609A290EC923961975296392374665911976B292
        18152457F4957DF04BC21A84A659D096FF00AF680F5F539E6AAC7F047C1BA79F
        B4451B191701145A4259DD8E111429DC5D9880A172C49C01935EFC78D67C8A9A
        AD52ED28A4A4DDDBB2E8EEDDFB75B58C3EA0B7E582EBB256FF002FEAD63E2CF8
        0DE02D03E1768775E27F12DFE91E17F0CF85B4E6D67C47E24F105FD9E8BA0F87
        F49B52827D4B57D56FA586D6CED919D2356924F36E2E248AD6D629AEA68217F8
        B3F6E0FF0082DBF866C741D53E18FEC712DF6B9E20BC82E74BD4FE39EB1A7DCE
        93A3F8760F2BECED37C33F0F6A3143AAEA7AEC85E46B6F167892D749B4D09AD5
        66D2741D6A7BEB5D5F47F87FFE0AF5FB5ADD78FBE2C6ABFB2CF802E9AC7E147C
        0EF11DC69DE2D681CACDE3DF8C5A48B9D37C49A96AA523807F64F812E26BFF00
        0778674A74985BDE5BF88F5D7BCBBFEDDB3834BFC68AFCDF8B78EF1786C5E2B2
        CCA5C2188C3CA743179ADE53AD4F1117CB5E8E5E9BF6545509F35178D71A95A5
        521EDB05530EA34EAD4FF583E8BDF428E19A99070DF895E2C61EB66F99669470
        D9EE4BC1557929E4D82C062231C465788E22A4A2EBE678DC4517471CF2AA9570
        F80C353AB1C166B84C755F6F468CB713CF753CD757534B7373732C93DC5C4F23
        CB3CF3CCE649669A590B492CB2C8CCF248ECCEEEC5989249AFA0FF00679FD9C7
        C55F1F75DD4E45D4AC7C05F0B3C1362DE21F8B5F19FC5305D2F81FE1A7852DA4
        812E6FF509E155935AF11EA125C41A77847C0FA43C9E23F17EBB7765A669B047
        0BDDEA163D2FC1EF829E1383C129F1FF00F6804F14D97C151AFDE784BC1BE18F
        07CF67A778FBE3878EF4FB7B6B9D47C33E0DD4B54B0D534CF0DF85FC2B6D7B67
        A8F8FBE20EABA6DFD969914F67E1AF0FE9FAD78AB565834AFA56F351F1E7ED2F
        3E83E09D13C21A37C25F801E0FF10EA5ACFC33F817E0AB71FF0008EF864DFC50
        E9D06B1E2BF103DADB6BBF14FE229D06D2CB4CD63E24F8D65BDD7F5465BD96CD
        345B1D4AE34B1C9C1DE1F4B35A7473AE20A8F079336AAD2C3294A18ECD29A95E
        F076FF0065C1D4B493C4C9FB6AB1D70D4DC26B134FF4EFA4D7D32F24F0A2799F
        01F87F4A8F10788D4A84B0D8AC6354EA641C1D5EAD26A3F5DD64B33CEB0D1942
        AD3CA2941E130F52D1CD71109D29E5D5FDCBC05AEDBFC5AF1BF83344F875A2EA
        7A17C12F83DE1CB6F867F06F47D49562D62E7C2961ABEA5ABEA5E3CF16DBDA6D
        D2E2F1FF00C4EF136ADABF8EBC6634F896D2CF52D65341B39AF34DD0AC2E1FFA
        43FD97FC3B75A1787ADDA506326DD464E41E5572338039F7EBFA9FCDFF00D94B
        F6685F0D5A69ECD65B59123259A201BA0C93F271C83D4F3EB9AFD91F09696BA1
        E9705BA0DA4228C04518007D075EC7038AFD3739CFB0FEE61B0CA9D2A14214E8
        51A54D28D3A5468C234E952A6B68D3A74E118422B48C6292D123FC5EC556C7E6
        B8EC766B9A62AAE3732CCF198ACC731C76264EA623198FC7579E27198AC4546A
        F52BE271156A56AB36EF2A9394DEAD1E87E7BFFCF43FF7D51E7BFF00CF43FF00
        7D562FDA5BD4FF00DF2B47DA5BD4FF00DF2B5F3FFDAEBF997FE048CFEAFE71FB
        8FF372FF00839F58BFFC154BC58492C7FE14BFC2004939FF009846A1EBFF00EA
        A2ABFF00C1CE8C5FFE0A9BE2C63D4FC19F845D7DB48BFA2BFA3B86EA7B5C8328
        A9BF3E030D2BAF3A699F3F885CB5EAC7B5492FC4FECF7FE08C773227FC12E3F6
        2B50C405F835A681F2A9FF0098B6AFEA335FA75F6B93FBC7FEF94FF0AFCB3FF8
        2344AC3FE097BFB16818C0F839A6F51FF516D5EBF4DBCE7F6FCABF8E788334E4
        CFB3B85FE1CDF328EFFCB8CACBB796BD3B687DCE1B0C9E1E836A1774693D629E
        F089ADF6B93FBC7FEF94FF000A3ED727F78FFDF29FE1593E73FB7E5479CFEDF9
        5791FDADE7F8FF00C036FAAAED0FFC057F91ADF6B93FBC7FEF94FF000AE73C4B
        E2C97C2D6175E22166354FF846F4AD7FC5674D6BA5B0FB7AF84F42D47C466D3E
        D8B05CB5B19BFB3360985BDC042C0B5BCEA0C4F77CE7F6FCABCDFE2247A86A7A
        6EADA369D6975A86A1AAF807E2A5958E9F636D2DD5EDFDEDC7C34F16C5696769
        6B02493DCDD5C4ED1C36F6F0A3CB34AE91C6AEECAB5ECF0EE60F119FE4B416AE
        AE6B80825A49B72C55256519465193ED19269ECD3D9EB43074275E843111A6F0
        F3AD4A15D49BA7174675231ABCD523284A0B91CAF38CE328AF794A2D5D7F9FDE
        AFAA5FEB9AB6A7AD6AB752DF6A9ABEA17BAA6A57B39066BCBFBFB992EAF2EA62
        A0032DC5C4B24B210002EE480056757D42DFB117ED9F93FF00188DFB4E753FF3
        41BE29FF00F32B4DFF008623FDB3BFE8D1FF0069BFFC30DF14BFF995AF8A7936
        7526E52CAB3494A4DB949E0716DB6DDDB6DD2BB6DEADBD5B3FE8FE1C77C034E1
        0A74F8CF84214E9C6308421C4593461084528C6118AC62518C62928C52492492
        563EE7F8CFF0B8EA5AD7EC8FE02D36E3ED7E12F0AFEC77F02357D0ED208BC8D3
        5354F8A7A65F7C56F1AEAF059A5A69D1FDAB5CF16F8CF53B99AFEE34F8356BDB
        0834B8B5996F2F6C8DC37EB67ECABFB335958693637D2D9C590B1E18C2B91803
        3FC24907FC81CD7C9DE27F0AEABA0FC44FD9DBC3FE26D1753D03C47A0FEC79FB
        2A685AF685ADE9F77A5EB3A26B5A47C29D0F4FD5348D5F4BBE860BDD3753D32F
        A09ECEFF004FBC861BAB3BA865B7B88639A3741FB6DF03EDA3B4F0659B468AAC
        CB18CE0E71E581DC0C8E383E95FB4F17E775B2FA386C1535EC21430B84C3AA5E
        F47D946961A95354B95EB1F66A2A0A2F58A4A2ED6D3FE72F8A2F9971A7186635
        710B19531BC55C478CA98B728D578B9E2739C6D696265521EE5475E53755CE1E
        ECDCDCA3A347A4785BC3167E1DB58E38A3456551C2C71E01F7F97F418AED3ED7
        27F78FFDF29FE1593E73FB7E5479CFEDF957E672CE1C9B949DDBEBCDFF0000F3
        FEAB1ED0FF00C057F91ADF6B93FBC7FEF94FF0A3ED727F78FF00DF29FE1593E7
        3FB7E5479CFEDF952FED6F3FC7FE007D557687FE02BFC8FF00395FF839A5CC9F
        F0547F15B31249F837F08FAFFD826FFD38A2A0FF00839858B7FC150BC544F5FF
        008539F093FF004D37F457F68F0554F6BC25C3B53F9F28C14BEFA3167C2E3E3C
        B8DC5474D2B545A6DF133FB24FF8237DCCABFF0004C1FD8BD41181F0734DEDFF
        00516D5FD08AFD31FB5CDEA3F23FE35F97FF00F04739597FE0989FB18801703E
        0EE9BD41FF00A0B6AFEE2BF4B7CF7F45FC8FF8D7F07714663CBC4BC451E6F873
        DCDA3F763F108FD3B0586E6C1E125CB1D70D41EAFBD283BFCCD3FB5CDEA3F23F
        E347DAE6F51F91FF001ACCF3DFD17F23FE3479EFE8BF91FF001AF0FF00B4BFBD
        F89D3F55FEE47EF34FED737A8FC8FF008D7967C534D42EF4846B2B89AD6EA249
        BC9B8B592582E222F1B2318E685D654DC8CC8C5586558A9C86607D03CF7F45FC
        8FF8D579AC24D6E5B4D3238965B9BEB88ED2DA321B699676080B904EC8933BE5
        908C471AB3B61549AEAC16635E58CC3470CAA54C4CEBD3861E9D2529559D69C9
        429469C63EF3A929CA2A0A3EF393496A67570D154AA39A8461184A53726B9546
        29B93937A2492776F44B73F0C3F682F03FC52D545F7F67F8DFC7569BFCCD9F61
        F146BF6DB73FDDF22FD08271C115F1043F07FE3689A2CFC4CF8A3C48879F1CF8
        A4F4607A0D5493F80AF51FDAC7FE0ACBE2ED27E246B9E11FD9162F097873C2BE
        16D5356D0E5F8B5AD7833C27E3BF117C44B8B0D45ECE6D7342B5F1A58F8A3C37
        A17833504B46B8F0EC36DA241AE5EE937C973ADDC25E325B5A79A7C0DFF82A67
        8D35DF1BD968DFB6243A178FFE1D6AF9B297C73E11F865E03F08FC49F8737222
        9C699ACE8D1F80749F05699E2BD06DAFE7DFE21F0BF88ADB5192E74E9EF2EB41
        B8B2D6ADED167FD9705C5EB071865B533DAB1C7A92A729AA5CF93D2AD6B7B2A9
        9A7D7555F767FBBA988865F5304A6B9E3899616F893FA3A1F41EF1B317C21FEB
        9C326E1E8DF2D79A52E12AB99E323C695B0EA1EDA14A9E591C9E595471D5685A
        B53CBAAE794B1B7B61A74218EB611FDEDF033E1078812FECF53F115F6ABAD6A7
        E5DBC526A3AD5EDDEA57CF14202C51B5DDECB3DC3A4409088652A8090A077FD9
        6F87F14BA6F87ADAD870171D463F840E318FEBFE3F3DF84F4FD0BC35E21BCF0D
        5D5CD95DDC69F2C1E4DF584B15D69DAAD85E5BC37FA4EB3A65CC6EC973A5EB5A
        55D59EADA65CA1C5C585E5BCC02EFDA3E9EB39234B78C4013CA2A0A900F208F6
        35F9AF12E798BA98EAD431B0A94B1346BD5A75E1553552156949C2A42577F146
        69A96FAADCFE69C260A30A6B9631B34B47A3B744D5934D754D269BD6C6EFDAE6
        F51F91FF001A3ED737A8FC8FF8D6679EFE8BF91FF1A3CF7F45FC8FF8D7CD7F69
        7F7BF13B3EABFDC8FDE69FDAE6F51F91FF001A3ED737A8FC8FF8D6679EFE8BF9
        1FF1A3CF7F45FC8FF8D1FDA5FDEFC43EABFDC8FDE7F9DA7FC1CAEECFFF00053E
        F15331C9FF008539F093FF004D3A81FF003DE8A87FE0E5062FFF00053BF14B1C
        67FE14EFC25E9D38D26FE8AFF40FC3D9FB4E07E149FF003E45974BEFC3C3D3F2
        3F2CCD572E658E5B5B1359596DA4DA3FB0CFF823D5C3A7FC132BF635501481F0
        7B4D0320E7FE42DAB7FB42BF4A3ED527F753F26FFE2ABF313FE090172CBFF04C
        EFD8E142A903E1069C39CF6D5756F7AFD24FB53FF757F5FF001AFF0037F8C730
        8C78BB8A6368FBBC479DC7ABDB33C4AEE7ECD97615CB2FC0BB2D707867AB5D68
        C3C99AFF006A93FBA9F937FF001547DAA4FEEA7E4DFF00C55647DA9FFBABFAFF
        008D1F6A7FEEAFEBFE35F39FDA51ED1FC7FCCECFAA3ECBEF5FE46BFDAA4FEEA7
        E4DFFC55626A77724D79A7695FDBA7C2CFAF7DBFC3D6BE2584DDACDE1ED435FD
        3AEF47D375C81ED2FB4F9E3B8D2750BDB6BFB6916FACD239EDE379EEA0816491
        64FB53FF00757F5FF1AF3DF8916926ADE1EB980203FBB718009C920E3A1CFE18
        E6BD4C933D8E5D9C657983A74EA7D471F84C62A7394A31A8F0D5E15953934F99
        466E1CADC7549B6B633AD85A9ECA7ECDA854E57ECE7C94EA28CEDEEC9D3A9095
        39A8CACF92A45C256E59269B4FF867F1678635FF0004F8A7C49E0CF15E9775A1
        F8A3C25AFEB1E19F1268B7CAA97BA46BDA0EA373A56B1A5DDAA33A2DD586A169
        716970A8ECAB2C2E1598004E558585F6A97D67A66996775A86A3A8DD5BD8D858
        58DBCB777B7B7B772A416B69676B6E924F7375733C890C10428F2CD2BA471AB3
        B007FA31FDA4FE1AFC07F89BA89D63F684F843E35D67C63671A5A49F16BE0BF8
        BB43F02FC40F11E9FA75A59D969767E3CB0F12783FC5FE15F196A36365616FA7
        5BF8AAE2C34CF123E9E823D5EFB5CB9586EE0F8C74DD67E127C0BD7D353FD8F7
        E0CFC49D23E28DA5DCAFE1CF8EFF00B4178D7C33E3BF13F80C5D17B0BB6F047C
        39F0BF827C39F0EEDB587D295D6CFC4DE2987C5DA868B71AC6A32E8D6B63A9E9
        BA2EBB6DFB4E0786303994E18AC371065B0CA6528D494EB3AEB33A1876DCA54A
        78254234AAE36104E36A789FA954AA92FAE53849CA3FEA147E9FDE1DD1E1058D
        C670CF147FAF11CB5A970DD0C261BFB26B6751A2E2A34B3E963651A592D5C525
        2FAD54C2CB32A3836E7FD975B130542A7E9759FC457F0B7C58D13E15A4DA7CBA
        B7C20F867F06BE1178D6FF004CD4AE353B4BEF885F0E7E17F84FC27E3A8CDC4F
        7175299F41F13699A8F852E376A3AAB4D3680F72DA95DB5C338FD4CF076AD35F
        685693B6C3B9170483E83FDAC7FF005EBF087F653F843AAE992595DEA1E7DC5D
        4B20B8B99EE5A49259E795FCC965965919A4925924667791C967762C4E4935FB
        91E0F492C343B4B764036228C1C83C003D73F9815F13E23E6D81AF9C626BE155
        34AAE22ACD454A2DC632949A4DC5479DA8D94A6E2A5395E72BB6EFFE59613EB5
        8FAB89C6E3141E271B88AF8BC43A7170A7EDF135675EB7246529B843DA549724
        1CA5CB1E58DDDAE77FF6A93FBA9F937FF1547DAA4FEEA7E4DFFC55647DA9FF00
        BABFAFF8D1F6A7FEEAFEBFE35F9C7F6947B47F1FF33BFEA8FB2FBD7F91AFF6A9
        3FBA9F937FF1547DAA4FEEA7E4DFFC55647DA9FF00BABFAFF8D1F6A7FEEAFEBF
        E347F6947B47F1FF0030FAA3ECBEF5FE47F9ED7FC1C8CE64FF00829AF8A19B19
        FF00853DF098719C71A4DFFA934557FF00838F64327FC14C7C50C4007FE1507C
        271C7B6957D457FA75E18CFDA7879C19356F7B8732B969AEF85A7D4FC4B3B8F2
        E6F98C76B632BAB7A4D9FD777FC122AE445FF04D3FD8F8B4C2344F843A79625C
        00A06ABAB139C9E2BED1F157C66F04F83C13AC6BB6F160E1B13C7C75FF00689E
        DE9FCABF37BFE09AFA9C9A6FFC129FF65EBB81DA39ADFE0BDA32BAF505751D60
        E41E7A601E87A6315FCF4FED31FB516A3E28FDA47C6BF0DFE2D7C5AF887F0EBE
        14687AFF0084B435D63E185CE9E3C4FA7FF6E69126A7A8F88AFF0049B9D2E4D6
        B5FD374D37623D422D175FD19B4FB3B6B436DA4F88357BFB5897F80F87BC3FC6
        F89FE25F1D65B85CC28602965FC479FD6C555ACAA3E5A2B3CA986B4234E1372A
        8EAE2294545F2C757294E108CA4BF60C7E734B87F22CA6BD4A53AD2AD82C2469
        C6118ABCFEAAAA3BF33568F2C24DBD5B69249B693FEADFE267ED9FF0FBC27E18
        D435DD2F5FB19174FB69AE279279E111C51C51B48EF233B2A471A2AB17772154
        0DC480091F09780FFE0B29F067C51E2CB7F0B9F1CE8335F6A124D6FA642A268E
        2BDBA89885B68AF64812CDA7B8E16CE2FB46FBE9088ED1677214FE0F782BC39F
        0A7C35E16D475F83E1B7ED19F1C7E1FDD4CBE2B8CFC55FDA3742F831E11D67C1
        365656F7DE6DEF823C15A678EF55D463F115BA48755B7D56FA19E5D1E2B282D1
        74FB9594DEFC3DE2DF8C561F12D3E206ADABD97C29F0943F10BC677FAC4DA0F8
        73C07AE6A7F10FC3DA1DDEB56F2E87E15F085D0B3D1BC21FF08EF852C22B0D3B
        41D367F126912C3A2E962DD08B968AD2E3F78C97E8E3C27530D9861BFD618F10
        62E8E2A961E75B2DAD87A4B2D8CD4D4EA62D4DE2154AB4A50949E129D4A539A8
        4A9BAB4DCB9E9FC662B8DF31552854FA83C1529D295451C4425278871E5E58D2
        E554DC6324EDED25171578CB92495A5FD907833FE0ACFF00B3E78B7C44DE1FB7
        F885E0BFB54779258B43FF0009169B1CF2DC47B030B58A5B88DEEE2CC88A2E2D
        44D6ED2EE85663247222FE80E8BF1A7C03E29D296E22F10D908E78C16469E320
        6F1907EF9FD79EF815FC1FEADF057E287C41F827AFFC7AD07E0BDBF86BC0F69E
        0AF17CB7DE23D1BC13F0BBC07E1282DBC19AB7896E2E355D264F10EA9E29F1ED
        DF88EDB50F0A5C697AB3F83EDAC2EED5E18B449353D3ECEF2EEFAF7EB2FD9ABE
        2BFEDC5F18749D4347FD97BF664F8EBFB44697E03B3D0F47F1A78D3C1DA7893C
        2BA77892E743D27546D065F14EA3711E9779E238ACB51B4BDD4749FB60D5EDA3
        B98EE67B436F2ADC3781C5FF0046B8427845C1D89CCEBD4A8EBC6B52C6D1A745
        72E19D152C451A929C14A8CE552D0938413F75D39558CB9977659C73CD1AAF33
        8E1E115C8D4A94B9EDCFCDEE4D59F2CD28ECA4EDF6945AD7FAB4F1D687E05F12
        5B4B3FF6B69D2452120B79B11077678E58F383D7AE3A9EB5F3C5B7C15F0047A8
        1BDFED1D34A87DC48787B9CFF7B8ED93F43CF35F8ADF17BE3F7ED89FB3FF0082
        BE1F7863E33FECDDF1A3C17F1B3E2E78964F0E7C28F82B168EDE26F88FF10F54
        338B3B48BC31A178725D46F35217576561096905C5E79CD0DBDBDA5DDEDD595A
        5CDEF10EBBFF00053BF87FE1ED367F881FB12FC72F096B7E38F883E13F85FF00
        0D742D5E7D096FFC79E36F1569DE26D5ADB42D09A2D4A48CDF5AE99E15D4AFE5
        8EE0C48F0A92922B290DF2780F05BC48A347110A3EDE30A18CFA84D49D38DEAC
        AAC28C796F34A70E7AB15ED21CD4D26DF3251935E956E28C8672A72938373A6E
        B45257B452727D1D9A516F95EBD2DB27FD1DF8274CF03F862D20B86D5AC22897
        1B5FCD8F04FB1DC06463A7A8E9C1AF7FD27C4FA36A6889A66A705C2800288E55
        39FF00BE4919FF0026BF960F8B1FB427ED31F0F749F04FC22BEF833F12DFF693
        F1678AFC21E09D2FE03FD8A287E20BF8B7C65A643ADE9BA1CB65F6A961F322D1
        27FED896F2DE4B8D3D74A8DB573749A324DA943FA79FB1B789FE34695AFDBF82
        BE37F8335FF873F10B4FB0D0EE7C51E05F12987FB73C3377AEE87A77882DF4ED
        485B4F3DB9B84D3F53B49098A46464955863240FCE78B3C39E25C9324C5F11E6
        73A8B0D86CC313964E75124962F0CA4EA5169BE6535CB2B5D5A5C9349B7095BD
        CCB73AC062B174F0387E5752A61E1888A566DD29DB966BBAD57C9C6FBA3F607E
        D0DFF3DBFF001F1FE347DA1BFE7B7FE3E3FC6B03CE4F7FCA8F393DFF002AFC47
        FB61FF003BFC0FADFAA2FE944DFF00B437FCF6FF00C7C7F8D1F686FF009EDFF8
        F8FF001AC0F393DFF2A3CE4F7FCA8FED87FCCFF00FAA2FE944FE01FF00E0E316
        2FFF00052AF13B16DC4FC22F853CE73D34ABEEF4555FF83899837FC1493C4E46
        71FF000A93E158E7FEC157D457FAEFE1154F6BE17F0154FE7E16C9E5F7E0E9B3
        F9BF88E3C99F66F1FE5C7E256D6DAA3E9D0FEA33FE09DD72CBFF0004A2FD9A10
        1E07C16B61D07FD04358EFD6BF3C3F676FD8F7E01FED5BE39FDB063F8C5E0E6D
        5B55D0BE27F82AC741F13E93A9DFE87E24D1ACAFFE1EF862F350B4B5BFB09922
        B8B5BD3A7A40F06A56D7F15BC175A80B14B49AFEE6693EF6FF008279DC01FF00
        04ACFD9AA31CB7FC29AB550A01C93FDA1AB600E0E4F7EBFAF15F2A7EC25F187C
        09E04F8C9FB5F784BC59ADD9E85E27D77E24782F58D1740D4EE21B2D5757D22C
        FC016B6136A9A559DC34736A56093E9D7624B9B25992058C35C793BD41FE4DFA
        2EE610C578D3E3361DB8DE9669C571E57D7978AE8C795293F7B44DBB2D91F7FE
        22D174F853862708C93961F2E7CCBCF2F93BDD6DBFA1F0DFED2FF0C7E0F7C14F
        DB7FE057C13F85BFB3F7883C59E1AF04689E1BD4FC7B73E2ED17E20FC7683C75
        ABF8B34BD57C31E128351F09F89756F10E932780F4A94E963579BC1BA369D727
        52975AB5D1B48BAD4FC21E1ED36BF22EF7E1B5B6A163E31D5B4BF1608FC05F0E
        6C2379F5BD48D846DE2A3A978987863483E0CF0F58DDADC5DEA3E25D5B4FD535
        1FECDD4258FF00B3FC3DE1BBAD7355F10CCFF64B21FDBBF8BBF69BF827E04D06
        5F12F8DBC7DE19F09E889B94EA5E21D674FD26D99C14411452DF4F089E777922
        8E2B787CC9A59648A2891E492346FE3175DF15782BE1FF008F7C61E0DF087888
        7C73F831E0CF889E12F17F86AEF4AD27588347D5742F096ADE3B7D2B41D4ADF5
        BF0F477F6F35A9F895E23BCBBB96BF9FC2DAA5E59EA36D1CDE24B0D5F4BD4F4F
        FEF0C5BA583C2D5AD4F0D4EA3C3D3AB568E1E9BA141D4ABC8FD9D1A53AAE1469
        D4AF3B528CE728439EA7BD28A6D9F8EE1DCEB54509CE71E7708CEA4F9E7EEDDB
        9CE492729282BC9A5CCD25A2763E8EFD963E3B789BE16786FE227ECC3F13BC47
        751F84BC69F0E7C4FAB7827C3D04BA75D5AF85BC79A9F877FB765B3D56D6DFC3
        D71E21B6D435DD2668519A5D7EC340D32E22B986F2D2FF005195A6D13F5CFF00
        E09D7F133E19789FFE098169FB30F823FE0A1375FF0004D1F8F69FB405A7C75F
        11FC5AF0D782EEFC4BA97C4AF0D6B7F0D347D0EFB4AD49ACB55F03DBC8DA8EA9
        F60B7BA8D7C60DACD85BFC3EF0DC6904BE1EB88F4CB2FE747C2FE19F881FB5B7
        C6DBAD6B481FD8773AB6B70DFDFF0089A1B166D2BC2D169D691A690BB0CF18B8
        BC8E0B0B1B5B6B55B933DC5C15B89D920F3EE23FE82BF647FF008273FF00C135
        B40F87DA869BFB59FECA7AEFED25F14AEFC4515C69FE3CB3F8E5F15FE1CC56BE
        13B3F09785341D33C38BE1DF0278FF00C2DA3B3DB6A7A36B5ACBDF4F65737CED
        AEFD8DAFA4B3B2B2B6B5FCAF88FC4BE19E18C464D9771671364F92673532A9D7
        CDB0B88C162B34C0D1788A745CF0B59612709D35EDE127876EAFB59D3A309D5A
        2A8E22127F4B82C871D9843175B2DCBF178BC2C71318E1AA52A94A8D693A729A
        8D58FB54E32F71AF68B97954A6D464E5076FD15FD92BF656F8D3E1EFDBA7E00F
        C6AF8A1FB75D8FEDB5E13D33F605FDADBE31FECBDFB58F8A96EADFC2FA6F8A1B
        5BF80BF0DEFF0057F11786FC4FE2EF88365A059786FC3BF167C4AFAC5C7853C5
        DA74B2D8DD5D5A6B6341173ADE817FE13F0EFE1BFED23E0DFDA6BF626D63E39F
        FC1577E10FEDE761A97EDB7F0AE0D0FE187C35F8ABA878C6E3C27A849E0DF8B1
        757FE37BCF0E4FE32D7ECED2C6CE28E0D02DEFEDB4DB51A6BEBE2C229E08B53F
        226FB0A6F8CDE0FF0085DE29FD9760F81BF067C39E03F829FB29F81BC51F0D7C
        07F05BC4DE2397C4C353F06F8F348B6D1BC676577E29D66C759D7ED6F2FF004F
        B2D3A0B7D5351D47C517B35EE9CDA9EB52EAB6FAE6B9A2DE7CF7E13F829FF04D
        6F82BF15BE197C69FD98BF642D47E07F8E3C21F1D3C35F16FC4F7DA7FC61F1CF
        8874FF0011E99E1FD2BC6F00F0B697E1AF1578B3C41E15F0CD9B6AFE2B82FEDA
        0F0FE8BA45B595A69C34DB45B7B0F2ED47C8D3F1DFC20AD0AD4B0DC4982A5472
        7CF694F0B2AF81CDE2F1D42BE33058CC5E332DAD4E8F2C6851AD2C651852AF06
        E7430B4E0A30A3561397A12E10E268B8CAAE02B4A78AC14E35142A615FB19C29
        D7A74A96222E69F3CE1EC66E54DD94EA49EB38492B7F1CF581ADFEDF7F0E3FE0
        A45A9681A5DDFC3FFD9CFF00E09F7FB52FED7DE3ADDA3DAB781B5CFDA6BF66BD
        3BC4DFB2ABF82B4F592FEEECB5AD6AD7C53A98D4FC01A56BDE30F0C78D94691A
        68B7F11E91AAF87AEF439BEC7F8BB3B2FF00C1477E3E91C0373F0C1BA03D7E0C
        7C3B61FA93EDD2BE58F11EB3A678E7F629F8EBFB215BE817D8F8BBE33F89B7B0
        78D62D74C97FE13F86BF16FC71A27C44F1E781BC393EF5BDD06DFC51E27D25EE
        FC47A7E9CC7C3FAD4979757B7FA64FA85C1B987DD359F889E12F88DFB4BF8F7E
        3698DFC39278DA5F0AB26817B7B6D777B66DE1EF057873C24C26B8B754864333
        E84D729B17E58E7546CBA9CFE2BE3DF8C9C03C49E1962326E1BCC562B35A9996
        5F9CE27094B0F898D478AC7E1B3F96677E6A714D617132C32A92BA8F2E370FEC
        A55146A3A7F59C1BC319C6038829E2B30C3BA786861ABE129549CE9B8FB3A353
        03F56DA4DDAA43DA28E8ACE94EEA378A97DBBF6C93D7FF001D5A3ED927AFFE3A
        B5E15A9FC6DF036933082F3558A3908CED2EA0E319FEE9F5AAD07C78F00DC3C3
        1C7ABC25A63B506F5E4FFDF3FCF1ED9AFF0039962B32941548E0F14E0D5D4961
        EA72B5DD3B6DA1FB972D04F97DA534D696E68DD7E07BF7DB24F5FF00C7568FB6
        49EBFF008EAD78449F1BFC0B15E2D8BEAB089DC80177AE727A71B6BD134DF105
        8EAD6E2E6CA612C470411CF51918214E78C67D0F15CF5F34C4E1A319E22956A3
        09ABC25568CE0A4BC9C922E146151B54E519B5BA4D36BF03F846FF008386A432
        7FC147BC4CC7AFFC2A6F85A3A01D34BBDF4A2AA7FC1C1D2093FE0A2FE2561FF4
        4A3E178FCB4CBDFA7F21457FB81E06D5F6FE0EF869596D57837229FF00E0581A
        4FA9FCA7C591E4E26CF61B72E678B56ED6AD2D0FE8F7F622F160F0CFFC12E3F6
        5B95FF00D5B7C25B5560073FF211D5B1CFE5F9F4C673F8CFE32FD9A3F698FF00
        82917ED29E20F83DFB277C2AD2FC6DE27F86DA1DAF8EBC71E3DD6FC61A6780B4
        1F869A7EA1757F69E19175E21BD9A2BA9B58D7B52B1963D2348D1D354D425781
        F526D24E95A6EB1ABE8BFA93FB2E5C91FF0004B4FD975370C2FC27B518E3FE82
        1AB77C77E833D3247A54DFB06F803E0A7C47FD947FE0A29E17F8EDF11FE387C2
        5F0178A3F685FD9E34CD7FC5DFB39DEE83A57C49D5069BE13D5B52D0FC317577
        AFF85FC5BA6DFF0085A7D4649EE2FB4EBED1EE6259B13DBBDB4E5A56FE0AFA30
        56C9B11E3278D79CE6788A386870EF14F88B8F9E2B139855CBB074160788F1B4
        BDA6371B4E33961B0D4E35252AD5542718423CD3A5563174E5FAB71F3C543867
        8630D422E6F1980C968AA74E8AC45497B6C1D1D29D26D2A951ED18DE2DBD1493
        B497E317C5DFF824D7EDEFF08FE32FC17FD9EFC7DF08CFED01FB577C77D0FC5B
        AF7C3EF06E87F16F4BF1268B6DE0CF0144CDAE6BFE24F177886E743F0EF86B47
        D3E7B98C2C7E2BD5ED34D967B88ACED7528AFEE2DE2B8FB1BC45FF0004B1FF00
        82A27C19B4F027C28D47F65FF005B6B7F133C49A5F85FC1FE30F0C7C48F0D6AB
        F0962D4EF5AF967D1FC55AB5835AEB1E09D56DECECEDAE2CBFB5B456D1F5E4B9
        F2F43D5AFB50B2D574AD33F567F626F85FFB2BFECD3F17FF006C4F1AFEC7FF00
        137F68AF88FE33F08FFC136FE376A969E28F8F4FE19BFF008ABA46B5A378A349
        F114D6DE09B6F07781BC1B06A1A4FDBB4FF03CEC1347D56ED75AB4D2EDDA588C
        F6D0DDFCEFFF0004F6F8DB7FFB41FEC79FF057FD2A7F11EB7E25F82BE0CF0EFE
        CCDAD78296EEF2E4F83ADFE2FEA3E25F89FE20F1B5F78675C8644B6D4358BC1E
        1EF838FE21B4B7BF9E3927B1D122BDB364D49BFB47FB4F3BCC323E20C251C6BC
        B25C4D829649C45C630CFB09C458BC770D61BFD5BC45F0F9351C4D0A14A8D4A3
        98C29D6A352AFD5E854C2297B55471756EE9FE5D8586330752549578E06AC715
        81CB1E12A60214B1D53EBF1E59E2A54E752528CB0EE509469FB49AA8D38F3D28
        BD7E699FFE094BFF000555FD9DFC21E34F8BFF00147E1DFC05F0D7C28F851E05
        F1B7C4AF1EEB1E1EF8BD6DAC6B1A6F857C07E13D63C51AACFA6E91169C8D7F3A
        5A692EB1DA4443CAB948FE6C53BF66CFD9ABFE0B0BF1BFE1B685FB4FFC3FFD95
        ED24F82FE2DF0FDA78D3E1EE93E20F8B7E08F0D7C50F88DE09BF85EEB48F1378
        4FC29ABEA96A96F06B7A6AC3AAE8365E2997C363C41A75D69FA9787F50D5347D
        4F4BD52FB2BF69FD1F53F117FC119BF60FD274C8DEE2F351D77FE0AA3650C4A2
        690C935E7ED75E26B6846C8239A67CC9281B638A476CED4466214FDE9FF0574F
        DA535BF855FF000505FD8EBE197C17F176BBA2EBBA24DFB29DBFECCBE1FF0002
        C925E9D47C37E36F1D69FE1FB793C09A4D9ADCC1E30F0BF8AD2CF52F0A6AF789
        06B3A478BB4FD3EE7C0FA849ACC16B1E823C2C7641E1E6718FCC29CB80259AE2
        3EBFC1DC3D5F0986CCB1152585C3F15E55473BAB9DD671A2AAD086068E2E5869
        397B5857960E8494F070AD55D3EBA38ECEF0F468B59C430F174B35C646A54C3C
        62AA4B2DC4CB091C2C53A8D4A55A74D54B7BAE0AA4D3555C23CDF047877C19FF
        00051DFDB3FE38FC53F851FB2A7C134D4AE7F67EBAB2F0DFC6BF157C52F13C1F
        0E3C39E0AF1D5E4579227C3F9FFB5CC3A8DFF8B6D16CE51AB697A6DADFDEE873
        0F275EB3D291ADAE6EB77C5FFB1BFF00C1587C25F163E0F7ECD37BE0FF008387
        E3D7C5CF0FF8FF00C71A1E8B1FC56597C28BE0EF00AC0753BB9FC46B6C12DB52
        67BC8C47632C4C66519461835FB37FF0557F02FECFDE13FD9FBE36E89E36F88D
        F12BE01FC02F88FF00F054DF877E24FDA6FC7BF037C47FD9FE35B88B5DFD92BC
        1BADF8826BAD7B5983C45A6E9B2EA5E38D23C1F025AEAB632E916DA959E83A35
        9E9D0B0D36CC7C83FB257ECADFB2A7C20FDABFF642F107ECDBF1C3F68AF1E7C1
        1FDA6BF62AFDB13C743E257C7FD6742F15FC42D13449FC3B2786A5D534C8BC37
        E0BF0A94834CB48AEF50B2D366B1D4A79A5862F2256495613EDE1FC24F0F3295
        95E494786B2DC6432BAF82A798E698DC5E228E23130AF85C54A55E54561A7869
        E1A75E2A9CDD0C5D3786AB09274DC6838D5E49F1367589F6F8C963AB52788856
        9E1F0F4E92A908384A1687B4F68A71A8A379252A4F9E2D5A5EF5E3E3D63FB28F
        FC1537F653F0B7893E227ED2DF093C0717C33D3AD13FB53C61F0CFE2B68FE309
        BC3735DDF58E9BA78D77C3930B2D65B4FBFBCBF485355D223D4A2B199146A96F
        676B28BD5F9C7E02D97ED89F153C35F18FF6BED2BC25A7A7EC9FF09BE256A1F0
        BEFBC6373AF1B3F16DE78AF46BCF05697ABDE69DE13BA8D1F5CF095B6BDE321A
        2CBE22D1EE278ECF50D2754B5BCB68DF4AD5DF4EFB86DFE1CFECF3FB037FC132
        3FE0A23F167F667FDA67E2A7EDB565F14E3F84DE04F8A1AF78F74FD2FC1963F0
        46CFC1FAAEB69A25C5DF8375A1E14F195A1F1CC9F10F50D0347D6B4ED175DB0D
        67C4A7C3A91DA1B3D135D927FD01FD8D3F650FDA73C07FB31FEC7BFB13EA1F07
        BC432FECD7F137F600F8C9AE7ED31F186E7C61F09F474F057ED75FB49F88348F
        8BFA4DAEABE099BC43AB7C49F14EBDF0935BB6F14F85F4FD73C3DA14DE1068FC
        7BA3DE4B36A36DA15CE93E1BF9EA9E08F03E778FE28C764D9365FEC736E09C02
        C03CB3192CC32BA79DE3EB6671A18DCB730AAA8D2C5E16951C161655E5082A4E
        188AB1A707524E34BB571766D84A180A58AC554E6C3E6F5BDAFB7A4E8622583A
        54E84A74ABE1D39CA95594AAD454D4A4E578C5BF75272FC0BF0BE91FB7CFEDDD
        F1BBE22FC3EFD8B7E19E83E33B0F839A6F86E7F8A3E39F1BF8E34EF04F84BC35
        A9F8BEDB52BCF0CF87125BE956F755D6355B0D32E2F923D1E0D4CDAC186D4A1D
        3E0682E6E3BED5BF672FF828BFC19F8973F817E31E81F0D74AD47E187C0587F6
        8CF8ABFF0008E7C425D722D2BC0FAC7C48F10FC39F0C1D06616D1A6B1A85EEA5
        E1EB892FF4FF00966B34612EF31B2A8FA4FF00642F84FF00023E207FC13A3F6A
        0F02FED3FF0012FF0068BF81FE1BBCFF0082A82E8FAB6ABFB365F786749F883E
        21F13F85FF00638F82D71A6780BC672F893C21E35D3353F03D95D7F6E788A6D2
        E6D2C1B5F17E87E1FD4AD2F6DE4B7952EB1BC09E11FD99FE0258FF00C14534EF
        D9C7E23FC71F889F0E7C2DFF0004E4D0B5EF1578AFF6869BC33378F22F14C3F1
        F35DBFD5ADBED1E18F0A782B489341B0F0E45E1FFECF76D204E92FDB127BD995
        13CAF130BC0DE1A53E1AC8386E8E57C3F3E26AFC0EF3CAD8579C4D7133AD5F85
        F30C746B3C927869F3E0E38C74542B47130719C609D17084D4FAEAE719EBCC31
        98C9623191C0C33658384FEAADE079238FA145C7EB8AAA4AABA7CEDC1D3778B7
        EFFBCADF297C2FB1FDB1FE3EDDFC7BF8FF00F0DFC23A76A5FB357ECCFAE5BF85
        3E2378CEE35F3A6EB63C536DA0F86FC4DAFDAF87B49BB896D7C456FE15D1BC45
        A7DE78963B4BAB7BFD26DAE20B992DE58EE2C1750FDB6FD95BE219F137852D16
        5B8F3A5682324B104962A33D4F63824FBE327BA7FC133FE00FED2DE06FD91FF6
        09F8456FF047C4FE22F80BFB64FC3DFDA93E32FEDEDF12878DBE127867FE10E8
        FF006A0F0A4FAD7C19D2E3F02EBBAEDE78C7C55A8C3E1FB9F0C787F55B8F0E68
        1657FE1BB5B6B1BBBB8A28AF3C4FF0FAC3E3FF00D93B51D53E1B78D3C59F0ABC
        453B2788BE1FF8BFC47E03D7239008CC7AC78535ABDD03514F29F2D195BDB098
        796CC5931B492466BF98BE99FE16E0782380785334CA32F585787CBA181CCAA5
        36A50AD99E0B0F86AD5F149C65294638975E71517C8B9F0D53929C61CB39FDDF
        861C455B35CE332C3E22BAA8A55E55B0EA4DDE387AB52A4234DF46E1ECD3D9BE
        5A90BBBDD2FE6EBFE0E017F33FE0A23E246F5F857F0C7F4D2EF05154BFE0BE52
        F9DFF0508F10C99CEEF857F0C8E78E9FD997847400743E83D7A9A2BFB97E8DB8
        8FAD7805E10626F7F6FE1FF0D55BDEF7E7CB68BBDFE67E5DC6D1E4E2EE2387F2
        E718E5F255E491FD1D7EC1BE141E32FF00826EFECB7A4942FBBE16D9A90071F3
        6A3A981DC1E738F5EB8C77F68F851F08B50F875F0F3E297C26B2F0AE9A346F8A
        BF117C1FF1135FF10B4B723545D47C17A7DC697A65AC700736B25BB5ADCB8776
        5122903AD7F30FFB39FF00C1737E2AFECE7F03FE1B7C10D17E067C3FF11E95F0
        DBC3907872C75CD53C45E22B5D43528209EE27171756F6919B78A526E194AC47
        66141EA4D7B5FF00C446FF001A7FE8DC7E187FE155E2AFFE355FE4E673F45DFA
        6FE49C71E2CE3B80721CAE870F71E71371CD48D4971970A52963B87789B38CC6
        BAA7570D89CD14E8FD670389A72942AD286230F51A947D957A6A51FDF70DC73E
        1762B2BE1FA59B62F133C665382CA938ACB71F254B1981C3D08DE33850E59FB3
        AD4DD9A6E135FCD16D3FE8DBC05E12F897FB3EFC5ED33E34FC19B8B5B1F15D9D
        85E68DA8D96A56F7173A0789BC3FA9085EFF00C3BE25D3ECEFB4EB8D4747B8BA
        B5B0D40411DEDACD6FA9E9BA66A769716F7D616D7117AB78F75CD5FC6DF05759
        F80DF0FF00E047C17FD9B7E15F88BC4B2F8CFC5DE0BF81FE0CD33C19A5F8C3C5
        12CD6B7726A9AE59E8D6FA6E973CF717DA7693A8DFDD7F661D5351D4347D2A6B
        BD4A586CA282BF973FF888DFE34FFD1B8FC30FFC2ABC55FF00C6A8FF00888DFE
        34FF00D1B8FC30FF00C2ABC55FFC6AB7C9FC11FDA4B90706E3B80B2AC360B09C
        319929C71D97C38E383A4AB53AB18D3C4518D69E692C461A8E2A9C152C5D2C2D
        5A30C552BD3C42AB094938C5712F8298CCCE8E6F88955A98FA0D3A55DE5598FB
        B28B7284A5054542A4E9C9B9539548CA54E56941C5A4CFDFABFF008277BE21F8
        07F063F67DB9F08E95A5F85FE05DDFC69D43C3D7D6B25C4979AD5EFC6FF88327
        C48F14DCEA30CEEF043247AFCD70F07D976A4AB712348010AABF587C31F8B9F1
        1FC376FF000ADFE21FC0BF815F18FE20FC06D22FB41F81BF1B7E24F8260D77E2
        AFC36D32FF004B4D22E61D1BC5F732CDAED99BCB182DACB55B8D0753F0F5F6B7
        A740B69AA5E5D362E53F955FF888DFE34FFD1B8FC30FFC2ABC55FF00C6A8FF00
        888DFE34FF00D1B8FC30FF00C2ABC55FFC6ABD7C9FC2CFDA6990E6F9867B94D1
        CBF079A66796E5D94E2B151E33E08ABED30594E5F85CAF2F8CE857CC6AE1AA55
        C360B0787A70C4D4A32C4B9C1D79569622A55AB3E5C4E75E07E330D4B0989957
        AB87A15EBE269D3796E67171AB89AD53115DA9C2946718D4AB56729414942CD4
        14541462BFA83D03C63F11F4797E32E85F133E19FC33FDA57E1BFC76F12378EB
        C79F0D7E35F85F4CF157832EBC73235BC7378820D0351B5BDD15567D3AD6CB4B
        974C9B4C9ACA2B3D2340874E5B087494866AF7FE23D5EE7E26FC2BF1E7863F67
        AF84FF000CF4AF843F06FE23FC0FF02F80BE1FE9CDE19F057863C25F1321920D
        64685A168F058E99A3ADBA48CD6D6161670D8977763107662DFCC27FC446FF00
        1A7FE8DC7E187FE155E2AFFE3547FC446FF1A7FE8DC7E187FE155E2AFF00E355
        E8E03803F6A0E5D9161B8770FF0050796E12BCB15456238C781B178A55E789A9
        8C9CE78EC563EB636AC6789AB52A4E955C44E8CD4E54E74E54A5283C6AE67E05
        56C5D4C6CD5655EA41539B865B9A53A6E2A9C6924A9429C6946D4E318A718292
        6949352499FBFDF0EBE0CD8FC37F077ED1DF0E350F83DE0CF891E0FF00DA6AC3
        E0F695F1134DF16C1F6AB5BBD2BE0C78A7C4DE2FF0CD87F67CF05EE95748358F
        156A5700EA16372B6F398AE1639591547BD78F7C75FB4078DBE3E7877F68C7BC
        BDD2757D03C59E0FF105B7C3DD2B5CD6A3F043E9FE118F4EB7FF00847A6B09EF
        2612D9EBB0D8CEFAC4EF119CDE6A97B79662D5D6D96DFF00987FF888DFE34FFD
        1B8FC30FFC2ABC55FF00C6A8FF00888DFE34FF00D1B8FC30FF00C2ABC55FFC6A
        BCAA5E137ED2EA193E4190D1C365F4B2BE19C6E0B1F93E1E9F1B706D3961B139
        7D5C757C1CE58886691C4D7850AB98E2E70A388AD568DA74E0E0E9E1F0D1A3D3
        2CF7C119E27178C9CAB4F118EA5568E2672CAF3292A94EB468C2AA50747D9C1C
        A342927284632F75BBDE7372FE93B59D1755F15E83F147C229F0E344F09E93F1
        73F6B0D6BF6C2F14DD586A7AAEA378FF00133C49F0F6C7C01AF41135FC854E97
        796F64BA8C085449644C5A7C59B6B7466F26B6F816342D2BF684F0CFFC211A7F
        88749FDA3FE15C1F083C6D7373797B637D0F83D35E8B5EB8B4B192D99E22D773
        2490C8B730CD07973481E29632D137E057FC446FF1A7FE8DC7E187FE155E2AFF
        00E3547FC446FF001A7FE8DC7E187FE155E2AFFE355C157C13FDA435B8B29F1B
        4F2ECA971151CAEAE4D4B1D4B8C782687B3CB6B52C4509E1A1468E654E8469AA
        38AAD4E9A54FF73170547D9FB1A2E9EB1E24F05A397CB2B55B12F052AF1C4CA8
        CB2DCCE7CD5E1284E351CE546536F9E9C252BCBDE69F35D4A57FE9AFE26F89FE
        36FC48F893E0EF8A76312FC3A1F0DE5F86E9E05F877E08D4753D33C0FA1D87C3
        2D52D35BD0B4C5D112E46993E9EFAA5BC8D3E9F269DFD9B269CF1E932D8CD630
        98E6C7D47C1F7DE3DF8EBE34F8E5AA7856D3C23AC78F356B5D735AD1B4BBFBED
        474D8F568F4FB3B2BEBCB3975177BC8935196CFF00B427B692596282EEE2E12C
        8DBD80B6B3B6FE6B3FE2237F8D3FF46E3F0C3FF0AAF157FF001AA3FE2237F8D3
        FF0046E3F0C3FF000AAF157FF1AAE1E2BF00BF68BF1AE559F64DC4795E5798E0
        388F38FEDECCE956E34E0C6A79A7B0AD86FAC61ED99AFA941D0AF3A52C360FD8
        616705494E8BFABD0F67AE5FC55E0CE5788C2627055F1142B60B0CF074251CB3
        32D30EE71A9C93BD17ED5F3C632552AF3D44F99A92E79F37CBBFF05E339FDBFF
        005FFF0067E16FC345FF00BE74CBC1FD28AF867F6D3FDACBC43FB68FC70BEF8D
        FE27F09E8DE0BD56FBC39E1FF0E3E87A15EDEDFE9F1C1E1F826821B85B8D4156
        E0CB70252D2A91B1480138A2BFD76F00B8533EE05F053C2DE0DE28C3D3C27117
        0CF0470FE4B9D61A96268632950CCB0180A343154A9E2B0B3AB87C446156124A
        AD1A93A734AF1934EE7F3DF16E3F099AF1367B9960272A982C76698CC4E16728
        4A9CA746AD694E9C9D39A8CE0DC5AF7651525B3573FFD9}
      Visible = False
    end
    object Image1: TImage
      Left = 4
      Top = 5
      Width = 116
      Height = 157
      Center = True
      PopupMenu = PopupMenu1
    end
    object DBText9: TDBText
      Left = 7
      Top = 253
      Width = 110
      Height = 15
      Alignment = taCenter
      DataField = 'CODIGO'
      DataSource = Dm.Ds_CLIENTES
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 25
      Top = 275
      Width = 71
      Height = 13
      Caption = 'Data Cadastro:'
    end
    object DBText7: TDBText
      Left = 6
      Top = 288
      Width = 110
      Height = 15
      Alignment = taCenter
      DataField = 'DATA_CADASTRO'
      DataSource = Dm.Ds_CLIENTES
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label32: TLabel
      Left = 37
      Top = 310
      Width = 47
      Height = 13
      Caption = 'Registros:'
    end
    object DBText10: TDBText
      Left = 6
      Top = 324
      Width = 110
      Height = 15
      Alignment = taCenter
      DataField = 'COUNT'
      DataSource = Ds_Contador
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object SbInserirFoto: TBitBtn
      Left = 7
      Top = 167
      Width = 109
      Height = 25
      Cursor = crHandPoint
      Caption = '&Imagem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = SbInserirFotoClick
    end
    object Btn_ApagarImagem: TBitBtn
      Left = 7
      Top = 199
      Width = 109
      Height = 25
      Cursor = crHandPoint
      Caption = 'Apa&gar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_ApagarImagemClick
    end
  end
  object PageControl2: TPageControl
    Left = 8
    Top = 46
    Width = 649
    Height = 367
    Cursor = crHandPoint
    ActivePage = TabSheet5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnChange = PageControl2Change
    OnChanging = PageControl2Changing
    object TabSheet1: TTabSheet
      Caption = 'Dados do Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 336
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label7: TLabel
          Left = 8
          Top = 6
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 193
          Top = 6
          Width = 110
          Height = 13
          Caption = 'Nome do Cliente Titular'
          FocusControl = DBEdit2
        end
        object Label8: TLabel
          Left = 400
          Top = 46
          Width = 24
          Height = 13
          Caption = 'Sexo'
        end
        object Label9: TLabel
          Left = 542
          Top = 46
          Width = 82
          Height = 13
          Caption = 'Data Nascimento'
          FocusControl = DBEdit3
        end
        object Label12: TLabel
          Left = 8
          Top = 46
          Width = 38
          Height = 13
          Caption = 'Religi'#227'o'
        end
        object Label10: TLabel
          Left = 8
          Top = 206
          Width = 75
          Height = 13
          Caption = '(DDD) Telefone'
          FocusControl = DBEdit5
        end
        object Label13: TLabel
          Left = 8
          Top = 126
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit8
        end
        object Label14: TLabel
          Left = 8
          Top = 166
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit9
        end
        object Label16: TLabel
          Left = 211
          Top = 166
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit10
        end
        object Label19: TLabel
          Left = 381
          Top = 166
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit11
        end
        object Label20: TLabel
          Left = 469
          Top = 166
          Width = 33
          Height = 13
          Caption = 'Estado'
          FocusControl = DBEdit12
        end
        object Label21: TLabel
          Left = 589
          Top = 166
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object Label26: TLabel
          Left = 233
          Top = 206
          Width = 75
          Height = 13
          Caption = 'Dia Vencimento'
        end
        object Label30: TLabel
          Left = 8
          Top = 246
          Width = 66
          Height = 13
          Caption = 'Observa'#231#245'es:'
        end
        object Label_Matricula: TDBText
          Left = 8
          Top = 20
          Width = 80
          Height = 19
          Alignment = taCenter
          Color = clWhite
          DataField = 'CODIGO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label3: TLabel
          Left = 98
          Top = 6
          Width = 68
          Height = 13
          Caption = 'Data Cadastro'
          FocusControl = DBEdit1
        end
        object Label4: TLabel
          Left = 218
          Top = 46
          Width = 55
          Height = 13
          Caption = 'Estado Civil'
        end
        object Label5: TLabel
          Left = 8
          Top = 86
          Width = 16
          Height = 13
          Caption = 'RG'
          FocusControl = DBEdit4
        end
        object Label15: TLabel
          Left = 254
          Top = 86
          Width = 20
          Height = 13
          Caption = 'CPF'
          FocusControl = DBEdit6
        end
        object Label17: TLabel
          Left = 506
          Top = 86
          Width = 90
          Height = 13
          Caption = 'N'#186' T'#237'tulo de Eleitor'
          FocusControl = DBEdit17
        end
        object Label11: TLabel
          Left = 131
          Top = 206
          Width = 91
          Height = 13
          Caption = 'Pagamento Mensal'
        end
        object Label18: TLabel
          Left = 323
          Top = 206
          Width = 35
          Height = 13
          Caption = 'Modelo'
        end
        object Label1: TLabel
          Left = 380
          Top = 126
          Width = 98
          Height = 13
          Caption = 'Ponto de Refer'#234'ncia'
          FocusControl = DBEdit7
        end
        object Label31: TLabel
          Left = 425
          Top = 206
          Width = 54
          Height = 13
          Caption = 'Promotor(a)'
        end
        object DBText8: TDBText
          Left = 574
          Top = 222
          Width = 60
          Height = 16
          DataField = 'CODIGO_P'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel
          Left = 574
          Top = 206
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label33: TLabel
          Left = 205
          Top = 219
          Width = 17
          Height = 22
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 193
          Top = 20
          Width = 438
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NOME_CLIENTE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = DBEdit2Exit
        end
        object DBComboBox4: TDBComboBox
          Left = 400
          Top = 60
          Width = 102
          Height = 21
          Style = csDropDownList
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'SEXO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            'FEMININO'
            'MASCULINO')
          ParentFont = False
          TabOrder = 5
          OnClick = DBComboBox4Click
        end
        object DBEdit3: TDBEdit
          Left = 542
          Top = 60
          Width = 90
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DATA_NASCIMENTO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnEnter = DBEdit3Enter
        end
        object DBEdit5: TDBEdit
          Left = 8
          Top = 220
          Width = 114
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'TELEFONE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object DBEdit8: TDBEdit
          Left = 8
          Top = 140
          Width = 365
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit9: TDBEdit
          Left = 8
          Top = 180
          Width = 193
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnExit = DBEdit9Exit
        end
        object DBEdit10: TDBEdit
          Left = 211
          Top = 180
          Width = 161
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnExit = DBEdit10Exit
        end
        object DBEdit11: TDBEdit
          Left = 381
          Top = 180
          Width = 78
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
        object DBEdit12: TDBEdit
          Left = 469
          Top = 180
          Width = 111
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'ESTADO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object DBComboBox6: TDBComboBox
          Left = 589
          Top = 180
          Width = 41
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            'AC'
            'AL '
            'AM'
            'AP'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA '
            'MG'
            'MS'
            'MT'
            'PA'
            'PB'
            'PE'
            'PI'
            'PR'
            'RJ'
            'RN'
            'RO'
            'RR'
            'RS'
            'SC'
            'SE'
            'SP'
            'TO')
          ParentFont = False
          TabOrder = 16
          OnChange = DBComboBox6Change
        end
        object DBComboBox9: TDBComboBox
          Left = 233
          Top = 220
          Width = 80
          Height = 21
          Hint = 'de cada m'#234's.'
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'DIA_VENCIMENTO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            '05'
            '10'
            '15'
            '20'
            '25'
            '30')
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          OnClick = DBComboBox9Click
          OnExit = DBComboBox9Exit
          OnKeyPress = DBComboBox9KeyPress
        end
        object DBMemo_OBS: TDBMemo
          Left = 8
          Top = 260
          Width = 623
          Height = 65
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          DataField = 'OBS'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnEnter = DBMemo_OBSEnter
          OnExit = DBMemo_OBSExit
          OnKeyPress = DBMemo_OBSKeyPress
        end
        object DBComboBox15: TDBComboBox
          Left = 8
          Top = 60
          Width = 175
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'RELIGIAO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            'CAT'#211'LICO(A)'
            'EVANG'#201'LICO(A)')
          ParentFont = False
          TabOrder = 3
          OnClick = DBComboBox15Click
        end
        object DBDateEdit_DN: TDBDateEdit
          Left = 542
          Top = 60
          Width = 90
          Height = 21
          DataField = 'DATA_NASCIMENTO'
          DataSource = Dm.Ds_CLIENTES
          ClickKey = 32776
          DialogTitle = 'Selecione a Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 23
          YearDigits = dyFour
          Visible = False
          OnExit = DBDateEdit_DNExit
        end
        object DBEdit1: TDBEdit
          Left = 98
          Top = 21
          Width = 83
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'DATA_CADASTRO'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnEnter = DBEdit1Enter
        end
        object DBDateEdit_DC: TDBDateEdit
          Left = 98
          Top = 20
          Width = 87
          Height = 21
          DataField = 'DATA_CADASTRO'
          DataSource = Dm.Ds_CLIENTES
          ClickKey = 32776
          DialogTitle = 'Selecione a Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 22
          YearDigits = dyFour
          Visible = False
          OnExit = DBDateEdit_DCExit
        end
        object DBComboBox1: TDBComboBox
          Left = 218
          Top = 60
          Width = 143
          Height = 21
          Style = csDropDownList
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'ESTADO_CIVIL'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            'CASADO(A)'
            'DESQUITADO(A)'
            'DIVORCIADO(A)'
            'OUTROS'
            'SOLTEIRO(A)'
            'VI'#218'VO(A)')
          ParentFont = False
          TabOrder = 4
          OnClick = DBComboBox1Click
        end
        object DBEdit4: TDBEdit
          Left = 8
          Top = 100
          Width = 125
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'RG'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit6: TDBEdit
          Left = 254
          Top = 100
          Width = 107
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CPF'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit17: TDBEdit
          Left = 506
          Top = 100
          Width = 125
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'TE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object DBComboBox2: TDBComboBox
          Left = 131
          Top = 220
          Width = 70
          Height = 21
          Hint = 'do sal'#225'rio m'#237'nimo.'
          Style = csDropDownList
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'PAGAMENTO_MENSAL'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            '5'
            '6'
            '9')
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
          OnClick = DBComboBox2Click
        end
        object DBComboBox3: TDBComboBox
          Left = 323
          Top = 220
          Width = 92
          Height = 21
          Style = csDropDownList
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'MODELOS'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          Items.Strings = (
            'COM VISOR'
            'LUXO'
            'STAND')
          ParentFont = False
          TabOrder = 20
          OnClick = DBComboBox3Click
        end
        object DBEdit7: TDBEdit
          Left = 380
          Top = 140
          Width = 251
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'PONTO_REFERENCIA'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object DBComboBox5: TDBComboBox
          Left = 425
          Top = 220
          Width = 141
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          CharCase = ecUpperCase
          DataField = 'APELIDO_PROMOTOR'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentFont = False
          TabOrder = 21
          OnClick = DBComboBox5Click
          OnExit = DBComboBox5Exit
          OnKeyPress = DBComboBox5KeyPress
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Dados do(s) Dependente(s)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 336
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Bevel2: TBevel
          Left = 8
          Top = 8
          Width = 625
          Height = 41
        end
        object DBText13: TDBText
          Left = 64
          Top = 14
          Width = 561
          Height = 27
          DataField = 'NOME_CLIENTE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label59: TLabel
          Left = 16
          Top = 20
          Width = 44
          Height = 13
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText14: TDBText
          Left = 648
          Top = 32
          Width = 68
          Height = 16
          AutoSize = True
          DataField = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 648
          Top = 16
          Width = 28
          Height = 13
          Caption = 'CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 8
          Top = 120
          Width = 65
          Height = 13
          Caption = 'C'#243'digo Titular'
        end
        object Label28: TLabel
          Left = 98
          Top = 120
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label39: TLabel
          Left = 8
          Top = 160
          Width = 105
          Height = 13
          Caption = 'Nome do Dependente'
          FocusControl = DBEdit16
        end
        object Label62: TLabel
          Left = 432
          Top = 160
          Width = 54
          Height = 13
          Caption = 'Parentesco'
          FocusControl = DBEdit18
        end
        object DBText15: TDBText
          Left = 8
          Top = 136
          Width = 80
          Height = 19
          Alignment = taCenter
          Color = clWhite
          DataField = 'CODIGO'
          DataSource = Dm.Ds_DEPENDE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object DBText16: TDBText
          Left = 96
          Top = 136
          Width = 80
          Height = 19
          Alignment = taCenter
          Color = clWhite
          DataField = 'COD_DEPE'
          DataSource = Dm.Ds_DEPENDE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label63: TLabel
          Left = 8
          Top = 55
          Width = 73
          Height = 13
          Caption = 'Dependente(s):'
        end
        object DBEdit16: TDBEdit
          Left = 8
          Top = 176
          Width = 414
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'NOME_DEPENDENTE'
          DataSource = Dm.Ds_DEPENDE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit16Exit
        end
        object DBEdit18: TDBEdit
          Left = 432
          Top = 176
          Width = 199
          Height = 21
          BevelInner = bvLowered
          BevelOuter = bvRaised
          BevelKind = bkTile
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'PARENTESCO'
          DataSource = Dm.Ds_DEPENDE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBGrid_Dependentes_PF: TDBGrid
          Left = 8
          Top = 72
          Width = 625
          Height = 41
          DataSource = DS_Dependentes
          FixedColor = cl3DLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 10
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Visible = False
          OnCellClick = DBGrid_Dependentes_PFCellClick
          OnKeyDown = DBGrid_Dependentes_PFKeyDown
          OnKeyUp = DBGrid_Dependentes_PFKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_DEPE'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_DEPENDENTE'
              Width = 327
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARENTESCO'
              Width = 100
              Visible = True
            end>
        end
        object BtnDep_Novo_PF: TBitBtn
          Left = 8
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Alterar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = BtnDep_Novo_PFClick
        end
        object BtnDep_Salvar_PF: TBitBtn
          Left = 78
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Salvar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = BtnDep_Salvar_PFClick
        end
        object BtnDep_Excluir_PF: TBitBtn
          Left = 148
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Excluir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = BtnDep_Excluir_PFClick
        end
        object BtnDep_Cancelar_PF: TBitBtn
          Left = 218
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Cancelar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = BtnDep_Cancelar_PFClick
        end
        object BtnDep_Anterior_PF: TBitBtn
          Left = 308
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Anterior'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = BtnDep_Anterior_PFClick
        end
        object BtnDep_Proximo_PF: TBitBtn
          Left = 378
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Pr'#243'ximo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = BtnDep_Proximo_PFClick
          Layout = blGlyphRight
        end
        object BtnDep_Sair_PF: TBitBtn
          Left = 562
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = 'Sair'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = BtnDep_Sair_PFClick
          Layout = blGlyphRight
        end
        object BtnDep_Voltar_PF: TBitBtn
          Left = 490
          Top = 295
          Width = 70
          Height = 30
          Cursor = crHandPoint
          Caption = '<- Voltar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = BtnDep_Voltar_PFClick
          Layout = blGlyphRight
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Dados Financeiros do Cliente'
      ImageIndex = 2
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 336
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object DBText17: TDBText
          Left = 648
          Top = 32
          Width = 68
          Height = 16
          AutoSize = True
          DataField = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label64: TLabel
          Left = 648
          Top = 16
          Width = 28
          Height = 13
          Caption = 'CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel4: TBevel
          Left = 8
          Top = 8
          Width = 625
          Height = 41
        end
        object DBText18: TDBText
          Left = 64
          Top = 14
          Width = 561
          Height = 27
          DataField = 'NOME_CLIENTE'
          DataSource = Dm.Ds_CLIENTES
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -24
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label65: TLabel
          Left = 16
          Top = 20
          Width = 44
          Height = 13
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid_Hist_Parcelas_PF: TDBGrid
          Left = 8
          Top = 59
          Width = 625
          Height = 269
          Color = clWhite
          DataSource = DS_HistParcelas
          FixedColor = cl3DLight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = DBGrid_Hist_Parcelas_PFDrawColumnCell
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
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 672
    Top = 128
    object Arquivo1: TMenuItem
      Caption = 'Menu'
      ShortCut = 123
      Visible = False
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        ShortCut = 122
        OnClick = Fechar1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object NovoCadastro1: TMenuItem
        Caption = 'Novo Cadastro'
        ShortCut = 112
        OnClick = SbNovoClick
      end
      object DadosdoCliente1: TMenuItem
        Caption = 'Dados do Cliente'
        ShortCut = 113
      end
      object DadosdoConjuge1: TMenuItem
        Caption = 'Dados do(s) Dependente(s)'
        ShortCut = 114
        OnClick = DadosdoConjuge1Click
      end
      object DadosFinanceiros1: TMenuItem
        Caption = 'Dados Financeiros do Cliente'
        ShortCut = 115
        OnClick = DadosFinanceiros1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Localizar1: TMenuItem
        Caption = 'Localizar'
        ShortCut = 120
        OnClick = SbLocalizarClick
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Dm.IBDS_CLIENTES
    OnStateChange = DataSource1StateChange
    OnDataChange = DataSource1DataChange
    Left = 668
    Top = 88
  end
  object IBQuery_Codigo: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select CODIGO, NOME_CLIENTE from CLIENTES'
      'order by CODIGO')
    Left = 56
    Top = 424
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = 'jpg'
    Filter = 
      'Formato de interc'#226'mbio de arquivos JPEG (*.jpg;*jpeg)|*.jpg;*jpe' +
      'g'
    InitialDir = 'C:\'
    Title = 'Inserir Imagem'
    Left = 728
    Top = 162
  end
  object IBQuery_CEP: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    AutoCalcFields = False
    CachedUpdates = True
    SQL.Strings = (
      'select * from CEPS'
      'order by NOME_CID')
    Left = 48
    Top = 241
    object IBQuery_CEPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CEPS"."CODIGO"'
      Required = True
    end
    object IBQuery_CEPNOME_CID: TIBStringField
      FieldName = 'NOME_CID'
      Origin = '"CEPS"."NOME_CID"'
      Size = 25
    end
    object IBQuery_CEPCEP_CID: TIBStringField
      FieldName = 'CEP_CID'
      Origin = '"CEPS"."CEP_CID"'
      Size = 10
    end
    object IBQuery_CEPESTADO: TIBStringField
      FieldName = 'ESTADO'
      Origin = '"CEPS"."ESTADO"'
      Size = 25
    end
    object IBQuery_CEPUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CEPS"."UF"'
      Size = 2
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 672
    Top = 168
    object ExcluirImagemdaLogomarca1: TMenuItem
      Caption = '&Apagar Imagem da Foto'
      OnClick = Btn_ApagarImagemClick
    end
    object SalvarImagemdaLogomarca1: TMenuItem
      Caption = 'Salvar Imagem da Foto'
      OnClick = SalvarImagemdaLogomarca1Click
    end
  end
  object IBQuery_Dependentes: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    SQL.Strings = (
      'select * from DEPENDE'
      'order by COD_DEPE')
    Left = 92
    Top = 241
    object IBQuery_DependentesCODIGO: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo Titular'
      DisplayWidth = 17
      FieldName = 'CODIGO'
      Origin = '"DEPENDE"."CODIGO"'
      Size = 11
    end
    object IBQuery_DependentesCOD_DEPE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 18
      FieldName = 'COD_DEPE'
      Origin = '"DEPENDE"."COD_DEPE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '####0000'
    end
    object IBQuery_DependentesNOME_DEPENDENTE: TIBStringField
      DisplayLabel = 'Nome do Dependente / Usu'#225'rio Empresa'
      DisplayWidth = 66
      FieldName = 'NOME_DEPENDENTE'
      Origin = '"DEPENDE"."NOME_DEPENDENTE"'
      Size = 50
    end
    object IBQuery_DependentesPARENTESCO: TIBStringField
      DisplayLabel = 'Parentesco'
      DisplayWidth = 27
      FieldName = 'PARENTESCO'
      Origin = '"DEPENDE"."PARENTESCO"'
    end
  end
  object DS_Dependentes: TDataSource
    DataSet = IBQuery_Dependentes
    Left = 92
    Top = 281
  end
  object DataSource2: TDataSource
    DataSet = Dm.IBDS_DEPENDE
    OnStateChange = DataSource2StateChange
    Left = 668
    Top = 201
  end
  object IBQuery_Contador: TIBQuery
    Database = Dm.IBDatabase
    Transaction = Dm.IBTransaction
    ForcedRefresh = True
    CachedUpdates = True
    SQL.Strings = (
      'select count (CODIGO) from CLIENTES')
    Left = 717
    Top = 117
    object IBQuery_ContadorCOUNT: TIntegerField
      DisplayLabel = 'Registros:'
      FieldName = 'COUNT'
      Required = True
      DisplayFormat = '##00'
    end
  end
  object Ds_Contador: TDataSource
    DataSet = IBQuery_Contador
    Left = 744
    Top = 120
  end
  object IBQuery_HistParcelas: TIBQuery
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
    object IBQuery_HistParcelasCOD_CARN: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_CARN'
      Origin = '"CARNE"."COD_CARN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object IBQuery_HistParcelasDATA_CONTRATO: TDateTimeField
      DisplayLabel = 'Data Contrato'
      FieldName = 'DATA_CONTRATO'
      Origin = '"CARNE"."DATA_CONTRATO"'
      Visible = False
    end
    object IBQuery_HistParcelasCONTRATO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Contrato'
      FieldName = 'CONTRATO'
      Origin = '"CARNE"."CONTRATO"'
      Required = True
      Visible = False
      DisplayFormat = '####0000'
    end
    object IBQuery_HistParcelasNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"CARNE"."NOME_CLIENTE"'
      Visible = False
      Size = 50
    end
    object IBQuery_HistParcelasCODIGO: TIBStringField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'CODIGO'
      Origin = '"CARNE"."CODIGO"'
      Visible = False
      Size = 11
    end
    object IBQuery_HistParcelasRG: TIBStringField
      FieldName = 'RG'
      Origin = '"CARNE"."RG"'
      Visible = False
      Size = 25
    end
    object IBQuery_HistParcelasCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CARNE"."CPF"'
      Visible = False
      Size = 14
    end
    object IBQuery_HistParcelasTE: TIBStringField
      FieldName = 'TE'
      Origin = '"CARNE"."TE"'
      Visible = False
      Size = 25
    end
    object IBQuery_HistParcelasENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"CARNE"."ENDERECO"'
      Visible = False
      Size = 50
    end
    object IBQuery_HistParcelasBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"CARNE"."BAIRRO"'
      Visible = False
      Size = 30
    end
    object IBQuery_HistParcelasCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"CARNE"."CIDADE"'
      Visible = False
      Size = 25
    end
    object IBQuery_HistParcelasCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CARNE"."CEP"'
      Visible = False
      Size = 10
    end
    object IBQuery_HistParcelasESTADO: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      Origin = '"CARNE"."ESTADO"'
      Visible = False
      Size = 25
    end
    object IBQuery_HistParcelasUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CARNE"."UF"'
      Visible = False
      Size = 2
    end
    object IBQuery_HistParcelasNUMERO_PARCELA: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Parcela'
      FieldName = 'NUMERO_PARCELA'
      Origin = '"CARNE"."NUMERO_PARCELA"'
      Size = 5
    end
    object IBQuery_HistParcelasMES_REFERENCIA: TIBStringField
      DisplayLabel = 'Referente'
      FieldName = 'MES_REFERENCIA'
      Origin = '"CARNE"."MES_REFERENCIA"'
      Size = 15
    end
    object IBQuery_HistParcelasDATA_VENCIMENTO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DATA_VENCIMENTO'
      Origin = '"CARNE"."DATA_VENCIMENTO"'
    end
    object IBQuery_HistParcelasVALOR_MENSAL: TIBBCDField
      DisplayLabel = 'Valor Mensalidade'
      FieldName = 'VALOR_MENSAL'
      Origin = '"CARNE"."VALOR_MENSAL"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_HistParcelasDATA_PAGAMENTO: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Data Pagamento'
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"CARNE"."DATA_PAGAMENTO"'
    end
    object IBQuery_HistParcelasVALOR_PAGO: TIBBCDField
      DisplayLabel = 'Valor Pago'
      FieldName = 'VALOR_PAGO'
      Origin = '"CARNE"."VALOR_PAGO"'
      currency = True
      Precision = 18
      Size = 2
    end
    object IBQuery_HistParcelasOBS: TIBStringField
      DisplayLabel = 'Observa'#231#227'o:'
      FieldName = 'OBS'
      Origin = '"CARNE"."OBS"'
      Size = 50
    end
    object IBQuery_HistParcelasNUMERO_DOC: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'N'#186' do Documento'
      FieldName = 'NUMERO_DOC'
      Origin = '"CARNE"."NUMERO_DOC"'
      Required = True
      Size = 22
    end
    object IBQuery_HistParcelasSITUACAO: TIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      Origin = '"CARNE"."SITUACAO"'
      Visible = False
      Size = 1
    end
    object IBQuery_HistParcelasANO_BASE: TIBStringField
      DisplayLabel = 'Ano Base'
      FieldName = 'ANO_BASE'
      Origin = '"CARNE"."ANO_BASE"'
      Visible = False
      Size = 4
    end
    object IBQuery_HistParcelasUSUARIO: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"CARNE"."USUARIO"'
      Visible = False
    end
  end
  object DS_HistParcelas: TDataSource
    DataSet = IBQuery_HistParcelas
    Left = 208
    Top = 280
  end
  object DataSource3: TDataSource
    DataSet = Dm.IBDS_DEPENDE
    OnStateChange = DataSource3StateChange
    Left = 668
    Top = 233
  end
end
