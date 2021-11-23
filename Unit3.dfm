object Main: TMain
  Left = 512
  Top = 173
  Width = 1039
  Height = 713
  Caption = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1100#1085#1099#1081' '#1076#1077#1090#1077#1081#1083#1080#1085#1075
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 429
    Width = 1023
    Height = 225
    Align = alBottom
    Enabled = False
    TabOrder = 0
    object Label5: TLabel
      Left = 32
      Top = 24
      Width = 39
      Height = 13
      Caption = #1059#1089#1083#1091#1075#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 32
      Top = 104
      Width = 62
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 32
      Top = 64
      Width = 137
      Height = 13
      Caption = #1062#1077#1085#1072' '#1079#1072' '#1086#1076#1085#1091' '#1091#1089#1083#1091#1075#1091' ('#1075#1088#1085'.): '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 32
      Top = 144
      Width = 100
      Height = 13
      Caption = #1062#1077#1085#1072' '#1079#1072#1082#1072#1079#1072' ('#1075#1088#1085'.): '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid2: TDBGrid
      Left = 384
      Top = 1
      Width = 638
      Height = 223
      Align = alRight
      DataSource = DataModule2.DataSOrder2
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Title'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1050#1110#1083#1100#1082#1110#1089#1090#1100'_'#1087#1086#1089#1083#1091#1075
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1050#1086#1076'_'#1095#1077#1082#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = #1042#1072#1088#1090#1110#1089#1090#1100
          Visible = True
        end>
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 144
      Top = 24
      Width = 145
      Height = 21
      KeyField = 'ID'
      ListField = 'Title'
      ListSource = DataModule2.DataSourceQServices
      TabOrder = 1
      OnClick = DBLookupComboBox3Click
    end
    object Button2: TButton
      Left = 56
      Top = 176
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 152
      Top = 176
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 248
      Top = 176
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 4
      OnClick = Button4Click
    end
    object Edit1: TEdit
      Left = 144
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 5
      Text = '1'
      OnChange = Edit1Change
    end
    object UpDown1: TUpDown
      Left = 265
      Top = 104
      Width = 16
      Height = 21
      Associate = Edit1
      Min = 0
      Max = 1000
      Position = 1
      TabOrder = 6
      Wrap = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 357
    Width = 1023
    Height = 72
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 54
      Height = 20
      Caption = #1063#1077#1082' '#8470
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 160
      Top = 16
      Width = 35
      Height = 16
      Caption = #1044#1072#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 728
      Top = 32
      Width = 135
      Height = 16
      Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1095#1077#1082#1091' ('#1075#1088#1085'.):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 160
      Top = 43
      Width = 71
      Height = 16
      Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 448
      Top = 24
      Width = 81
      Height = 25
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1063#1077#1082
      TabOrder = 0
      OnClick = Button1Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 248
      Top = 16
      Width = 145
      Height = 21
      CalAlignment = dtaLeft
      Date = 44508.7924903704
      Time = 44508.7924903704
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 248
      Top = 43
      Width = 145
      Height = 21
      KeyField = 'ID'
      ListField = 'FIO'
      ListSource = DataModule2.DataSourceStaff
      TabOrder = 2
    end
    object Button5: TButton
      Left = 584
      Top = 24
      Width = 75
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1095#1077#1082
      Enabled = False
      TabOrder = 3
      OnClick = Button5Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1023
    Height = 357
    Align = alClient
    DataSource = DataModule2.DataSourceCheck
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object MainMenu1: TMainMenu
    Left = 320
    Top = 544
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N3Click
    end
  end
end
