unit fMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, DBAccess, Uni,
  MemDS, UniProvider, MySQLUniProvider, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    UniMetaData1: TUniMetaData;
    UniConnection1: TUniConnection;
    Button1: TButton;
    MySQLUniProvider1: TMySQLUniProvider;
    Memo2: TMemo;
    UniQuery1: TUniQuery;
    UniMetaData2: TUniMetaData;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  UniMetaData1.MetaDatakind := 'Tables';

  UniMetaData1.open;
  UniMetaData1.first;

  UniMetaData1.Filtered := False;
  UniMetaData1.Filter := format('TABLE_SCHEMA = ''%s''',
    [UniConnection1.Database]);
  UniMetaData1.Filtered := True;

  ListBox1.Items.BeginUpdate;
  while not UniMetaData1.eof do
  begin
    ListBox1.Items.Add(UniMetaData1.FieldByName('TABLE_NAME').AsString);
    UniMetaData1.next;
  end;
  ListBox1.Items.EndUpdate;
  // UniMetaData1.close;
end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
var
  i: integer;
begin
  UniMetaData2.MetaDatakind := 'Columns';

  UniMetaData2.open;
  UniMetaData2.first;

  UniMetaData2.Filtered := False;
  UniMetaData2.Filter := format('TABLE_SCHEMA = ''%s'' and TABLE_NAME = ''%s''',
    [UniConnection1.Database, ListBox1.Items.Strings[ListBox1.ItemIndex]]);
  UniMetaData2.Filtered := True;

  Memo2.Clear;

  Memo2.Lines.BeginUpdate;
  while not UniMetaData2.eof do
  begin
    Memo2.Lines.Add(UniMetaData2.FieldByName('COLUMN_NAME').AsString);
    UniMetaData2.next;
  end;
  Memo2.Lines.EndUpdate;

  // self.Caption := ListBox1.Items.Strings[ListBox1.ItemIndex];
  // UniQuery1.SQL.Clear;
  // UniQuery1.SQL.Add(format('select * from %s as tbl where 1=2',
  // [ListBox1.Items.Strings[ListBox1.ItemIndex]]));
  // try
  // UniQuery1.open;
  // if UniQuery1.Active then
  // begin
  // Memo2.Lines.Clear;
  // for i := 0 to Pred(UniQuery1.Fields.Count) do
  // Memo2.Lines.Add(UniQuery1.Fields[i].FieldName);
  // end;
  //
  // except
  // on e: exception do
  // begin
  // showmessage(e.Message);
  // end;
  // end;
end;

end.
