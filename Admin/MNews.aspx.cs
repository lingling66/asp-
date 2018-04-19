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
public partial class Admin_MNews : System.Web.UI.Page
{
    public string sql, dID;

    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        dID = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
            sql = "select * from XinWen where id=" + dID;
            getdata(sql);
        }
    }
    private void getdata(string sql)
    {
        SqlDataReader dr = data.GetDataReader(sql);
        if (dr.Read())
        {
            TextBox1.Text = dr["Titles"].ToString();
            Textbox7.Text = dr["Contents"].ToString();
       
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sql = "update XinWen set Titles='" + TextBox1.Text.ToString().Trim() + "',Contents='" + Textbox7.Text + "' where id=" + dID;
        data.RunSql(sql);
        Alert.AlertAndRedirect("修改成功", "NewsManger.aspx");
    }
}
