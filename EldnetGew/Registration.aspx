<%@ Page Language="C#" AutoEventWireup="true" UnobtrusiveValidationMode="none" CodeBehind="Registration.aspx.cs" Inherits="EldnetGew.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
        }
        .auto-style2 {
            width: 185px;
            background-color: #FFCCFF;
        }
        .auto-style4 {
            width: 296px;
            background-color: #FFCCFF;
        }
        .auto-style8 {
            text-decoration: underline;
        }
        .auto-style9 {
            background-color: #FFCCFF;
        }
        .auto-style10 {
            width: 238px;
            background-color: #FFCCFF;
        }
        .auto-style11 {
            width: 206px;
            background-color: #FFCCFF;
        }
        .auto-style12 {
            width: 323px;
            background-color: #FFCCFF;
        }
        .auto-style14 {
            text-decoration: underline;
            width: 322px;
            background-color: #FFCCCC;
        }
        .auto-style16 {
            width: 158px;
            background-color: #FFCCCC;
        }
        .auto-style18 {
            width: 176px;
            background-color: #FFCCCC;
        }
        .auto-style19 {
            width: 285px;
            background-color: #FFCCCC;
        }
        .auto-style20 {
            width: 394px;
            background-color: #FFCCCC;
        }
        .auto-style21 {
            width: 219px;
            background-color: #FFCCCC;
        }
        .auto-style22 {
            width: 322px;
            background-color: #FFCCCC;
        }
        .auto-style28 {
            width: 922px;
        }
        .auto-style29 {
            height: 949px;
        }
        .auto-style30 {
            width: 1578px;
        }
        .auto-style31 {
            width: 359px;
        }
        .auto-style32 {
            width: 79px;
        }
        .auto-style33 {
            width: 341px;
        }
        .auto-style34 {
            width: 358px;
        }
        .auto-style35 {
            width: 100%;
        }
        .auto-style36 {
            width: 236px;
        }
        .auto-style37 {
            width: 99%;
            height: 47px;
        }
    </style>
</head>
<body style="width: 1603px; height: 1023px;">
    <form id="form1" runat="server" class="auto-style29">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><strong>Patient Entry Profile</strong></td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style9"><span class="auto-style8"><strong>g a y l e </strong></span>DENTAL CLINIC</td>
                </tr>
            </table>
        </div>
        <asp:Panel ID="Panel1" runat="server" Font-Names="Times New Roman" Font-Size="Medium" GroupingText="Patient Information" Height="272px" Width="1584px" BackColor="#FFCCCC">
            <table class="auto-style56">
                <tr>
                    <td class="auto-style16">Patient Code&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="PatCodeTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PatCodeTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">Occupation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="OccuTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="OccuTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style21">Date (dd/mm/yyyy)&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="DateTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DateTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="NameTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="AgeTextBox" runat="server" Width="75px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="AgeTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="AgeTextBox" ErrorMessage="*Age must be 18 to 45" ForeColor="Red" MaximumValue="45" MinimumValue="18" SetFocusOnError="True" Type="Integer">*Age must be 18 to 45</asp:RangeValidator>
                    </td>
                    <td class="auto-style21">Other Phone No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="OtherTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="OtherTextBox" Display="Dynamic" ErrorMessage="*N/A if none" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Birthdate
                        <br />
                        (dd/mm/yyyy)&nbsp;&nbsp; :</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="BdayTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="BdayTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        &nbsp;<br />
                        </td>
                    <td class="auto-style18">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style20">
                        <asp:RadioButtonList ID="RBLGender" runat="server">
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style21">Person responsible for this account&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="RespTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="RespTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Home Address :</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="HomeAddTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="HomeAddTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">Home Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="HomePhoTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="HomePhoTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="HomePhoTextBox" Display="Dynamic" ErrorMessage="Invalid Format" ForeColor="Red" SetFocusOnError="True" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style21">Relationship&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="RelTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="RelTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Office Address :</td>
                    <td class="auto-style19">
                        <asp:TextBox ID="OffAddTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="OffAddTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">Office Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="OffPhoTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="OffPhoTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="OffPhoTextBox" Display="Dynamic" ErrorMessage="Invalid Format" ForeColor="Red" SetFocusOnError="True" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style21">Office for referral&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="RefTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="RefTextBox" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">Marital Status :</td>
                    <td class="auto-style19">
                        <asp:DropDownList ID="MariStatDropDown" runat="server">
                            <asp:ListItem Value="NULL">Select</asp:ListItem>
                            <asp:ListItem>Single</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>Separated</asp:ListItem>
                            <asp:ListItem>Divorced</asp:ListItem>
                            <asp:ListItem>Widowed</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="MariStatDropDown" Display="Dynamic" ErrorMessage="*Required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style18">Name of Spouse&nbsp;&nbsp; :</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="SpouseTextBox" runat="server"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="SpouseTextBox" Display="Dynamic" ErrorMessage="*N/A if none" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style21">Record Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                    <td class="auto-style22">
                        <asp:TextBox ID="RecStatTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Font-Names="Times New Roman" Font-Size="Medium" GroupingText="Medical/Dental History" Height="564px" Width="1584px" BackColor="#FFCCCC">
            <table class="auto-style40">
                <tr>
                    <td class="auto-style41" rowspan="2">Undercare of Physician:</td>
                    <td class="auto-style31" rowspan="2">
                        <asp:RadioButtonList ID="RBLPhysician" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                        </td>
                    <td class="auto-style28"><strong>Add Disease/s History</strong></td>
                </tr>
                <tr>
                    <td class="auto-style28">Disease Code:
                        <asp:TextBox ID="DisCodeTextBox" runat="server"></asp:TextBox>
                        &nbsp;<asp:Button ID="DCFindButton" runat="server" OnClick="DCFindButton_Click" Text="Find" CausesValidation="False" />
                        &nbsp;<asp:Button ID="ShowButton" runat="server" CausesValidation="False" OnClick="ShowButton_Click" Text="Show All" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42">Physician Name:</td>
                    <td class="auto-style31">
                        <asp:TextBox ID="PhyNameTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="PhyNameTextBox" Display="Dynamic" ErrorMessage="*Required or N/A" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td rowspan="8" class="auto-style28">           
                        <asp:GridView ID="DiseaseGridView" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="DISCODE" DataSourceID="SqlDataSource1" ShowFooter="True">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ValidationGroup="UPDATE" ShowHeader="true"/>
                                <asp:CommandField ShowDeleteButton="True" ShowHeader="true"/>

                                <asp:TemplateField HeaderText="---" SortExpression="---">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("DISINFO") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:LinkButton ValidationGroup="INSERT" OnClick="LbInsert_Click" ID="lbInsert" runat="server">Insert</asp:LinkButton>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="DISCODE" SortExpression="DISCODE">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("DISCODE") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtDisCode" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvInsertDisCode" runat="server" ErrorMessage="Required"
                                            ControlToValidate="txtDisCode" ValidationGroup="INSERT" Text="*" ForeColor="Red">
                                        </asp:RequiredFieldValidator>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="DISNAME" SortExpression="DISNAME">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DISNAME") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvEditDisName" runat="server" ErrorMessage="Required"
                                            ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                                        </asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("DISNAME") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox ID="txtDisName" runat="server"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="rfvInsertDisName" runat="server" ErrorMessage="Required"
                                            ControlToValidate="txtDisName" ValidationGroup="INSERT"  Text="*" ForeColor="Red">
                                        </asp:RequiredFieldValidator>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="DISSTATUS" SortExpression="DISSTATUS">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("DISSTATUS") %>'>
                                            <asp:ListItem>Select Status</asp:ListItem>    
                                            <asp:ListItem>AC</asp:ListItem>
                                            <asp:ListItem>IN</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfvEditStatus" runat="server" ErrorMessage="Required"
                                            ControlToValidate="DropDownList1" Text="*" ForeColor="Red" InitialValue="Select Status">
                                        </asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("DISSTATUS") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:DropDownList ID="ddlStatus" runat="server">
                                            <asp:ListItem>Select Status</asp:ListItem>    
                                            <asp:ListItem>AC</asp:ListItem>
                                            <asp:ListItem>IN</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfvInsertStatus" runat="server" ErrorMessage="Required"
                                            ControlToValidate="ddlStatus" ValidationGroup="INSERT" Text="*" ForeColor="Red" InitialValue="Select Status">
                                        </asp:RequiredFieldValidator>
                                    </FooterTemplate>
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
                        <asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummary1" ForeColor="Red" runat="server" />
                        <asp:ValidationSummary ID="ValidationSummary2" ForeColor="Red" runat="server" />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GewEldnetConnectionString %>" 
                            DeleteCommand="DELETE FROM [DISEASESFILE] WHERE [DISCODE] = @DISCODE" 
                            InsertCommand="INSERT INTO [DISEASESFILE] ([DISINFO], [DISCODE], [DISNAME], [DISSTATUS]) VALUES (@DISINFO, @DISCODE, @DISNAME, @DISSTATUS)" 
                            SelectCommand="SELECT * FROM [DISEASESFILE]" 
                            UpdateCommand="UPDATE [DISEASESFILE] SET [DISINFO] = @DISINFO, [DISNAME] = @DISNAME, [DISSTATUS] = @DISSTATUS WHERE [DISCODE] = @DISCODE">
                            <DeleteParameters>
                                <asp:Parameter Name="DISCODE" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="DISINFO" Type="String" />
                                <asp:Parameter Name="DISCODE" Type="String" />
                                <asp:Parameter Name="DISNAME" Type="String" />
                                <asp:Parameter Name="DISSTATUS" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="DISINFO" Type="String" />
                                <asp:Parameter Name="DISNAME" Type="String" />
                                <asp:Parameter Name="DISSTATUS" Type="String" />
                                <asp:Parameter Name="DISCODE" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>                      
                </tr>
                <tr>
                    <td class="auto-style42">Physician Address:</td>
                    <td class="auto-style31">
                        <asp:TextBox ID="PhyAddTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="PhyAddTextBox" Display="Dynamic" ErrorMessage="*Required or N/A" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">Hospitalization or Surgery<br /> in the past five years:</td>
                    <td class="auto-style31">
                        <asp:RadioButtonList ID="RBLSurgery" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style42">If yes, what for:</td>
                    <td class="auto-style31">
                        <asp:TextBox ID="SurgeryTextBox" runat="server"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="SurgeryTextBox" Display="Dynamic" ErrorMessage="*N/A if No" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">Presently taking medication:</td>
                    <td class="auto-style31">
                        <asp:RadioButtonList ID="RBLMeds" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">If yes, give the names:</td>
                    <td class="auto-style31">
                        <asp:TextBox ID="MedsTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="MedsTextBox" Display="Dynamic" ErrorMessage="*N/A if No" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">Allergic to any food, drug, or medicine?</td>
                    <td class="auto-style31">
                        <asp:TextBox ID="AllergyTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="AllergyTextBox" Display="Dynamic" ErrorMessage="*Required or N/A" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Font-Names="Times New Roman" Font-Size="Medium" GroupingText="FOR WOMEN ONLY" BackColor="#FFCCCC" Height="89px" Width="1584px">
            <table class="auto-style35">
                <tr>
                    <td class="auto-style49">Are you Pregnant?</td>
                    <td class="auto-style32">
                        <asp:RadioButtonList ID="RBLPreggy" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style36">Expected Date of Delivery:</td>
                    <td class="auto-style34">
                        <asp:TextBox ID="DeliveryTextBox" runat="server" CssClass="auto-style57"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="DeliveryTextBox" Display="Dynamic" ErrorMessage="*Required or N/A" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style52">Any problems associated with menstrual period?</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="MensProbTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="MensProbTextBox" Display="Dynamic" ErrorMessage="*Required or N/A" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <table class="auto-style37">
            <tr>
                <td class="auto-style30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="SearchButton" runat="server" BackColor="#CCFFFF" Text="SEARCH" CausesValidation="False" OnClick="SearchButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="SaveButton" runat="server" BackColor="#CCFFFF" Text="SAVE" OnClick="SaveButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ClearButton" runat="server" BackColor="#CCFFFF" Text="CLEAR" CausesValidation="False" OnClick="ClearButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BackButton" runat="server" BackColor="#CCFFFF" Text="MAIN" CausesValidation="False" OnClick="BackButton_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
