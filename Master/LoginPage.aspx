<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Master.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" style="width: 115px">EmpId</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtEmpId" runat="server" placeholder="please enter empId"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtEmpId" ErrorMessage="Please Enter EmpId"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 115px">Password</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" placeholder="please enter Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 115px">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 115px">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="BtnSignIn" runat="server" Text="SignIn" OnClick="Validation" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 115px">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:LinkButton ID="BtnSignUp" runat="server" OnClick="BtnSignUp_Click" CausesValidation="False">New User Sign Up</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 115px">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="LblMsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
      
</asp:Content>
