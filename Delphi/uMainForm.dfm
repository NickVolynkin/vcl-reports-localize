object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'DevExpress Reports Localization Example'
  ClientHeight = 111
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object btnGroupDisplayDialog: TcxGroupBox
    Left = 211
    Top = 17
    Caption = 'Display a Localized Report Dialog:'
    TabOrder = 1
    Height = 86
    Width = 192
    object btnDisplayReport: TcxButton
      Left = 15
      Top = 52
      Width = 145
      Height = 25
      Caption = 'Report Viewer'
      TabOrder = 1
      OnClick = btnDisplayReportClick
    end
    object btnDisplayDesigner: TcxButton
      Left = 15
      Top = 21
      Width = 145
      Height = 25
      Caption = 'Report Designer'
      TabOrder = 0
      OnClick = btnDisplayDesignerClick
    end
  end
  object rbtnGroupLocalization: TcxRadioGroup
    Left = 8
    Top = 17
    Caption = 'Localize Report Dialogs in:'
    Properties.Items = <>
    TabOrder = 0
    Height = 86
    Width = 185
    object rbtnSelectEnglishLocalization: TcxRadioButton
      Left = 16
      Top = 25
      Width = 113
      Height = 17
      Caption = 'English (en-US)'
      TabOrder = 0
      OnClick = rbtnSelectEnglishLocalizationClick
    end
    object rbtnSelectGermanLocalization: TcxRadioButton
      Left = 16
      Top = 56
      Width = 113
      Height = 17
      Caption = 'German (de-DE)'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbtnSelectGermanLocalizationClick
    end
  end
  object dxReport1: TdxReport
    Parameters = <>
    Left = 416
    Top = 32
  end
  object dxBackendDataConnectionManager1: TdxBackendDataConnectionManager
    Left = 472
    Top = 32
    object dxBackendDataConnectionManager1dxBackendDataSetJSONConnection1: TdxBackendDataSetJSONConnection
      DisplayName = 'DataSetConnection'
      object itmProducts: TdxBackendDataSetCollectionItem
        DataSet = DataModule1.mdProducts
        DataSetAlias = 'mdProducts'
      end
      object itmCategories: TdxBackendDataSetCollectionItem
        DataSet = DataModule1.mdCategories
        DataSetAlias = 'mdCategories'
      end
    end
  end
end
