<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BloodBank.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 89%;
            height: 330px;
            margin-right: 73px;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            width: 297px;
            font-size: large;
        }
        .auto-style5 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style6 {
            width: 810px;
        }
        .auto-style7 {
            width: 297px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style4"><strong>User Name</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Should enter Username " ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Password</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Should enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox2" ErrorMessage="*Password and Confirm Password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Confirm Password</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Should enter Confirm Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Gender</strong></td>
                <td class="auto-style6"><strong>
                    <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style3" GroupName="t" Text="Male" />
                    <span class="auto-style3">&nbsp;&nbsp;&nbsp; </span>
                    <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style3" GroupName="t" Text="Female" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Languages</strong></td>
                <td class="auto-style6"><strong>
                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style3" Text="Telugu" />
                    <span class="auto-style3">&nbsp; </span>
                    <br class="auto-style3" />
                    <asp:CheckBox ID="CheckBox2" runat="server" CssClass="auto-style3"  Text="Hindi" />
                    <br class="auto-style3" />
                    <asp:CheckBox ID="CheckBox3" runat="server" CssClass="auto-style3" Text="English" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>State</strong></td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="height: 22px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>City</strong></td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Blood Group</strong></td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList3" ErrorMessage="*Should enter Blood Group" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Phone number</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Should enter Proper number" ForeColor="Red" ValidationExpression="[6-9]{1}[0-9]{9}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Email ID</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Should enter Email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"><strong><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Text="Register" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style6"><strong><span class="auto-style3">&nbsp;&nbsp;</span><asp:Button ID="Button2" runat="server" CssClass="auto-style5" Text="Clear" OnClick="Button2_Click" />
                    </strong></td>
            </tr>
        </table>
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style3">Already Registered..? </span>
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style3" NavigateUrl="~/Home.aspx">Login</asp:HyperLink>
            </strong>
        </div>
    </form>
</body>
</html>
