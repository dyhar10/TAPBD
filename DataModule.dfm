object DM: TDM
  OldCreateOrder = False
  Left = 813
  Top = 189
  Height = 463
  Width = 485
  object con1: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Port = 3306
    Database = 'coba'
    User = 'root'
    Connected = True
    Left = 24
    Top = 8
  end
  object qr1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from karyawan')
    Params = <>
    Left = 64
    Top = 8
  end
  object qr2: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from produk;')
    Params = <>
    Left = 64
    Top = 56
    object qr2id_produk: TStringField
      FieldName = 'id_produk'
      Required = True
      Size = 3
    end
    object qr2nama_produk: TStringField
      FieldName = 'nama_produk'
      Required = True
    end
    object qr2harga_produk: TIntegerField
      FieldName = 'harga_produk'
      Required = True
    end
    object qr2stok_produk: TIntegerField
      FieldName = 'stok_produk'
      Required = True
    end
    object qr2status: TStringField
      FieldName = 'status'
      Required = True
      Size = 10
    end
    object qr2id_supplier: TStringField
      FieldName = 'id_supplier'
      Required = True
      Size = 3
    end
    object qr2nama_sup: TStringField
      FieldKind = fkLookup
      FieldName = 'nama_sup'
      LookupDataSet = qr4
      LookupKeyFields = 'id_supplier'
      LookupResultField = 'nama_supplier'
      KeyFields = 'id_supplier'
      Lookup = True
    end
  end
  object ds1: TDataSource
    DataSet = qr1
    Left = 104
    Top = 8
  end
  object ds2: TDataSource
    DataSet = qr2
    Left = 104
    Top = 56
  end
  object filter_gudang: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = zqry1
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 160
    Top = 8
  end
  object find_gudang: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = ds2
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 160
    Top = 56
  end
  object qr3: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from faktur_penjualan')
    Params = <>
    Left = 64
    Top = 104
  end
  object ds3: TDataSource
    DataSet = qr3
    Left = 104
    Top = 104
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 248
    Top = 57
  end
  object frxReport1: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43188.524099409700000000
    ReportOptions.LastChange = 43188.524099409700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 248
    Top = 113
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 1122.520410000000000000
        object Memo1: TfrxMemoView
          Top = 3.779530000000000000
          Width = 1126.299940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PENJUALAN ALAT KESEHATAN')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 147.401670000000000000
        Width = 1122.520410000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 30.236240000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."id_produk"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 370.393940000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."nama_produk"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 529.134200000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."harga_produk"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 680.315400000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."stok_produk"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 797.480830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 1122.520410000000000000
        object Memo7: TfrxMemoView
          Left = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Produk ID')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 340.157700000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Produk')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 514.016080000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Harga Produk')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 661.417750000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Stok Produk')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 782.362710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Status')
          ParentFont = False
        end
      end
    end
  end
  object qr4: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 64
    Top = 152
  end
  object ds4: TDataSource
    DataSet = qr4
    Left = 104
    Top = 152
  end
  object qr5: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from produk')
    Params = <>
    Left = 64
    Top = 208
  end
  object ds5: TDataSource
    DataSet = qr5
    Left = 104
    Top = 208
  end
  object qr6: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from detail_nota')
    Params = <>
    Left = 64
    Top = 256
  end
  object ds6: TDataSource
    DataSet = qr6
    Left = 104
    Top = 256
  end
  object qr7: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from produk')
    Params = <>
    Left = 64
    Top = 304
  end
  object ds7: TDataSource
    DataSet = qr7
    Left = 104
    Top = 304
  end
  object qr8: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 64
    Top = 352
  end
  object ds8: TDataSource
    DataSet = qr8
    Left = 104
    Top = 352
  end
  object qr9: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from karyawan')
    Params = <>
    Left = 152
    Top = 352
  end
  object ds9: TDataSource
    DataSet = qr9
    Left = 192
    Top = 352
  end
  object zqry1: TZQuery
    Connection = con1
    OnCalcFields = zqry1CalcFields
    SQL.Strings = (
      'select * from produk ORDER BY id_supplier')
    Params = <>
    Left = 176
    Top = 256
    object intgrfldzqry1id_supplier: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Supplier'
      DisplayWidth = 10
      FieldName = 'id_supplier'
      Required = True
    end
    object strngfldzqry1nama_supplier: TStringField
      DisplayLabel = 'Supplier'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'nama_supplier'
      LookupDataSet = qr4
      LookupKeyFields = 'id_supplier'
      LookupResultField = 'nama_supplier'
      KeyFields = 'id_supplier'
      Size = 15
      Lookup = True
    end
    object intgrfldzqry1id_produk: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID Produk'
      DisplayWidth = 10
      FieldName = 'id_produk'
      Required = True
    end
    object strngfldzqry1nama_produk: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nama Produk'
      DisplayWidth = 30
      FieldName = 'nama_produk'
      Required = True
    end
    object intgrfldzqry1harga_produk: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Harga'
      DisplayWidth = 15
      FieldName = 'harga_produk'
      Required = True
    end
    object intgrfldzqry1stok_produk: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Stok'
      DisplayWidth = 10
      FieldName = 'stok_produk'
      Required = True
    end
    object strngfldzqry1status: TStringField
      Alignment = taCenter
      DisplayLabel = 'Status'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'status'
      Required = True
      Size = 10
      Calculated = True
    end
  end
  object login_ds1: TDataSource
    DataSet = zqry1
    Left = 216
    Top = 256
  end
  object zqry2: TZQuery
    Connection = con1
    OnCalcFields = zqry1CalcFields
    SQL.Strings = (
      'select * from pelanggan;')
    Params = <>
    Left = 280
    Top = 256
  end
  object login_ds2: TDataSource
    DataSet = zqry2
    Left = 336
    Top = 256
  end
  object login_ds3: TDataSource
    DataSet = zqry3
    Left = 336
    Top = 312
  end
  object zqry3: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from karyawan')
    Params = <>
    Left = 280
    Top = 312
  end
end
