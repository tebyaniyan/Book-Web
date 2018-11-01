<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div dir="rtl">
            <table style="width: 100%; height: 100%">
                <tr>
                    <td width="10%" style="height: 65px">
                    </td>
                    <td bgcolor="#003366" style="height: 65px">
                        <table style="width: 100%">
                            <tr>
                                <td style="height: 42px" align="right" id="Subject">
                                    دفترچه تلفن آنلاین</td>
                               
                            </tr>
                        </table>
                    </td>
                    <td width="10%" style="height: 65px">
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px" width="10%">
                    </td>
                    <td>
                        <div style="text-align: center">
                        </div>
                        &nbsp;</td>
                    <td style="height: 20px" width="10%">
                    </td>
                </tr>
                <tr>
                    <td width="10%">
                    </td>
                    <td valign="top">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            DeleteCommand="DELETE FROM [tblAddresses] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tblAddresses] ([fNameFamily], [fJob], [fAddress1], [fAddress2], [fPhone], [fFax], [fMobile], [fEmail], [fDesc]) VALUES (@fNameFamily, @fJob, @fAddress1, @fAddress2, @fPhone, @fFax, @fMobile, @fEmail, @fDesc)"
                            SelectCommand="SELECT * FROM [tblAddresses]" UpdateCommand="UPDATE [tblAddresses] SET [fNameFamily] = @fNameFamily, [fJob] = @fJob, [fAddress1] = @fAddress1, [fAddress2] = @fAddress2, [fPhone] = @fPhone, [fFax] = @fFax, [fMobile] = @fMobile, [fEmail] = @fEmail, [fDesc] = @fDesc WHERE [fId] = @fId">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="fId" PropertyName="SelectedValue"
                                    Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="fNameFamily" Type="String" />
                                <asp:Parameter Name="fJob" Type="String" />
                                <asp:Parameter Name="fAddress1" Type="String" />
                                <asp:Parameter Name="fAddress2" Type="String" />
                                <asp:Parameter Name="fPhone" Type="String" />
                                <asp:Parameter Name="fFax" Type="String" />
                                <asp:Parameter Name="fMobile" Type="String" />
                                <asp:Parameter Name="fEmail" Type="String" />
                                <asp:Parameter Name="fDesc" Type="String" />
                                <asp:Parameter Name="fId" Type="Int32" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="fNameFamily" Type="String" />
                                <asp:Parameter Name="fJob" Type="String" />
                                <asp:Parameter Name="fAddress1" Type="String" />
                                <asp:Parameter Name="fAddress2" Type="String" />
                                <asp:Parameter Name="fPhone" Type="String" />
                                <asp:Parameter Name="fFax" Type="String" />
                                <asp:Parameter Name="fMobile" Type="String" />
                                <asp:Parameter Name="fEmail" Type="String" />
                                <asp:Parameter Name="fDesc" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
                            <asp:View ID="View1" runat="server">
                                <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"
                            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="fId"
                            DataSourceID="SqlDataSource2" GridLines="Both" Width="80%"  OnItemCommand="FormView1_ItemCommand" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <EditItemTemplate><table style="width: 100%; height: 100%">
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label1" runat="server" Text="نام و نام خانوادگی :"></asp:Label></td>
                                    <td align="right">
                                        &nbsp;<asp:TextBox ID="fNameFamilyTextBox" runat="server" Text='<%# Bind("fNameFamily") %>' CssClass="txt"></asp:TextBox></td>
                                    <td align="right">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fNameFamilyTextBox"
                                            ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label2" runat="server" Text="شغل :"></asp:Label></td>
                                    <td align="right">
                                        &nbsp;<asp:TextBox ID="fJobTextBox" runat="server" Text='<%# Bind("fJob") %>' CssClass="txt"></asp:TextBox></td>
                                    <td align="right">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label5" runat="server" Text="تلفن :"></asp:Label></td>
                                    <td align="right">
                                        &nbsp;<asp:TextBox ID="fPhoneTextBox" runat="server" Text='<%# Bind("fPhone") %>' CssClass="txt"></asp:TextBox></td>
                                    <td align="right">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fPhoneTextBox"
                                            ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label6" runat="server" Text="فکس :"></asp:Label></td>
                                    <td align="right">
                                        &nbsp;<asp:TextBox ID="fFaxTextBox" runat="server" Text='<%# Bind("fFax") %>' CssClass="txt"></asp:TextBox></td>
                                    <td align="right">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label7" runat="server" Text="همراه :"></asp:Label></td>
                                    <td align="right">
                                        &nbsp;<asp:TextBox ID="fMobileTextBox" runat="server" Text='<%# Bind("fMobile") %>' CssClass="txt"></asp:TextBox></td>
                                    <td align="right">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label8" runat="server" Text="ایمیل :"></asp:Label></td>
                                    <td align="right">
                                        &nbsp;<asp:TextBox ID="fEmailTextBox" runat="server" Text='<%# Bind("fEmail") %>' CssClass="txt"></asp:TextBox></td>
                                    <td align="right">
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="fEmailTextBox"
                                            ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label3" runat="server" Text="آدرس 1 :"></asp:Label></td>
                                    <td align="right" colspan="2" rowspan="3">
                                        &nbsp;<asp:TextBox ID="fAddress1TextBox" runat="server" Text='<%# Bind("fAddress1") %>' CssClass="txt" Width="80%"></asp:TextBox>
                                        <asp:TextBox ID="fAddress2TextBox" runat="server" Text='<%# Bind("fAddress2") %>' CssClass="txt" Width="80%"></asp:TextBox>
                                        &nbsp;<asp:TextBox ID="fDescTextBox" runat="server" Text='<%# Bind("fDesc") %>' CssClass="txt" Width="80%"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label4" runat="server" Text="آدرس 2 :"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label9" runat="server" Text="شرح :"></asp:Label></td>
                                </tr>
                            </table>
                                &nbsp;
                                <asp:Button ID="btnUpdate" runat="server" CommandName="Update" CssClass="btn" Text="به روز رسانی" />
                                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel"
                                    CssClass="btn" Text="انصراف" />
                            </EditItemTemplate>
                            <InsertItemTemplate><table style="width: 100%; height: 100%">
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label1" runat="server" Text="نام و نام خانوادگی :"></asp:Label></td>
                                    <td align="right">
                                        &nbsp;<asp:TextBox ID="fNameFamilyTextBox" runat="server" Text='<%# Bind("fNameFamily") %>' CssClass="txt"></asp:TextBox></td>
                                    <td align="right">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fNameFamilyTextBox"
                                            ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label2" runat="server" Text="شغل :"></asp:Label></td>
                                    <td align="right">
                                        &nbsp;<asp:TextBox ID="fJobTextBox" runat="server" Text='<%# Bind("fJob") %>' CssClass="txt"></asp:TextBox></td>
                                    <td align="right">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label5" runat="server" Text="تلفن :"></asp:Label></td>
                                    <td align="right">
                                        &nbsp;<asp:TextBox ID="fPhoneTextBox" runat="server" Text='<%# Bind("fPhone") %>' CssClass="txt"></asp:TextBox></td>
                                    <td align="right">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fPhoneTextBox"
                                            ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label6" runat="server" Text="فکس :"></asp:Label></td>
                                    <td align="right">
                                        &nbsp;<asp:TextBox ID="fFaxTextBox" runat="server" Text='<%# Bind("fFax") %>' CssClass="txt"></asp:TextBox></td>
                                    <td align="right">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label7" runat="server" Text="همراه :"></asp:Label></td>
                                    <td align="right">
                                        &nbsp;<asp:TextBox ID="fMobileTextBox" runat="server" Text='<%# Bind("fMobile") %>' CssClass="txt"></asp:TextBox></td>
                                    <td align="right">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label8" runat="server" Text="ایمیل :"></asp:Label></td>
                                    <td align="right">
                                        &nbsp;<asp:TextBox ID="fEmailTextBox" runat="server" Text='<%# Bind("fEmail") %>' CssClass="txt"></asp:TextBox></td>
                                    <td align="right">
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="fEmailTextBox"
                                            ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label3" runat="server" Text="آدرس 1 :"></asp:Label></td>
                                    <td align="right" colspan="2" rowspan="3">
                                        &nbsp;<asp:TextBox ID="fAddress1TextBox" runat="server" Text='<%# Bind("fAddress1") %>' CssClass="txt" Width="80%"></asp:TextBox>
                                        <asp:TextBox ID="fAddress2TextBox" runat="server" Text='<%# Bind("fAddress2") %>' CssClass="txt" Width="80%"></asp:TextBox>
                                        &nbsp;<asp:TextBox ID="fDescTextBox" runat="server" Text='<%# Bind("fDesc") %>' CssClass="txt" Width="80%"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="left" width="150">
                                        <asp:Label ID="Label4" runat="server" Text="آدرس 2 :"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td align="left" width="150" style="height: 22px">
                                        <asp:Label ID="Label9" runat="server" Text="شرح :"></asp:Label></td>
                                </tr>
                            </table>
                                <asp:Button ID="btnUpdate" runat="server" CommandName="Insert" CssClass="btn" Text="درج" /><asp:Button
                                    ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn"
                                    Text="انصراف" />&nbsp;
                            </InsertItemTemplate>
                            <ItemTemplate><table style="width: 100%; height: 100%">
                                    <tr>
                                        <td align="left" width="150">
                                            <asp:Label ID="Label1" runat="server" Text="نام و نام خانوادگی :"></asp:Label></td>
                                        <td align="right">
                                            <asp:Label ID="fNameFamilyLabel" runat="server" Text='<%# Bind("fNameFamily") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" width="150">
                                            <asp:Label ID="Label2" runat="server" Text="شغل :"></asp:Label></td>
                                        <td align="right">
                                            <asp:Label ID="fJobLabel" runat="server" Text='<%# Bind("fJob") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" width="150">
                                            <asp:Label ID="Label3" runat="server" Text="آدرس 1 :"></asp:Label></td>
                                        <td align="right">
                                            <asp:Label ID="fAddress1Label" runat="server" Text='<%# Bind("fAddress1") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" width="150">
                                            <asp:Label ID="Label4" runat="server" Text="آدرس 2 :"></asp:Label></td>
                                        <td align="right">
                                            <asp:Label ID="fAddress2Label" runat="server" Text='<%# Bind("fAddress2") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" width="150">
                                            <asp:Label ID="Label5" runat="server" Text="تلفن :"></asp:Label></td>
                                        <td align="right">
                                            <asp:Label ID="fPhoneLabel" runat="server" Text='<%# Bind("fPhone") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" width="150">
                                            <asp:Label ID="Label6" runat="server" Text="فکس :"></asp:Label></td>
                                        <td align="right">
                                            <asp:Label ID="fFaxLabel" runat="server" Text='<%# Bind("fFax") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" width="150">
                                            <asp:Label ID="Label7" runat="server" Text="همراه :"></asp:Label></td>
                                        <td align="right">
                                            <asp:Label ID="fMobileLabel" runat="server" Text='<%# Bind("fMobile") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" width="150">
                                            <asp:Label ID="Label8" runat="server" Text="ایمیل :"></asp:Label></td>
                                        <td align="right">
                                            <asp:Label ID="fEmailLabel" runat="server" Text='<%# Bind("fEmail") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" width="150">
                                            <asp:Label ID="Label9" runat="server" Text="شرح :"></asp:Label></td>
                                        <td align="right">
                                            <asp:Label ID="fDescLabel" runat="server" Text='<%# Bind("fDesc") %>'></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td align="left" width="150">
                                        </td>
                                        <td align="right">
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="Azure" Font-Bold="False" ForeColor="Black" />
                        </asp:FormView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    DeleteCommand="DELETE FROM [tblAddresses] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tblAddresses] ([fNameFamily], [fJob], [fAddress1], [fAddress2], [fPhone], [fFax], [fMobile], [fEmail], [fDesc]) VALUES (@fNameFamily, @fJob, @fAddress1, @fAddress2, @fPhone, @fFax, @fMobile, @fEmail, @fDesc)"
                                    SelectCommand="SELECT * FROM [tblAddresses] where fid=@param" UpdateCommand="UPDATE [tblAddresses] SET [fNameFamily] = @fNameFamily, [fJob] = @fJob, [fAddress1] = @fAddress1, [fAddress2] = @fAddress2, [fPhone] = @fPhone, [fFax] = @fFax, [fMobile] = @fMobile, [fEmail] = @fEmail, [fDesc] = @fDesc WHERE [fId] = @fId">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="GridView1" Name="param" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                    <DeleteParameters>
                                        <asp:Parameter Name="fId" Type="Int32" />
                                    </DeleteParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="fNameFamily" Type="String" />
                                        <asp:Parameter Name="fJob" Type="String" />
                                        <asp:Parameter Name="fAddress1" Type="String" />
                                        <asp:Parameter Name="fAddress2" Type="String" />
                                        <asp:Parameter Name="fPhone" Type="String" />
                                        <asp:Parameter Name="fFax" Type="String" />
                                        <asp:Parameter Name="fMobile" Type="String" />
                                        <asp:Parameter Name="fEmail" Type="String" />
                                        <asp:Parameter Name="fDesc" Type="String" />
                                        <asp:Parameter Name="fId" Type="Int32" />
                                    </UpdateParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="fNameFamily" Type="String" />
                                        <asp:Parameter Name="fJob" Type="String" />
                                        <asp:Parameter Name="fAddress1" Type="String" />
                                        <asp:Parameter Name="fAddress2" Type="String" />
                                        <asp:Parameter Name="fPhone" Type="String" />
                                        <asp:Parameter Name="fFax" Type="String" />
                                        <asp:Parameter Name="fMobile" Type="String" />
                                        <asp:Parameter Name="fEmail" Type="String" />
                                        <asp:Parameter Name="fDesc" Type="String" />
                                    </InsertParameters>
                                </asp:SqlDataSource>
                                &nbsp;&nbsp;</asp:View>
                            <asp:View ID="View2" runat="server">
                                <table style="width: 100%; height: 100%">
                                    <tr>
                                        <td align="center" style="height: 30px">
                                            <asp:Button ID="btnNew" runat="server" CssClass="btn" Text="جدید" OnClick="btnNew_Click" />
                                            <asp:Button ID="brnEdit" runat="server" CssClass="btn" Text="ویرایش" OnClick="brnEdit_Click" />
                                            <asp:Button ID="btnDelete" runat="server" CssClass="btn" Text="حذف" OnClick="btnDelete_Click" />
                                            <asp:Button ID="btnSearch" runat="server" CssClass="btn" Text="جستجو" OnClick="btnSearch_Click" /></td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="height: 10px">
                                            <asp:Label ID="lbInfo" runat="server" ForeColor="#C00000"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                DataKeyNames="fId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Vertical"
                                                Width="80%">
                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                <Columns>
                                                    <asp:CommandField HeaderText="انتخاب" SelectText="&gt;&gt;" ShowSelectButton="True">
                                                        <ItemStyle Width="20px" />
                                                    </asp:CommandField>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <table style="width: 100%; height: 100%">
                                                                <tr>
                                                                    <td align="left" width="15%">
                                                                        <asp:Label ID="Label1" runat="server" Text="نام و نام خانوادگی :"></asp:Label></td>
                                                                    <td align="right" width="35%">
                                                                        <asp:Label ID="fNameFamilyLabel" runat="server" Text='<%# Bind("fNameFamily") %>'></asp:Label></td>
                                                                    <td align="left" width="15%">
                                                                        <asp:Label ID="Label2" runat="server" Text="شغل :"></asp:Label></td>
                                                                    <td align="right" width="35%">
                                                                        <asp:Label ID="fJobLabel" runat="server" Text='<%# Bind("fJob") %>'></asp:Label></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" width="15%">
                                                                        <asp:Label ID="Label5" runat="server" Text="تلفن :"></asp:Label></td>
                                                                    <td align="right" width="35%">
                                                                        <asp:Label ID="fPhoneLabel" runat="server" Text='<%# Bind("fPhone") %>'></asp:Label></td>
                                                                    <td align="left" width="15%">
                                                                        <asp:Label ID="Label6" runat="server" Text="فکس :"></asp:Label></td>
                                                                    <td align="right" width="35%">
                                                                        <asp:Label ID="fFaxLabel" runat="server" Text='<%# Bind("fFax") %>'></asp:Label></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" width="15%">
                                                                        <asp:Label ID="Label7" runat="server" Text="همراه :"></asp:Label></td>
                                                                    <td align="right" width="35%">
                                                                        <asp:Label ID="fMobileLabel" runat="server" Text='<%# Bind("fMobile") %>'></asp:Label></td>
                                                                    <td align="left" width="15%">
                                                                        <asp:Label ID="Label8" runat="server" Text="ایمیل :"></asp:Label></td>
                                                                    <td align="right" width="35%">
                                                                        <asp:Label ID="fEmailLabel" runat="server" Text='<%# Bind("fEmail") %>'></asp:Label></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" width="15%">
                                                                        <asp:Label ID="Label3" runat="server" Text="آدرس 1 :"></asp:Label></td>
                                                                    <td align="right" colspan="3">
                                                                        <asp:Label ID="fAddress1Label" runat="server" Text='<%# Bind("fAddress1") %>'></asp:Label></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" width="15%">
                                                                        <asp:Label ID="Label4" runat="server" Text="آدرس 2 :"></asp:Label></td>
                                                                    <td align="right" colspan="3">
                                                                        <asp:Label ID="fAddress2Label" runat="server" Text='<%# Bind("fAddress2") %>'></asp:Label></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="left" width="15%">
                                                                        <asp:Label ID="Label9" runat="server" Text="شرح :"></asp:Label></td>
                                                                    <td align="right" colspan="3">
                                                                        <asp:Label ID="fDescLabel" runat="server" Text='<%# Bind("fDesc") %>'></asp:Label></td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                <EditRowStyle BackColor="#999999" />
                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
                            </asp:View>
                        </asp:MultiView>
                    </td>
                    <td width="10%">
                    </td>
                </tr>
                <tr>
                    <td width="10%">
                    </td>
                    <td>
                    </td>
                    <td width="10%">
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
