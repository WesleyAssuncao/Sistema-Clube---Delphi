object Cadastro_A: TCadastro_A
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Cadastro de Associado'
  ClientHeight = 520
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 88
    Width = 190
    Height = 23
    Caption = 'Matricula do Associado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 436
    Top = 88
    Width = 163
    Height = 23
    Caption = 'Nome do Associado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 136
    Width = 169
    Height = 23
    Caption = 'Data de Nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 436
    Top = 232
    Width = 40
    Height = 23
    Caption = 'Sexo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 237
    Width = 94
    Height = 23
    Caption = 'Estado Civil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 286
    Width = 31
    Height = 23
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 436
    Top = 286
    Width = 25
    Height = 23
    Caption = 'RG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 436
    Top = 136
    Width = 79
    Height = 23
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 192
    Width = 72
    Height = 23
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 436
    Top = 187
    Width = 45
    Height = 23
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 801
    Height = 65
    Align = alTop
  end
  object Label11: TLabel
    Left = 290
    Top = 24
    Width = 241
    Height = 24
    Caption = 'Cadastro de Associado '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Gravar: TBitBtn
    Left = 8
    Top = 455
    Width = 75
    Height = 25
    Caption = 'Gravar'
    Layout = blGlyphBottom
    Style = bsNew
    TabOrder = 0
    OnClick = GravarClick
  end
  object Alterar: TBitBtn
    Left = 123
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 1
    OnClick = AlterarClick
  end
  object Excluir: TButton
    Left = 350
    Top = 455
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 2
    OnClick = ExcluirClick
  end
  object Novo: TButton
    Left = 232
    Top = 455
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 3
    OnClick = NovoClick
  end
  object DBEdit1: TDBEdit
    Left = 224
    Top = 93
    Width = 183
    Height = 21
    DataField = 'MAT_TITULAR'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 616
    Top = 93
    Width = 161
    Height = 21
    DataField = 'NOME_TITULAR'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 224
    Top = 141
    Width = 183
    Height = 21
    DataField = 'NASC_TITULAR'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit4: TDBEdit
    Left = 616
    Top = 141
    Width = 161
    Height = 21
    DataField = 'END_TITULAR'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit5: TDBEdit
    Left = 224
    Top = 192
    Width = 183
    Height = 21
    DataField = 'TEL_TITULAR'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit6: TDBEdit
    Left = 616
    Top = 192
    Width = 161
    Height = 21
    DataField = 'EMAIL_TITULAR'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit7: TDBEdit
    Left = 224
    Top = 237
    Width = 183
    Height = 21
    DataField = 'ESTADOCIVIL_TITULAR'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit8: TDBEdit
    Left = 616
    Top = 237
    Width = 161
    Height = 21
    DataField = 'SEXO_TITULAR'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit9: TDBEdit
    Left = 224
    Top = 291
    Width = 183
    Height = 21
    DataField = 'CPF_TITULAR'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBEdit10: TDBEdit
    Left = 616
    Top = 291
    Width = 161
    Height = 21
    DataField = 'RG_TITULAR'
    DataSource = DataSource1
    TabOrder = 13
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 329
    Width = 769
    Height = 120
    DataSource = DataSource1
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'MAT_TITULAR'
        Title.Caption = 'Matricula'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_TITULAR'
        Title.Caption = 'Nome'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NASC_TITULAR'
        Title.Caption = 'Nascimento'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'END_TITULAR'
        Title.Caption = 'Endere'#231'o'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEL_TITULAR'
        Title.Caption = 'Telefone'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL_TITULAR'
        Title.Caption = 'Email'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTADOCIVIL_TITULAR'
        Title.Caption = 'EstadoCivil'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEXO_TITULAR'
        Title.Caption = 'Sexo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_TITULAR'
        Title.Caption = 'CPF'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG_TITULAR'
        Title.Caption = 'RG'
        Width = 101
        Visible = True
      end>
  end
  object Sair: TBitBtn
    Left = 456
    Top = 455
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 15
    OnClick = SairClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Wesley\Desktop\Delphi - Projeto - Clube final\' +
        'Projeto delphi - Clube - Vers'#227'o 2\Banco de dados\CLUBE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Transaction = FDTransaction1
    Left = 576
    Top = 456
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 616
    Top = 456
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'MAT_TITULAR'
    Connection = FDConnection1
    Transaction = FDTransaction1
    UpdateOptions.UpdateTableName = 'FICHA_ASSOCIADO'
    TableName = 'FICHA_ASSOCIADO'
    Left = 656
    Top = 456
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 704
    Top = 456
  end
end
