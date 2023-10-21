<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BloodBank.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style3 {
            width: 183px;
        }
        .auto-style4 {
            width: 473px;
        }
        .auto-style5 {
            font-size: large;
        }
        .auto-style6 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-align: left;
            margin-left: 458px;
        }
        .auto-style9 {
            text-align: left;
            height: 101px;
            width: 105px;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="6"><strong>Helping Hands<br />
                        </strong></td>
                </tr>
                <tr>
                    <td colspan="6" class="auto-style7">&nbsp;<strong><span class="auto-style5">&nbsp;</span><asp:Button ID="Button3" runat="server" CssClass="auto-style6" Text="Home" />
                        <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style6" OnClick="Button4_Click" Text="Register" />
                        <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:Button ID="Button5" runat="server" CssClass="auto-style6" OnClick="Button5_Click1" Text="Login" />
                        <span class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:Button ID="Button6" runat="server" CssClass="auto-style6" OnClick="Button6_Click" Text="Search" />
                        <br />
                        <br />
&nbsp;<asp:Panel ID="Panel1" runat="server" CssClass="auto-style8" Visible="False">
                            <div class="auto-style9">
                                <asp:Button ID="Button7" runat="server" CssClass="auto-style6" OnClick="Button7_Click" Text="Admin" />
                                <br class="auto-style5" />
                                &nbsp;
                                <br class="auto-style5" />
                                <asp:Button ID="Button8" runat="server" CssClass="auto-style6" OnClick="Button8_Click" Text="User" />
                            </div>
                        </asp:Panel>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3" colspan="2">
                        &nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
