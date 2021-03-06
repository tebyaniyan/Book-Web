using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void btnNew_Click(object sender, EventArgs e)
    {
        lbInfo.Text = "";
        MultiView1.SetActiveView(View1);
        FormView1.ChangeMode(FormViewMode.Insert);
    }
    protected void brnEdit_Click(object sender, EventArgs e)
    {
        if (GridView1.SelectedIndex > -1)
        {
            MultiView1.SetActiveView(View1);
            FormView1.ChangeMode(FormViewMode.Edit);
        }
        else
        {
            lbInfo.Text = "لطفا یک رکورد انتخاب کنید";
        }
    }
    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        lbInfo.Text = "";
        MultiView1.SetActiveView(View2);
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (GridView1.SelectedIndex > -1)
        {
            SqlDataSource1.Delete();
        }
        else
        {
            lbInfo.Text = "لطفا یک رکورد انتخاب کنید";
        }
    }
    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        lbInfo.Text = "";
        GridView1.DataBind();
    }
    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        lbInfo.Text = "";
        GridView1.DataBind();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx");
    }
}
