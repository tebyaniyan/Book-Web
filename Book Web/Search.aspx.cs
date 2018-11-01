using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Search : System.Web.UI.Page
{

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string strSql = "";
        if (txtNameFamily.Text.Trim() != "")
        {
            strSql = " fNameFamily like '%" + txtNameFamily.Text + "%' ";
        }
        if (txtPhone.Text.Trim() != "")
        {
            if (strSql != "")
                strSql += " and ";
            strSql += " fPhone = " + txtPhone.Text;
        }
        if (txtMobile.Text.Trim() != "")
        {
            if (strSql != "")
                strSql += " and ";
            strSql += " fMobile = " + txtMobile.Text;
        }
        if (strSql != "")
        {
            strSql = " where " + strSql;
        }
        SqlDataSource1.SelectCommand = "select * from tblAddresses " + strSql;
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
