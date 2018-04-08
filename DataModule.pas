unit DataModule;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, SMDBFind, SMDBFltr, frxClass, frxDBSet;

type
  TDM = class(TDataModule)
    con1: TZConnection;
    qr1: TZQuery;
    qr2: TZQuery;
    ds1: TDataSource;
    ds2: TDataSource;
    filter_gudang: TSMDBFilterDialog;
    find_gudang: TSMDBFindDialog;
    qr3: TZQuery;
    ds3: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    qr2id_produk: TStringField;
    qr2nama_produk: TStringField;
    qr2harga_produk: TIntegerField;
    qr2stok_produk: TIntegerField;
    qr2status: TStringField;
    qr2id_supplier: TStringField;
    qr4: TZQuery;
    ds4: TDataSource;
    qr2nama_sup: TStringField;
    qr5: TZQuery;
    ds5: TDataSource;
    qr6: TZQuery;
    ds6: TDataSource;
    qr7: TZQuery;
    ds7: TDataSource;
    qr8: TZQuery;
    ds8: TDataSource;
    qr9: TZQuery;
    ds9: TDataSource;
    zqry1: TZQuery;
    login_ds1: TDataSource;
    intgrfldzqry1id_produk: TIntegerField;
    intgrfldzqry1id_supplier: TIntegerField;
    strngfldzqry1nama_produk: TStringField;
    intgrfldzqry1harga_produk: TIntegerField;
    intgrfldzqry1stok_produk: TIntegerField;
    strngfldzqry1nama_supplier: TStringField;
    strngfldzqry1status: TStringField;
    zqry2: TZQuery;
    login_ds2: TDataSource;
    login_ds3: TDataSource;
    zqry3: TZQuery;
    procedure zqry1CalcFields(DataSet: TDataSet);
  private
    //FOnRefreshData: TNotifyEvent;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.zqry1CalcFields(DataSet: TDataSet);
begin
    //if DM.intgrfldzqry1stok_produk.AsString = '' then Exit;
    if DM.intgrfldzqry1stok_produk.AsInteger > 0 then
      begin
        DM.strngfldzqry1status.Value := 'Tersedia';
      end
    else
       DM.strngfldzqry1status.Value := 'Kosong';
end;

end.
