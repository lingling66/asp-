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

public partial class Admin_userPassWrod : System.Web.UI.Page
{
    DbConn db = new DbConn();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string result = users_ChangePass(Session["username"].ToString(), TextBox5.Text);
        if (!string.IsNullOrEmpty(result))
        {
            LabelWarningMessage.Text = "修改成功！";
        }
        else
        {
            LabelWarningMessage.Text = "修改失败！";
        }
    }

    private string users_ChangePass(string name, string pass)
    {
        string sesult = "";
        try
        {
            string sql = "update users set userpassword = '" + pass + "' where useradmin = '" + name + "' ";
            db.ExecuteSql(sql);
            sesult = "1";
        }
        catch (Exception)
        {
            sesult = "";
        }
        return sesult;

    }
}
