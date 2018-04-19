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
public partial class Left : System.Web.UI.UserControl
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {Panel2.Visible = true;
				Panel3.Visible = false;
                if (Session["username"] != null)
                {
                    string str = Session["username"].ToString();
                    Panel2.Visible = false;
                    Panel3.Visible = true;
                    username.Text = str;
                }
            DataList4.DataSource = data.GetDataReader("select * from leibie ");
            DataList4.DataBind();


        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string str = Session["yanzhenma"].ToString();
        if (Textbox3.Text.Trim() == str)
        {
           string name  = TextBox1.Text;
           string pwd = Textbox2.Text;
           SqlDataReader read = data.GetDataReader("select *  from  users  where useradmin='" + name + "' and  userpassword='" + pwd + "'");
            if (read.Read())
            {
                Session["username"] = TextBox1.Text;
                Session["userAdmin"] = read["useradmin"].ToString();
                username.Text = TextBox1.Text;
                Alert.AlertAndRedirect("登录成功", "Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('账号密码错误!!!')</script>");
            }
            read.Close();
        }
        else
        {
            Response.Write("<script>alert('验证码错误!!!')</script>");
        }
		
    }
    protected void Imagebutton3_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Session["username"] = null;
        Alert.AlertAndRedirect("退出成功", "Default.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin/main1.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["username"] = null;
        Alert.AlertAndRedirect("退出成功", "Default.aspx");
    }
}
