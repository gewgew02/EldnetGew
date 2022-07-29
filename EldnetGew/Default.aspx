<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="MainPage.aspx.cs" Inherits="EldnetGew.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 160px;
        }
        .auto-style3 {
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style6 {
            width: 610px;
            height: 39px;
            }
        .auto-style7 {
            width: 610px;
            text-align: left;
            height: 26px;
        }
        .auto-style9 {
            width: 610px;
            text-align: left;
        }
    </style>
</head>
<body style="width: 621px; height: 159px">
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#FFCCFF" Width="624px">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td class="auto-style7"><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp; Welcome to </span><strong><span class="auto-style3">g a y l e</span><span class="auto-style4"> </span></strong><span class="auto-style4">DENTAL CLINIC!</span></td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="LogInButton" runat="server" BackColor="#CCFFFF" OnClick="LogInButton_Click" Text="LOG IN" Width="90px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="RegisterButton" runat="server" BackColor="#CCFFFF" OnClick="RegisterButton_Click" Text="REGISTER" Width="145px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="OEButton" runat="server" BackColor="#CCFFFF" OnClick="OEButton_Click" Text="ORAL EXAMINATION" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
