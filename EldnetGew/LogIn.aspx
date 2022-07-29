<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="LogIn.aspx.cs" Inherits="EldnetGew.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #E1E1E1;
        }
        .auto-style2 {
            width: 99%;
            height: 188px;
        }
        .auto-style5 {
            width: 211px;
        }
        .auto-style6 {
            width: 971px;
            height: 212px;
        }
        .auto-style7 {
            width: 750px;
        }
        .auto-style8 {
            width: 211px;
            height: 38px;
        }
        .auto-style9 {
            width: 750px;
            height: 38px;
        }
    </style>
</head>
<body style="width: 964px; height: 220px">
    <form id="form1" runat="server">
        <div class="auto-style6">
            <asp:Panel ID="Panel1" runat="server" BorderColor="Black" BorderStyle="None" CssClass="auto-style1" Height="220px" Width="970px" Font-Names="Times New Roman" Font-Size="Medium" GroupingText="LOG IN" BackColor="#FFCCCC">
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style5">Name</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="NameTextBox" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Username</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UsernameTextBox" Display="Dynamic" ErrorMessage="Required!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">Password</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required!" ControlToValidate="PasswordTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Confirm Password</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="ConfirmPasswordTextBox" runat="server"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required!" ControlToValidate="ConfirmPasswordTextBox" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPasswordTextBox" Display="Dynamic" ErrorMessage="The Password and Confirm Password must be the same!" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">
                            <asp:Button ID="LoginButton" runat="server" Text="LOGIN" BackColor="#CCFFFF" OnClick="LoginButton_Click" />
                            &nbsp;
                            <asp:Button ID="ClearButton" runat="server" BackColor="#CCFFFF" OnClick="ClearButton_Click" Text="CLEAR" CausesValidation="False" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="BackButton" runat="server" BackColor="#CCFFFF" OnClick="BackButton_Click" Text="MAIN" CausesValidation="False" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
