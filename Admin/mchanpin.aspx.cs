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
public partial class admin_mchanpin : System.Web.UI.Page
{

    SqlHelper data = new SqlHelper();
    Alert js = new Alert();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            leibiebind();
            fenleibind();
         
            BinderData();
        }

    }
    private void leibiebind()
    {

        DropDownList1.DataSource = data.GetDataReader("select * from  leibie ");
        DropDownList1.DataTextField = "leibiename";
        DropDownList1.DataValueField = "leibieid";
        DropDownList1.DataBind();
    }
    private void fenleibind()
    {

        DropDownList2.DataSource = data.GetDataReader("select * from  fenlei ");
        DropDownList2.DataTextField = "fenleiname";
        DropDownList2.DataValueField = "fenleiid";
        DropDownList2.DataBind();
    }
  
    private void BinderData()
    {

        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataReader dr = data.GetDataReader("select * from shangping where shangpingid=" + id);
        dr.Read();


        TextBox1.Text = dr["shangpingname"].ToString();
        Textbox2.Text = dr["spec"].ToString();
        Textbox3.Text = dr["shangpingpingpai"].ToString();
        Textbox4.Text = dr["quantity"].ToString();
        Textbox5.Text = dr["price"].ToString();
        TextBox6.Text = dr["chushouprice"].ToString();

    
      Textbox7.Text = dr["beizhu"].ToString();
    


    }

    protected void Button1_Click(object sender, EventArgs e)
    {  int id = int.Parse(Request.QueryString["id"].ToString());
        data.RunSql("update  shangping set shangpingname='" + TextBox1.Text + "',spec='" + Textbox2.Text + "',shangpingpingpai='" + Textbox3.Text + "',quantity='" + Textbox4.Text + "',price='" + Textbox5.Text + "',chushouprice='" + TextBox6.Text + "',beizhu='" + Textbox7.Text + "',leibieid='" + DropDownList1.SelectedValue + "',fenleiid='" + DropDownList2.SelectedValue + "'  where shangpingid="+id);
        Alert.AlertAndRedirect("修改成功", "List.aspx");

    }
}
