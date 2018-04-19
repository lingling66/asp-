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

public partial class admin_adminlist : System.Web.UI.Page
{
    SqlHelper insert = new SqlHelper();
    Alert alert = new Alert();
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            InitData();
        }

    }
    protected void InitData()
    {
        SqlHelper mydata = new SqlHelper();

        GridView1.DataSource = mydata.GetDataReader("select * from administrator");
        GridView1.DataBind();
    }
    //GridView控件RowDeleting事件
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlHelper mydata = new SqlHelper();

        string ID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        try
        {
            mydata.RunSql("delete  from administrator where  adminid='" + ID + "'");

            Response.Write("<script language=javascript>alert('成功删除！')</script>");
            GridView1.EditIndex = -1;
            InitData();
        }
        catch
        {

            Response.Write("<script language=javascript>alert('删除失败！')</script>");
        }

    }
    //GridView控件RowUpdating事件
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        SqlHelper mydata = new SqlHelper();
        string ID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
        try
        {
            mydata.RunSql("update administrator set adminname='" + ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtName")).Text + "'  where adminid=" + ID);



            Response.Write("<script language=javascript>alert('修改成功!')</script>");
            GridView1.EditIndex = -1;
            InitData();
        }
        catch
        {
            Response.Write("<script language=javascript>alert('修改失败!')</script>");
        }

    }
    //GridView控件RowCanceling事件
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        InitData();
    }
    //GridView控件RowEditing事件
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        InitData();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = !Panel1.Visible;		
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel2.Visible = !Panel2.Visible;		

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        insert.RunSql("insert into administrator(adminname,adminpassword)values('" + TextBox1.Text + "','" + TextBox2.Text + "') ");
        Alert.AlertAndRedirect("添加成功", "adminlist.aspx");

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        UPpwd();
    }
    private void UPpwd()
    {
        SqlHelper mydata = new SqlHelper();
        string Username = Session["adminname"].ToString();
        try
        {
            string sql = "update [administrator]  set [adminpassword] ='" + TextBox4.Text.ToString() + "' where [adminname]='" + Username + "' ";
            mydata.RunSql(sql);



            LabelWarningMessage.Text = "修改成功！";


        }
        catch
        {

            LabelWarningMessage.Text = "修改失败！";
        }
    }
  

}
