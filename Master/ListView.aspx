<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListView.aspx.cs" Inherits="Master.ListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> <img src="LogoImg.jpg"  style="border-radius:12px" width="200"></h1>
                    
            <a href="http://localhost:50223/ListView.aspx">List of Employees</a>
             <a href="http://localhost:50223/TimeSheetofallemps.aspx">TimeSheet</a>

                            

             <p class="display-20"> </p>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="EmpId" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DateofJoiningLabel" runat="server" Text='<%# Eval("DateofJoining") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PhoneNoLabel" runat="server" Text='<%# Eval("PhoneNo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CountyLabel" runat="server" Text='<%# Eval("County") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="EmpIdLabel1" runat="server" Text='<%# Eval("EmpId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DepartmentTextBox" runat="server" Text='<%# Bind("Department") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DateofJoiningTextBox" runat="server" Text='<%# Bind("DateofJoining") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PhoneNoTextBox" runat="server" Text='<%# Bind("PhoneNo") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CountyTextBox" runat="server" Text='<%# Bind("County") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EmailIDTextBox" runat="server" Text='<%# Bind("EmailID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="EmpIdTextBox" runat="server" Text='<%# Bind("EmpId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DepartmentTextBox" runat="server" Text='<%# Bind("Department") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DateofJoiningTextBox" runat="server" Text='<%# Bind("DateofJoining") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PhoneNoTextBox" runat="server" Text='<%# Bind("PhoneNo") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CountyTextBox" runat="server" Text='<%# Bind("County") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EmailIDTextBox" runat="server" Text='<%# Bind("EmailID") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DateofJoiningLabel" runat="server" Text='<%# Eval("DateofJoining") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PhoneNoLabel" runat="server" Text='<%# Eval("PhoneNo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CountyLabel" runat="server" Text='<%# Eval("County") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server"></th>
                                        <th runat="server">EmpId</th>
                                        <th runat="server">FirstName</th>
                                        <th runat="server">LastName</th>
                                        <th runat="server">Department</th>
                                        <th runat="server">DateofJoining</th>
                                        <th runat="server">Age</th>
                                        <th runat="server">Gender</th>
                                        <th runat="server">PhoneNo</th>
                                        <th runat="server">Address</th>
                                        <th runat="server">City</th>
                                        <th runat="server">County</th>
                                        <th runat="server">EmailID</th>
                                        <th runat="server">Password</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DepartmentLabel" runat="server" Text='<%# Eval("Department") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DateofJoiningLabel" runat="server" Text='<%# Eval("DateofJoining") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PhoneNoLabel" runat="server" Text='<%# Eval("PhoneNo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CountyLabel" runat="server" Text='<%# Eval("County") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Eval("EmailID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
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
            <br />
            <asp:Button ID="Btn1" runat="server" OnClick="Validate" Text="Logout" />
             <br />
             <br />
            <footer>
                             <h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; © Copyrights 2022 - 2023  SR CONTRACTORS  All Rights Reserved.</h3> 
                
            </footer>
            
        </div>
    </form>
</body>
</html>
