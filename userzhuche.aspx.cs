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
public partial class userzhuche : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }

 
    protected void Imagebutton2_Click(object sender, ImageClickEventArgs e)
    {
        string str = Session["yanzhenma"].ToString();
        if (Textbox10.Text == str)
        {
            string  Useradmin = TextBox1.Text.Trim();
            string Userpassword = TextBox2.Text.Trim();
            string Username = TextBox4.Text.Trim();
            string Useremail = TextBox5.Text.Trim();
            string Usershengfen = TextBox6.Text.Trim();
            string Usertelphone = TextBox7.Text.Trim();
            string Usershouji = TextBox8.Text.Trim();
            string Useraddress = TextBox9.Text.Trim();



            data.RunSql("insert into users(useradmin,userpassword,username,useremail,usershengfen,usertelphone,usershouji,useraddress)values('" + Useradmin + "','" + Userpassword + "','" + Username + "','" + Useremail + "','" + Usershengfen + "','" + Usertelphone + "','" + Usershouji + "','" + Useraddress + "')");
          
            
                Session["username"] = TextBox1.Text;
              Alert.AlertAndRedirect("注册成功","Default.aspx");
           
          


        }
        else
        {
            Response.Write("<script>alert('验证码错误!!!')</script>");
        }
    }
}
