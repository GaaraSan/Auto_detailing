object Form1: TForm1
  Left = 543
  Top = 192
  Width = 911
  Height = 724
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 895
    Height = 685
    ActivePage = TabSheet4
    Align = alClient
    TabIndex = 3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1059#1089#1083#1091#1075#1080
      object Panel1: TPanel
        Left = 0
        Top = 573
        Width = 887
        Height = 84
        Align = alBottom
        TabOrder = 0
        Visible = False
        object Label2: TLabel
          Left = 16
          Top = 20
          Width = 76
          Height = 13
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        end
        object Label4: TLabel
          Left = 14
          Top = 43
          Width = 50
          Height = 13
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
        end
        object Label5: TLabel
          Left = 255
          Top = 35
          Width = 85
          Height = 13
          Caption = #1062#1077#1085#1072' '#1079#1072' '#1077#1076#1077#1085#1080#1094#1091
        end
        object Edit1: TEdit
          Left = 96
          Top = 16
          Width = 145
          Height = 21
          TabOrder = 0
        end
        object Edit4: TEdit
          Left = 368
          Top = 32
          Width = 145
          Height = 21
          TabOrder = 1
          Text = '0'
        end
        object Edit3: TEdit
          Left = 96
          Top = 40
          Width = 145
          Height = 21
          TabOrder = 2
        end
        object Button1: TButton
          Left = 536
          Top = 16
          Width = 105
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
          TabOrder = 3
          OnClick = Button1Click
        end
        object Button4: TButton
          Left = 536
          Top = 44
          Width = 105
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
          TabOrder = 4
          OnClick = Button4Click
        end
        object Button6: TButton
          Left = 656
          Top = 33
          Width = 105
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 5
          OnClick = Button6Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 501
        Width = 887
        Height = 72
        Align = alBottom
        TabOrder = 1
        object Label7: TLabel
          Left = 504
          Top = 12
          Width = 144
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1090#1086#1074#1072#1088#1072' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102': '
        end
        object Label1: TLabel
          Left = 504
          Top = 36
          Width = 102
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1082#1086#1076#1091' '#1090#1086#1074#1072#1088#1072': '
        end
        object Button2: TButton
          Left = 175
          Top = 24
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100' '
          TabOrder = 0
          OnClick = Button2Click
        end
        object Button18: TButton
          Left = 16
          Top = 24
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 1
          OnClick = Button18Click
        end
        object Button19: TButton
          Left = 96
          Top = 24
          Width = 75
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 2
          OnClick = Button19Click
        end
        object Edit2: TEdit
          Left = 658
          Top = 32
          Width = 63
          Height = 21
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 658
          Top = 8
          Width = 223
          Height = 21
          TabOrder = 4
          OnChange = Edit5Change
        end
        object Button10: TButton
          Left = 728
          Top = 32
          Width = 75
          Height = 25
          Caption = #1054#1082
          TabOrder = 5
          OnClick = Button10Click
        end
        object Button11: TButton
          Left = 808
          Top = 32
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 6
          OnClick = Button11Click
        end
        object Button15: TButton
          Left = 264
          Top = 24
          Width = 75
          Height = 25
          Caption = #1054#1090#1095#1077#1090
          TabOrder = 7
          OnClick = Button15Click
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 887
        Height = 501
        Align = alClient
        DataSource = DataModule2.DataSourceQServices
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 887
        Height = 605
        Align = alClient
        DataSource = DataModule2.DataSourceStaff
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel3: TPanel
        Left = 0
        Top = 605
        Width = 887
        Height = 52
        Align = alBottom
        TabOrder = 1
        object Button5: TButton
          Left = 16
          Top = 16
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = Button5Click
        end
        object Button7: TButton
          Left = 96
          Top = 16
          Width = 75
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
          OnClick = Button7Click
        end
        object Button3: TButton
          Left = 176
          Top = 16
          Width = 81
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
          OnClick = Button3Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1047#1072#1085#1103#1090#1086#1089#1090#1100
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 887
        Height = 516
        Align = alClient
        DataSource = DataModule2.DataSourceBusyness
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel5: TPanel
        Left = 0
        Top = 573
        Width = 887
        Height = 84
        Align = alBottom
        TabOrder = 1
        Visible = False
        object Label3: TLabel
          Left = 40
          Top = 36
          Width = 53
          Height = 13
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
        end
        object Label6: TLabel
          Left = 400
          Top = 36
          Width = 36
          Height = 13
          Caption = #1059#1089#1083#1091#1075#1072
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 112
          Top = 32
          Width = 241
          Height = 21
          KeyField = 'ID'
          ListField = 'FIO'
          ListSource = DataModule2.DataSourceStaff
          TabOrder = 0
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 456
          Top = 32
          Width = 241
          Height = 21
          KeyField = 'ID'
          ListField = 'Title'
          ListSource = DataModule2.DataSourceQServices
          TabOrder = 1
        end
        object Button9: TButton
          Left = 752
          Top = 32
          Width = 105
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
          TabOrder = 2
          OnClick = Button9Click
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 516
        Width = 887
        Height = 57
        Align = alBottom
        TabOrder = 2
        object Button13: TButton
          Left = 16
          Top = 16
          Width = 73
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = Button13Click
        end
        object Button8: TButton
          Left = 104
          Top = 16
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 1
          OnClick = Button8Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1047#1072#1082#1072#1079#1099
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 576
        Width = 887
        Height = 81
        Align = alBottom
        TabOrder = 0
        object Label8: TLabel
          Left = 16
          Top = 36
          Width = 119
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1095#1077#1082#1072': '
        end
        object Edit6: TEdit
          Left = 144
          Top = 32
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Button12: TButton
          Left = 296
          Top = 32
          Width = 75
          Height = 25
          Caption = #1054#1050
          TabOrder = 1
          OnClick = Button12Click
        end
        object Button14: TButton
          Left = 384
          Top = 32
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 2
          OnClick = Button14Click
        end
        object Button16: TButton
          Left = 472
          Top = 32
          Width = 75
          Height = 25
          Caption = #1054#1090#1095#1077#1090
          TabOrder = 3
          OnClick = Button16Click
        end
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 887
        Height = 576
        Align = alClient
        DataSource = DataModule2.DataSourceOrder
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1063#1077#1082
      ImageIndex = 4
      object Panel7: TPanel
        Left = 0
        Top = 575
        Width = 887
        Height = 82
        Align = alBottom
        TabOrder = 0
        object Label9: TLabel
          Left = 16
          Top = 32
          Width = 76
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1076#1072#1090#1077':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button17: TButton
          Left = 296
          Top = 32
          Width = 75
          Height = 25
          Caption = #1054#1050
          TabOrder = 0
          OnClick = Button17Click
        end
        object Button20: TButton
          Left = 384
          Top = 32
          Width = 75
          Height = 25
          Caption = #1054#1090#1084#1077#1085#1072
          TabOrder = 1
          OnClick = Button20Click
        end
        object DateTimePicker1: TDateTimePicker
          Left = 104
          Top = 32
          Width = 129
          Height = 21
          CalAlignment = dtaLeft
          Date = 44508.7928042245
          Time = 44508.7928042245
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 2
        end
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 887
        Height = 575
        Align = alClient
        DataSource = DataModule2.DataSourceCheck
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
end
