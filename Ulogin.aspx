<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ulogin.aspx.cs" Inherits="BloodBank.Ulogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 31%;
            font-size: large;
        }
        .auto-style2 {
            width: 110px;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            font-size: large;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2"><strong></strong></td>
                <td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong></strong></td>
                <td>
                    <strong>
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*Invalid User" Visible="False"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>User Name</strong></td>
                <td>
                    <strong>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Password</strong></td>
                <td>
                    <strong>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong></strong></td>
                <td>
                    <strong>
                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="auto-style4" OnClick="Button1_Click" />
                    </strong></strong></td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
