<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
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
                    </td>
                    <td style="height: 20px" width="10%">
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px" width="10%">
                    </td>
                    <td>
                        <div style="text-align: center">
                            <table style="width: 600px; height: 100%">
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Label1" runat="server" Text="نام و نام خانوادگی :"></asp:Label></td>
                                    <td align="right">
                                        <asp:TextBox ID="txtNameFamily" runat="server" CssClass="txt" Text='<%# Bind("fNameFamily") %>'></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Label5" runat="server" Text="تلفن :"></asp:Label></td>
                                    <td align="right">
                                        <asp:TextBox ID="txtPhone" runat="server" CssClass="txt" Text='<%# Bind("fPhone") %>'></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Label ID="Label7" runat="server" Text="همراه :"></asp:Label></td>
                                    <td align="right">
                                        <asp:TextBox ID="txtMobile" runat="server" CssClass="txt" Text='<%# Bind("fMobile") %>'></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 37px">
                                        <asp:Button ID="btnSearch" runat="server" CssClass="btn" OnClick="btnSearch_Click"
                                            Text="جستجو" />&nbsp;<asp:Button ID="btnBack" runat="server" CssClass="btn" OnClick="btnBack_Click"
                                                Text="بازگشت" /></td>
                                </tr>
                            </table>
                        </div>
                    </td>
                    <td style="height: 20px" width="10%">
                    </td>
                </tr>
                <tr>
                    <td style="height: 20px" width="10%">
                    </td>
                    <td>
                        <div style="text-align: center">
                        </div>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            DeleteCommand="DELETE FROM [tblAddresses] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tblAddresses] ([fNameFamily], [fJob], [fAddress1], [fAddress2], [fPhone], [fFax], [fMobile], [fEmail], [fDesc]) VALUES (@fNameFamily, @fJob, @fAddress1, @fAddress2, @fPhone, @fFax, @fMobile, @fEmail, @fDesc)" UpdateCommand="UPDATE [tblAddresses] SET [fNameFamily] = @fNameFamily, [fJob] = @fJob, [fAddress1] = @fAddress1, [fAddress2] = @fAddress2, [fPhone] = @fPhone, [fFax] = @fFax, [fMobile] = @fMobile, [fEmail] = @fEmail, [fDesc] = @fDesc WHERE [fId] = @fId">
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
                        </td>
                    <td style="height: 20px" width="10%">
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
