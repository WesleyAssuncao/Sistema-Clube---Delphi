object Rel_depen: TRel_depen
  Left = 0
  Top = 0
  Caption = 'Rel_depen'
  ClientHeight = 465
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -38
    Top = -32
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = False
    Borders.DrawRight = False
    Borders.DrawBottom = True
    DataSource = DsRel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 77
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 184
        Top = 24
        Width = 238
        Height = 24
        Caption = 'Ficha de Dependentes '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 3
        Top = 54
        Width = 686
        Height = 34
        DrawKind = dkLine
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 115
      Width = 718
      Height = 38
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 16
        Top = 17
        Width = 81
        Height = 16
        Caption = 'MATRICULA '
      end
      object RLLabel3: TRLLabel
        Left = 136
        Top = 17
        Width = 47
        Height = 16
        Caption = 'NOME '
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 153
      Width = 718
      Height = 32
      object RLDBText1: TRLDBText
        Left = 16
        Top = 6
        Width = 126
        Height = 16
        DataField = 'MAT_DEPENDENTE'
        DataSource = DsRel
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 136
        Top = 6
        Width = 138
        Height = 16
        DataField = 'NOME_DEPENDENTE'
        DataSource = DsRel
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 185
      Width = 718
      Height = 48
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 3
        Top = 29
        Width = 60
        Height = 16
        Info = itFullDate
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 544
        Top = 29
        Width = 29
        Height = 16
        Info = itPageNumber
        Text = ''
      end
      object RLLabel4: TRLLabel
        Left = 476
        Top = 29
        Width = 44
        Height = 16
        Caption = 'Pagina'
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 593
        Top = 29
        Width = 112
        Height = 16
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel5: TRLLabel
        Left = 579
        Top = 29
        Width = 8
        Height = 16
        Caption = '/'
      end
    end
  end
  object Query_rel: TFDQuery
    Active = True
    Connection = Cadastro_dep.Con_Dp
    Transaction = Cadastro_dep.FDTransaction1
    SQL.Strings = (
      'select mat_dependente,nome_dependente from ficha_dependentes'
      'order by nome_dependente')
    Left = 448
    Top = 296
  end
  object DsRel: TDataSource
    DataSet = Query_rel
    Left = 504
    Top = 296
  end
end
