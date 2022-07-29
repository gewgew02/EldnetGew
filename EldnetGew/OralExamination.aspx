<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="OralExamination.aspx.cs" Inherits="EldnetGew.OralExamination" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 798px;
            background-color: #FFCCFF;
        }
        .auto-style5 {
            text-decoration: underline;
        }
        .auto-style6 {
            background-color: #FFCCFF;
            width: 237px;
        }
        .auto-style8 {
            width: 253px;
        }
        .auto-style14 {
            width: 1024px;
        }
        .auto-style18 {
            width: 1217px;
            height: 78px;
        }
        .auto-style22 {
            width: 322px;
        }
        .auto-style23 {
            width: 270px;
        }
        .auto-style32 {
            width: 1240px;
            height: 615px;
            margin-bottom: 9px;
        }
        .auto-style34 {
            width: 1215px;
            height: 233px;
        }
        .auto-style37 {
            width: 67px;
        }
        .auto-style38 {
            width: 67px;
            height: 26px;
        }
        .auto-style39 {
            width: 263px;
            height: 26px;
        }
        .auto-style40 {
            width: 49px;
            height: 26px;
        }
        .auto-style41 {
            width: 49px;
        }
        .auto-style42 {
            width: 263px;
        }
        .auto-style44 {
            width: 414px;
        }
        .auto-style45 {
            width: 1668px;
        }
        .auto-style46 {
            width: 67px;
            height: 34px;
        }
        .auto-style47 {
            width: 49px;
            height: 34px;
        }
        .auto-style48 {
            width: 263px;
            height: 34px;
        }
    </style>
</head>
<body style="width: 1240px; height: 612px">
    <form id="form1" runat="server" class="auto-style32">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"><strong>Oral Examination Entry</strong></td>
                    <td class="auto-style6"><span class="auto-style8"><strong><span class="auto-style5">g a y l e</span> </strong></span>DENTAL CLINIC</td>
                </tr>
            </table>
        </div>
        <asp:Panel ID="Panel1" runat="server" Font-Names="Times New Roman" Font-Size="Medium" GroupingText="Patient Information" Height="179px" Width="1237px" BackColor="#FFCCCC">
            <table class="auto-style18">
                <tr>
                    <td class="auto-style23">OE No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style45">
                        <asp:TextBox ID="OENoTextBox" runat="server" BackColor="#CCCCCC" BorderColor="#CCCCCC"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="OENoTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style44">Date (dd/mm/yyyy)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="OEDateTextBox" runat="server" BorderStyle="None"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">Patient Code&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style45">
                        <asp:TextBox ID="OEPCodeTextBox" runat="server"></asp:TextBox>
                        &nbsp;<asp:Button ID="DisplayButton" runat="server" CausesValidation="False" OnClick="DisplayButton_Click" Text="Display" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="OEPCodeTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style44">Remarks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="OERemarksTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="OERemarksTextBox" Display="Dynamic" ErrorMessage="*N/A if none" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style45">
                        <asp:TextBox ID="OENameTextBox" runat="server" BorderColor="#333333" BorderStyle="None"></asp:TextBox>
                        &nbsp;</td>
                    <td class="auto-style44">Chat Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style14">
                        <asp:RadioButtonList ID="RBLChatType" runat="server">
                            <asp:ListItem>Adult</asp:ListItem>
                            <asp:ListItem>Child</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="RBLChatType" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Font-Names="Times New Roman" Font-Size="Medium" GroupingText="Medical/Dental History" Height="351px" Width="1237px" BackColor="#FFCCCC">
            <table class="auto-style34">
                <tr>
                    <td rowspan="2" colspan="3">Tooth Location:</td>
                    <td class="auto-style28"><strong>Add Disease/s History</strong></td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;<asp:Button ID="TCodeButton" runat="server" Text="Tooth Code" CausesValidation="False" OnClick="TCodeButton_Click" />
                        <asp:TextBox ID="TCodeTextBox" runat="server" Width="95px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="CCodeButton" runat="server" Text="Condition Code" CausesValidation="False" OnClick="CCodeButton_Click" />
                        <asp:TextBox ID="CCodeTextBox" runat="server" Width="95px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="SCodeButton" runat="server" Text="Surface Code" CausesValidation="False" OnClick="SCodeButton_Click" />
                        <asp:TextBox ID="SCodeTextBox" runat="server" Width="95px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style38">Adult</td>
                    <td class="auto-style40">UR</td>
                    <td class="auto-style39">
                        18, 17, 16, 15, 14, 13, 12, 11</td>
                    <td rowspan="9" class="auto-style28">
                        <asp:GridView ID="OEGridView" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False" DataKeyNames="TCODE,CONCODE,SCODE" DataSourceID="SqlDataSource1" ShowFooter="True">
                            <Columns>
                                <asp:BoundField DataField="TCODE" HeaderText="Tooth Code" ReadOnly="True" SortExpression="TCODE" />
                                <asp:TemplateField HeaderText="Tooth Name" SortExpression="TNAME">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TNAME") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("TNAME") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Condition Code" SortExpression="CONCODE">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CONCODE") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("CONCODE") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Condition Name" SortExpression="CONNAME">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CONNAME") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("CONNAME") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Surface Code" SortExpression="SCODE">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("SCODE") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("SCODE") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Surface Name" SortExpression="SNAME">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("SNAME") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("SNAME") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GewEldnetConnectionString %>" SelectCommand="SELECT TOOTHFILE.TCODE, TOOTHFILE.TNAME, CONDITIONFILE.CONCODE, CONDITIONFILE.CONNAME, SURFACEFILE.SCODE, SURFACEFILE.SNAME
FROM TOOTHFILE, CONDITIONFILE, SURFACEFILE"></asp:SqlDataSource>
                    </td>                      
                        </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style41">
                        UL</td>
                    <td class="auto-style42">21, 22, 23, 24, 25, 26, 27, 28</td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style41">LR</td>
                    <td class="auto-style42">
                        48, 47, 46, 45, 44, 43, 42, 41</td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style41">LL</td>
                    <td class="auto-style42">
                        31, 32, 33, 34, 35, 36, 37, 38</td>
                </tr>
                <tr>
                    <td class="auto-style37">Child</td>
                    <td class="auto-style40">UR</td>
                    <td class="auto-style42">
                        55, 54, 53, 52, 51</td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style41">UL</td>
                    <td class="auto-style42">
                        61, 62, 63, 64, 65</td>
                </tr>
                <tr>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style41">LR</td>
                    <td class="auto-style42">
                        85, 84, 83, 82, 81</td>
                </tr>
                <tr>
                    <td class="auto-style46"></td>
                    <td class="auto-style47">LL</td>
                    <td class="auto-style48">71, 72, 73, 74, 75</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="OESaveButton" runat="server" BackColor="#CCFFFF" Text="SAVE" OnClick="OESaveButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="OEClearButton" runat="server" BackColor="#CCFFFF" CausesValidation="False" Text="CLEAR" OnClick="OEClearButton_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="OEBackButton" runat="server" BackColor="#CCFFFF" CausesValidation="False" OnClick="OEBackButton_Click" Text="MAIN" />
    </form>
</body>
</html>
