﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimeSheet.aspx.cs" Inherits="Master.TimeSheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="EmpId" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFFFFF;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="WorkingHoursLabel" runat="server" Text='<%# Eval("WorkingHours") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #999999;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="EmpIdLabel1" runat="server" Text='<%# Eval("EmpId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="WorkingHoursTextBox" runat="server" Text='<%# Bind("WorkingHours") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
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
                            <asp:TextBox ID="WorkingHoursTextBox" runat="server" Text='<%# Bind("WorkingHours") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #E0FFFF;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="WorkingHoursLabel" runat="server" Text='<%# Eval("WorkingHours") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">EmpId</th>
                                        <th runat="server">WorkingHours</th>
                                        <th runat="server">Date</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        <asp:NumericPagerField />
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="WorkingHoursLabel" runat="server" Text='<%# Eval("WorkingHours") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RavitejaDBConnectionString %>" DeleteCommand="DELETE FROM [Timesheet] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [Timesheet] ([EmpId], [WorkingHours], [Date]) VALUES (@EmpId, @WorkingHours, @Date)" SelectCommand="SELECT * FROM [Timesheet] WHERE ([EmpId] = @EmpId) ORDER BY [EmpId]" UpdateCommand="UPDATE [Timesheet] SET [WorkingHours] = @WorkingHours, [Date] = @Date WHERE [EmpId] = @EmpId">
                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpId" Type="String" />
                    <asp:Parameter Name="WorkingHours" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="EmpId" SessionField="un" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="WorkingHours" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="EmpId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            
        </div>
    </form>
</body>
</html>
