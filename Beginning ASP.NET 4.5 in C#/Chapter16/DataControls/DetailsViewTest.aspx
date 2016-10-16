<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailsViewTest.aspx.cs" Inherits="DetailsView" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" CellPadding="4"
            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px"
            Width="336px" AutoGenerateRows="False" DataKeyNames="ProductID" AutoGenerateEditButton="True" AutoGenerateInsertButton="True" AutoGenerateDeleteButton="true" OnDataBound="DetailsView1_DataBound">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            <Fields>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False"
                    ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />              
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            </Fields>
        </asp:DetailsView>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Northwind %>"
            SelectCommand="SELECT ProductID, ProductName, UnitPrice FROM Products"
            UpdateCommand="UPDATE Products SET ProductName=@ProductName, UnitPrice=@UnitPrice WHERE ProductID=@ProductID"          
            InsertCommand="INSERT Products (ProductName, UnitPrice) VALUES (@ProductName, @UnitPrice)"
            DeleteCommand="DELETE Products WHERE ProductID=@ProductID" OnInserted="SqlDataSource1_Inserted"
            ></asp:SqlDataSource>
    </form>
</body>
</html>
