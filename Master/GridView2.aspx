<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView2.aspx.cs" Inherits="Master.GridView2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmpId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="5">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" SortExpression="EmpId" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:BoundField DataField="DateofJoining" HeaderText="DateofJoining" SortExpression="DateofJoining" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="County" HeaderText="County" SortExpression="County" />
                    <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RavitejaDBConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [Users] ([EmpId], [FirstName], [LastName], [Department], [DateofJoining], [Age], [Gender], [PhoneNo], [Address], [City], [County], [EmailID], [Password]) VALUES (@EmpId, @FirstName, @LastName, @Department, @DateofJoining, @Age, @Gender, @PhoneNo, @Address, @City, @County, @EmailID, @Password)" SelectCommand="SELECT * FROM [Users] ORDER BY [EmpId]" UpdateCommand="UPDATE [Users] SET [FirstName] = @FirstName, [LastName] = @LastName, [Department] = @Department, [DateofJoining] = @DateofJoining, [Age] = @Age, [Gender] = @Gender, [PhoneNo] = @PhoneNo, [Address] = @Address, [City] = @City, [County] = @County, [EmailID] = @EmailID, [Password] = @Password WHERE [EmpId] = @EmpId">
                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpId" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter DbType="Date" Name="DateofJoining" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="PhoneNo" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="County" Type="String" />
                    <asp:Parameter Name="EmailID" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter DbType="Date" Name="DateofJoining" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="PhoneNo" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="County" Type="String" />
                    <asp:Parameter Name="EmailID" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="EmpId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
