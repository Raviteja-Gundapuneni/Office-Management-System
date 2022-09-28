<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="Master.RegistrationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" style="width: 223px">Enter EmpId</td>
                    <td>
                        <asp:TextBox ID="TxtEmpId" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TxtEmpId" ErrorMessage="Please Enter EmpId"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 223px">Enter First Name</td>
                    <td>
                        <asp:TextBox ID="TxtFname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtFname" ErrorMessage="Please Enter First Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 223px">Enter Last Name</td>
                    <td>
                        <asp:TextBox ID="TxtLname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtLname" ErrorMessage="Please Enter Last Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 223px">Enter Department</td>
                    <td>
                        <asp:TextBox ID="TxtDept" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtDept" ErrorMessage="Please Enter Department"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 223px">Enter Date of Joining</td>
                    <td>
                        <asp:TextBox ID="TxtDOJ" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtDOJ" ErrorMessage="Please Enter DOJ"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="width: 223px">Enter Age</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtAge" ErrorMessage="Please Enter Age Between 22 to 65" MaximumValue="65" MinimumValue="22" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 223px">Enter Gender</td>
                    <td>
                        <asp:RadioButton ID="RB1" runat="server" Text="Male" GroupName="Gender" />
                        <asp:RadioButton ID="RB2" runat="server" Text="Female" GroupName="Gender"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 223px">Enter Phone No</td>
                    <td>
                        <asp:TextBox ID="TxtPhoneNo" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtPhoneNo" ErrorMessage="Please Enter Valid Number" ValidationExpression="[6789]\d{9}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 223px">Enter Address</td>
                    <td>
                        <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtAddress" ErrorMessage="Please Enter Address"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 223px">Enter City</td>
                    <td>
                        <asp:DropDownList ID="DDL1City" runat="server">
                            <asp:ListItem>Hyderabad</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Bangalore</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 223px">Enter Country</td>
                    <td>
                       <asp:TextBox ID="TxtCountry" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtCountry" ErrorMessage="Please Enter Country"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 223px">Enter Email ID</td>
                    <td>
                        <asp:TextBox ID="TxtEmailId" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtEmailId" ErrorMessage="Please Enter Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 223px">Enter Password</td>
                    <td>
                        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Please Enter Valid Password" ValidationExpression="[0-9a-z]{6}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="width: 223px">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="UserRegistration" Text="Register" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="LblMsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
   
</asp:Content>
