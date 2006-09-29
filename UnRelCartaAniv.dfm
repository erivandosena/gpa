object FrmRelCartaAniv: TFrmRelCartaAniv
  Left = 200
  Top = 392
  Width = 698
  Height = 503
  Caption = 'Pr'#233'-visualiza'#231#227'o de Impress'#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = FrmAniversariantes.IBQuery_Anin
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
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
      Top = 38
      Width = 718
      Height = 1019
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
        2696.104166666667000000
        1899.708333333333000000)
      BandType = rbDetail
      object QRExprMemo1: TQRExprMemo
        Left = 120
        Top = 288
        Width = 489
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.812500000000000000
          317.500000000000000000
          762.000000000000000000
          1293.812500000000000000)
        RemoveBlankLines = True
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Ilustr'#237'cimo(a) Senhor(a)'
          '{NOME_CLIENTE}')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRShape9: TQRShape
        Left = 200
        Top = 808
        Width = 281
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          529.166666666666700000
          2137.833333333333000000
          743.479166666666700000)
        Shape = qrsHorLine
      end
      object QRLabel42: TQRLabel
        Left = 318
        Top = 809
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          841.375000000000000000
          2140.479166666667000000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ger'#234'ncia'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRImageLogo: TQRImage
        Left = 64
        Top = 2
        Width = 227
        Height = 65
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          169.333333333333300000
          5.291666666666667000
          600.604166666666700000)
        AutoSize = True
        Center = True
        Picture.Data = {
          0954474946496D61676597070000474946383961E3004100B300000000008000
          00008000808000000080800080008080808080C0C0C0FF000000FF00FFFF0000
          00FFFF00FF00FFFFFFFFFF2C00000000E30041000004FEF0C929D13920EBCDBB
          FF60288E64699E68AA9A1742BDAFA55D746DDF78AEEF7CEFFFC0A070480CCE5C
          300A067040269FD0A8744AAD5AAFD8AC767B9531A19803774C2E9BCFE834369C
          64A71196265C4DAFDBEF65F704E31CC7452D7882838477085F1588634B19048E
          040C918F041B6285979899567C12197E8C9091A2A3A494194D9AA9AAA99E8796
          5A4BA1A4A2B2B30CA6AFABBABB747C185B8700B5B694C3B3A67DBCCACB5A4C9E
          594BA5C403C6C7A7CCD8D95433D0C2A5D4B3000BD5B7A58A9FB986A8DAAB4BE9
          538DB603E0A3E2D519D6006432EF7432C9EC30B9BB12CF963800A4068C0B47CF
          9C3E2973E0489CE08A10A72C0003763B27A5E0B486FE0CE60D3B684B1247185E
          E0B8A938E85046781AC90CA482819C2885086F822420B2A4C97E4A14B16129C8
          65B72D400DADB936E5904D51E2068CEA2909A74F5A005E4AD0F3A0D5C93A46B1
          64D00AE62BC51866A75CAC32B363CEAB91A886940A758137B80C9E3DE1EA35E9
          9BAC58F86104BCF7E1040D480DB3651A05035E5A0D1D410609372D5F7D44F184
          DDD455F1995F7BC45C28D4F689D3C7B4C8F1B4698CD24B3D9C321B22CC796D0C
          945190802E43B631E3C2701FE51306A99A230072A1025DA2721DD199FF0457A8
          F19A06ED1A605C64F66229E583387BAEB9EB4E437B0BE95BA95B40C2BD6CDAEF
          770D7208650AF9000DD6142EA06C3223578A88A0FE125B182E3CC3926D5B3D74
          116866BDA2D703968C3607842A05385D82006A97153F051A166085BA75E89E5F
          8E11938100280AC0817E0BB4785F7CC8ED77DF555FFD97483A612DA82061B2B1
          141613152611C7058C31218686EBC067899113EEC6071C5FE408D86E7320B81B
          0CA5C110DF28A6A4E865062CB628263E79CD435C709E25D8CF814612A6632786
          F5888851AE48E49F13C18437169C0606C80D841E6E38A1942E5C99A06E6D8E08
          C5690E79E968066246DA223E92A1E61A965F55A4A99B9C6278235ADD01269B96
          2FECF99D17DF4138D49CA8027A589A84029A0C27B4A6A96752259272A2A38F86
          19E97D4F9574928D4A16FBA4AC9EEA08D033C7FE5E630196E9B8F1CA911122B9
          D51E877EC71C848920AAA182854E296EAA98A645663D00F0CA2B98928E19AC7C
          2F10190845039D32141B33F9425B5040EE190C47FC4C1B4613F6866BA4B64076
          366FBE1A980764300272C321C4C4026AEE3094A8AB2EA4EDDAF5D6244F51E207
          46BD2DBACF595A69D7541732FD4601A350A5ABF1BA1DEF87907DF3E4BC255625
          C7E4B31A5902A8ABCC33F7DAF18C94E4ACF4CEB7ECFBF3D377049D20974417FD
          A538EDEE3C098D7E41ED75CB0DBE9557D556A718E3AF4C3FC6911C13426467CF
          ECBC5DF2DB5D7FE672785895BDB1AFE77259A9B0D132626BA9057FFDB2E0BD31
          32DA2052039AB7DE468B092CD51DDCB3E69FFF853D6838E1EFFD5B371A8DE7BA
          2BE466636DB32CF53DEA5124616BCEB9D39B27626A1B98337EF7D44D93AEBA99
          308EBEEE96B0BF6AD6BFC1C7BE0114955CD2F86919EB7E757C5D964DE6A5426E
          7067C3993CDB4BEDA1718FC7F2DEF8EEFC96D1EB4DE9E008DFBD1EF6CABFC705
          91AE77D599FB6934DED571CE3F3AF4F8C72D0AE5EC5BE910FDD000B13A88817B
          CFF25ED46E97A0E6E50F451F139FF91848218B79664914F44706817124F65D6B
          7E9FB39B6534F040B31D478290A3E03A30B7C20DFE658081891063B4C788F6A5
          E55F255451074A18BF3D204A2F0E7221E8841843D9B9494FE80386A29087C214
          12A77CE34B622EB89124055A4C5EC9F8830CFE3D28B836F5C11D445415123F68
          C1BD0CCC6515EA600FED67B11C36027F3CF48B62FEA53D3EBDA380B2238FE26A
          70BC0AB4875C6A7A55081767C724D5504BB3639F75FAE5417E75AD89D27BA203
          A3D891D74D118D887124BF3C93C95B958B5F3D4B92057371480A34F25F2F3BC2
          1232D7350C3CF08D8F8064D1DCE719546AF296007A50961A99253CE69126C9E0
          652713E4BADAFD492B6C8453144106452742244DFF29259F9635BB5D02304B7B
          84DF009D96A7546A2E68A569242B9B4236ABC112642474626F0E9104A749938E
          88148ACB84B9B6306A09208434621FBC17CE1EC64B88AE8CA42499C901E9D5CD
          50EEE12400A7E949535ED365C98CC200E1FE29BC77F433890D85473955375066
          C672031AF3675042394C10A24597F37C28C0C409C8454D949EEF30A64833FACC
          8D42B0A31E25683A4B4752927EB3A4A5B1E6BE4A8904EB65482D2F4D692D4B5A
          D2715621181BC3694E739ACE859AE614EB54DC3F15E14B62A6E39433580907B6
          0511B2FA06ABDEBCE452AD5AAE1012F377538DAB4E5D3830F86584628B3C9CBD
          12169E4586CBAF48DC9717D09A1B23590728F6E2E317F77A0EBC6630A25B7D94
          5C27FB51181A026E56204BDB56B1D94534959C55932A65D159BCD899D60CA7C0
          E8557775CED192B6B4A78D2D17FAE5D6AD6AC0B573ADAD6C772B054ECC343782
          C3ED09F9CADBE28EA14FBA8D4170275B5209CC1AF7B99872028260D1C510E413
          BAD8CD6C3D936B9A45865594D90D2F4D6A6459F19A571015BBA273CFCB5EDE24
          73B04588AF7CE74BDFFADAF7BE4238C253B5B982FEFAF7BF000EB080075C8279
          C12002003B}
      end
      object QRLabelDA: TQRLabel
        Left = 304
        Top = 147
        Width = 86
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          804.333333333333300000
          388.937500000000000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabelDA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRMemo1: TQRMemo
        Left = 120
        Top = 360
        Width = 489
        Height = 273
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          722.312500000000000000
          317.500000000000000000
          952.500000000000000000
          1293.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Prezado(a) Senhor(a):'
          ''
          'Queremos cumpriment'#225'-lo(a), desejando muita prosperidade, assim'
          'como manifestar nossos sinceros votos de agradecimentos por ser'
          
            'nosso cliente e em especial que esta data de seu anivers'#225'rio sej' +
            'a'
          
            'mais uma data de alegria como tantas outras que venham se realiz' +
            'ar.'
          ''
          'Feliz anivers'#225'rio, parab'#233'ns!'
          ''
          ''
          ''
          'Atenciosamente,')
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel1: TQRLabel
        Left = 397
        Top = 0
        Width = 146
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1050.395833333333000000
          0.000000000000000000
          386.291666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PLAMMOR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 20
      end
      object QRMemo2: TQRMemo
        Left = 294
        Top = 40
        Width = 352
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666666700000
          777.875000000000000000
          105.833333333333300000
          931.333333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Rua S'#227'o Paulo, 1030 Centro CEP:62760-000 Baturit'#233' - Ce'
          
            'CNPJ:11.704.202/0001-30 Tel.:(85) 347.1142 E-mail:plammor@bol.co' +
            'm.br')
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 433
        Top = 26
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          68.791666666666670000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A SUA AMIGA'
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
end
