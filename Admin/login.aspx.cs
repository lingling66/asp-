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
using System.Data.SqlClient;
public partial class admin_login : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {   string str = Session["yanzhenma"].ToString();
    if (Text2.Value.Trim() == str)
    {
        if (TxtUserName.Value == "" && TxtPassword.Value == "")
        {
            Alert.AlertAndRedirect("没有输入账号和密码！", "Login.aspx");


        }
        else
        {

            dr = data.GetDataReader("select * from  administrator where adminname='" + TxtUserName.Value.Trim() + "'and adminpassword='" + TxtPassword.Value.Trim() + "'");
            if (dr.Read())
            {
                Session["adminid"] = dr["adminid"].ToString();
                Session["adminname"] = dr["adminname"].ToString();
                Response.Redirect("main.aspx");

            }
            else
            {
                Alert.AlertAndRedirect("管理员的账号或者密码不对请重新登陆！", "Login.aspx");
            }
        }
    }
    else
    {
        Alert.AlertAndRedirect("验证码错误！", "Login.aspx");
    }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
