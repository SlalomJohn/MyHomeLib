object frmEditBookInfo: TfrmEditBookInfo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '  '#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'  '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1082#1085#1080#1075#1077
  ClientHeight = 402
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 20
    Width = 52
    Height = 13
    Caption = '&'#1053#1072#1079#1074#1072#1085#1080#1077':'
    FocusControl = edT
  end
  object pnButtons: TPanel
    Left = 0
    Top = 359
    Width = 639
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnButtons'
    ShowCaption = False
    TabOrder = 3
    ExplicitTop = 358
    ExplicitWidth = 635
    DesignSize = (
      639
      43)
    object btnOk: TButton
      Left = 465
      Top = 10
      Width = 78
      Height = 27
      Anchors = [akTop, akRight]
      Caption = '&'#1057#1086#1093#1088#1072#1085#1080#1090#1100
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = btnSaveClick
      ExplicitLeft = 461
    end
    object btnCancel: TButton
      Left = 550
      Top = 10
      Width = 78
      Height = 27
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = '&'#1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 546
    end
    object btnNextBook: TButton
      Left = 93
      Top = 10
      Width = 78
      Height = 27
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1087#1077#1088#1077#1081#1090#1080' '#1082' '#1089#1083#1077#1076#1091#1102#1097#1077#1081' '#1082#1085#1080#1075#1077
      Caption = '&>>>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnNextBookClick
    end
    object btnPrevBook: TButton
      Left = 8
      Top = 10
      Width = 79
      Height = 27
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1087#1077#1088#1077#1081#1090#1080' '#1082' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1081' '#1082#1085#1080#1075#1077
      Caption = '&<<<'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnPrevBookClick
    end
  end
  object edT: TEdit
    AlignWithMargins = True
    Left = 69
    Top = 17
    Width = 462
    Height = 21
    TabOrder = 0
    OnChange = edTChange
  end
  object gbAuthors: TGroupBox
    Left = 8
    Top = 45
    Width = 621
    Height = 160
    Caption = '&'#1040#1074#1090#1086#1088#1099
    TabOrder = 1
    object btnAddAuthor: TButton
      Left = 542
      Top = 18
      Width = 62
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = '&'#1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = btnAddAuthorClick
    end
    object btnAChange: TButton
      Left = 542
      Top = 43
      Width = 62
      Height = 22
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 1
      OnClick = btnAChangeClick
    end
    object btnADelete: TButton
      Left = 542
      Top = 69
      Width = 62
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = '&'#1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = btnADeleteClick
    end
    object lvAuthors: TListView
      Left = 3
      Top = 18
      Width = 534
      Height = 139
      BevelKind = bkFlat
      BorderStyle = bsNone
      Columns = <>
      ColumnClick = False
      GridLines = True
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      TabOrder = 3
      ViewStyle = vsReport
      OnDblClick = btnAChangeClick
    end
  end
  object gbExtraInfo: TGroupBox
    Left = 8
    Top = 211
    Width = 621
    Height = 142
    Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' &'#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
    TabOrder = 2
    object Label6: TLabel
      Left = 17
      Top = 25
      Width = 40
      Height = 13
      Caption = '&'#1046#1072#1085#1088#1099':'
      FocusControl = lblGenre
    end
    object Label3: TLabel
      Left = 17
      Top = 52
      Width = 35
      Height = 13
      Caption = #1057'&'#1077#1088#1080#1103':'
      FocusControl = cbSeries
    end
    object Label4: TLabel
      Left = 443
      Top = 52
      Width = 76
      Height = 13
      Caption = #1053#1086'&'#1084#1077#1088' '#1074' '#1089#1077#1088#1080#1080':'
      FocusControl = edSN
    end
    object Label5: TLabel
      Left = 17
      Top = 81
      Width = 90
      Height = 13
      Caption = '&'#1050#1083#1102#1095#1077#1074#1099#1077' '#1089#1083#1086#1074#1072':'
      FocusControl = edKeyWords
    end
    object Label7: TLabel
      Left = 17
      Top = 109
      Width = 30
      Height = 13
      Caption = '&'#1071#1079#1099#1082':'
      FocusControl = cbLang
    end
    object lblGenre: TEdit
      Left = 117
      Top = 22
      Width = 406
      Height = 21
      TabStop = False
      AutoSize = False
      BorderStyle = bsNone
      ParentColor = True
      ReadOnly = True
      TabOrder = 0
    end
    object btnGenres: TButton
      Left = 530
      Top = 20
      Width = 78
      Height = 26
      Caption = '&'#1042#1099#1073#1088#1072#1090#1100
      TabOrder = 1
      OnClick = btnGenresClick
    end
    object cbLang: TComboBox
      Left = 117
      Top = 106
      Width = 69
      Height = 21
      TabOrder = 5
      OnChange = edTChange
      Items.Strings = (
        'be'
        'bg'
        'bo'
        'br'
        'cs'
        'cz'
        'da'
        'de'
        'en'
        'eo'
        'es'
        'fr'
        'is'
        'it'
        'ja'
        'la'
        'lt'
        'lv'
        'pl'
        'pt'
        'ro'
        'ru'
        'sp'
        'sr'
        'sv'
        'th'
        'tr'
        'ua'
        'uk'
        'zh'
        #1082
        #1088#1091)
    end
    object cbSeries: TComboBox
      Left = 117
      Top = 49
      Width = 321
      Height = 21
      TabOrder = 2
      OnChange = edTChange
    end
    object edKeyWords: TEdit
      AlignWithMargins = True
      Left = 117
      Top = 78
      Width = 491
      Height = 21
      TabOrder = 4
      OnChange = edTChange
    end
    object edSN: TEdit
      Left = 530
      Top = 49
      Width = 78
      Height = 21
      Alignment = taRightJustify
      MaxLength = 3
      NumbersOnly = True
      TabOrder = 3
      OnChange = edTChange
    end
  end
  object btnOpenBook: TButton
    Left = 538
    Top = 14
    Width = 78
    Height = 27
    Hint = #1054#1090#1082#1088#1099#1090#1100' '#1082#1085#1080#1075#1091
    Caption = #1054#1090#1082#1088#1099#1090#1100
    ImageIndex = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btnOpenBookClick
  end
end
