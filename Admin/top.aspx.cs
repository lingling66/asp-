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

public partial class admin_top : System.Web.UI.Page
{
    protected void Page_Load(object sender, System.EventArgs e)
    {
        if (Session["adminid"] == null)
        {
            Response.Write("<script>alert('您无权进入!')</script>");
            Response.Write("<script>window.location='../default.aspx'</script>");
        }
        else
        {
            Label1.Text = Session["adminname"].ToString();
        }

    }
}
