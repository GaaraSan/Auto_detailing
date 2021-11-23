unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, Menus, ComCtrls;

type
  TMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Label4: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Button5: TButton;
    procedure N3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;
  Cheknom, ChekSum, CenaTov: String;

implementation

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TMain.N3Click(Sender: TObject);
begin
   Close;
end;

procedure TMain.FormShow(Sender: TObject);
begin
     DateTimePicker1.Date:=Now;

     DataModule2.ADOQCheck.Close;
     DataModule2.ADOQCheck.SQL.Text:=' Select * From [Check] Order by ID ';
     DataModule2.ADOQCheck.Open;

     DBLookupComboBox2.KeyValue:= 1;
     DBLookupComboBox3.KeyValue:= 1;
     Edit1.Text:= '1';
end;

procedure TMain.Button1Click(Sender: TObject);
begin
DataModule2.DataSOrder2.Enabled:= True;

DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:= ' INSERT INTO [Check] ( [DateTime], FinalSUM )  Values (:dt, 0) ';
DataModule2.ADOQWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
DataModule2.ADOQWork.ExecSQL;

FormShow(Sender);

DataModule2.ADOQWork.close;
DataModule2.ADOQWork.SQL.Text:=' Select * From [Check] Order by [Check.ID] ';
DataModule2.ADOQWork.Open;

DataModule2.ADOQWork.Last;
Cheknom:= DataModule2.DataSourceWork.DataSet.Fields[0].AsString;
Label1.Caption:='��� �'+ChekNom;

DataModule2.ADOQOrder2.Close;
DataModule2.ADOQOrder2.SQL.Text:=' SELECT Order.ID, Order.�������, Order.ʳ������_������, Order.���_����, Order.������� '
+ ' FROM (Staff INNER JOIN (Services INNER JOIN ([Check] INNER JOIN (Busyness INNER JOIN [Order] ON Busyness.ID = Order.�������) ON Check.ID = Order.���_����) '
+' ON Services.ID = Busyness.service) ON Staff.ID = Busyness.staff) '
+ ' WHERE (((Order.���_����)= '+Cheknom+')) ' ;
DataModule2.ADOQOrder2.open;
ChekSum:= '0';
label3.caption:= '����� �� ���� (���): ' + ChekSum;

Panel1.Enabled:= true;
DateTimePicker1.Enabled:= false;
DBLookupComboBox2.Enabled:= false;
Button1.Enabled:= false;
Button5.Enabled:= true;

end;

procedure TMain.N1Click(Sender: TObject);
begin
     Form1.ShowModal;
end;

procedure TMain.N2Click(Sender: TObject);
begin
    Form4.Show;
end;

procedure TMain.Button4Click(Sender: TObject);
begin
     DataModule2.ADOQRepCheck.Close;
     DataModule2.ADOQRepCheck.SQL.Text:= ' SELECT Services.Title, Order.ʳ������_������, Services.UnitPrice, Order.�������, Order.���_���� '
     +' FROM Staff INNER JOIN (Services INNER JOIN ([Check] INNER JOIN (Busyness INNER JOIN [Order] ON Busyness.ID = Order.�������) ON Check.ID = Order.���_����) ON Services.ID = Busyness.service) ON Staff.ID = Busyness.staff '
     +' Where Order.���_����='+ChekNom+' ';
     DataModule2.ADOQRepCheck.Open;

     FormRepCheck.QRLabel1.Caption:='��� �'+ChekNom;
     FormRepCheck.QRLabel2.Caption:='����: ' + datetostr(datetimepicker1.date);
     FormRepCheck.QRLabel3.Caption:='��������: ' + DBLookupComboBox2.Text;
     FormRepCheck.QRLabel12.Caption:='����� �� ���� (���): ' + ChekSum;
     FormRepCheck.QuickRep1.PreviewModal;
end;

procedure TMain.DBLookupComboBox3Click(Sender: TObject);
begin
     CenaTov:= IntToStr(DataModule2.DataSourceQServices.DataSet.Fields[2].AsInteger * strtoint(edit1.text));

     label8.caption:= '���� ������ (���.): ' + CenaTov;

     Label7.Caption:= '���� �� ���� ������ (���.): ' +DataModule2.DataSourceQServices.DataSet.Fields[2].AsString;
end;

procedure TMain.Button2Click(Sender: TObject);
begin
DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:= 'INSERT INTO [Order] ( �������, ʳ������_������, ���_����, ������� ) '
 + ' Values ('+inttostr(DBLookupComboBox3.KeyValue)+', '+Edit1.Text+', '+Cheknom+', '+CenaTov+') ';
DataModule2.ADOQWork.ExecSQL;

DataModule2.ADOQOrder2.Close;
DataModule2.ADOQOrder2.SQL.Text:=' SELECT Order.ID, Services.Title, Order.ʳ������_������, Order.���_����, Order.�������  '
+ ' FROM Services INNER JOIN (Busyness INNER JOIN [Order] ON Busyness.ID = Order.�������) ON Services.ID = Busyness.service '
+ ' WHERE (((Order.���_����)= '+Cheknom+')) ' ;
DataModule2.ADOQOrder2.open;

DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:=' Select Sum(Order.[�������]) FROM [Order] GROUP BY Order.[���_����] HAVING (((Order.[���_����])= '+ChekNom+'))';
DataModule2.ADOQWork.Open;
ChekSum:= DataModule2.DataSourceWork.DataSet.Fields[0].AsString;
label3.caption:= '����� �� ���� (���): ' + ChekSum;

DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:=' UPDATE [Check] SET [Check].FinalSUM = '+ChekSum+' WHERE [Check].ID='+ChekNom+' ';
DataModule2.ADOQWork.ExecSQL;

formshow(Sender);
end;



procedure TMain.Edit1Change(Sender: TObject);
begin
try
     CenaTov:= IntToStr(DataModule2.DataSourceQServices.DataSet.Fields[2].AsInteger * strtoint(edit1.text));
     label8.caption:= '���� ������ (���.): ' + CenaTov;
     Label7.Caption:= '���� �� ���� ������ (���.): ' +DataModule2.DataSourceQServices.DataSet.Fields[2].AsString;
except
        ShowMessage('������� ����� �����');
end;
end;

procedure TMain.Button5Click(Sender: TObject);
begin
     DataModule2.DataSOrder2.Enabled:= false;
     Panel1.Enabled:= false;
     DateTimePicker1.Enabled:= true;
     DBLookupComboBox2.Enabled:= true;
     Button1.Enabled:= true;
     Button5.Enabled:= false;
end;

procedure TMain.Button3Click(Sender: TObject);
begin

DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:= 'Delete * From [Order] Where ID = '+DBGrid2.Fields[0].AsString+'';
DataModule2.ADOQWork.ExecSQL;

DataModule2.ADOQOrder2.Close;
DataModule2.ADOQOrder2.SQL.Text:=' SELECT Order.ID, Services.Title, Order.ʳ������_������, Order.���_����, Order.�������  '
+ ' FROM Services INNER JOIN (Busyness INNER JOIN [Order] ON Busyness.ID = Order.�������) ON Services.ID = Busyness.service '
+ ' WHERE (((Order.���_����)= '+Cheknom+')) ' ;
DataModule2.ADOQOrder2.open;

DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:=' Select Sum(Order.[�������]) FROM [Order] GROUP BY Order.[���_����] HAVING (((Order.[���_����])= '+ChekNom+'))';
DataModule2.ADOQWork.Open;
ChekSum:= DataModule2.DataSourceWork.DataSet.Fields[0].AsString;
label3.caption:= '����� �� ���� (���): ' + ChekSum;

DataModule2.ADOQWork.Close;
DataModule2.ADOQWork.SQL.Text:=' UPDATE [Check] SET [Check].FinalSUM = '+ChekSum+' WHERE [Check].ID='+ChekNom+' ';
DataModule2.ADOQWork.ExecSQL;

formshow(Sender);
end;

end.

