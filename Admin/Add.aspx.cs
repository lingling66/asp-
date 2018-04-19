using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

using System.IO;

public partial class admin_Add : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            leibiebind();
            fenleibind();
        
 
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
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpPostedFile hpf = File1.PostedFile;
        string filename = Path.GetFileName(hpf.FileName);
        string strfile = "";
        if (filename != "")
        {
            string serverpath = Server.MapPath("../image/");
            if (!Directory.Exists(serverpath))
            {
                Directory.CreateDirectory(serverpath);
            }

            string path = serverpath + filename;

            if (path != null)
            {
                hpf.SaveAs(path);
            }
            strfile = "image/" + filename;
        }

        try
        {
            string Shangpingname = TextBox1.Text;
            string Spec = Textbox2.Text;
            string Shangpingpingpai = Textbox3.Text;
            int  Quantity = int.Parse(Textbox4.Text);
            decimal Price = Decimal.Parse(Textbox5.Text);
            decimal Chushouprice = Decimal.Parse(TextBox6.Text);
            int Leibieid = int.Parse(DropDownList1.SelectedValue);
            int Fenleiid = int.Parse(DropDownList2.SelectedValue);
          
            string Pic = strfile;
            string Beizhu = Textbox7.Text;
            data.RunSql("insert into shangping(shangpingname,spec,shangpingpingpai,quantity,price,chushouprice,leibieid,fenleiid,pic,beizhu)values('" + Shangpingname + "','" + Spec + "','" + Shangpingpingpai + "','" + Quantity + "','" + Price + "','" + Chushouprice + "','" + Leibieid + "','" + Fenleiid + "','" + Pic + "','" + Beizhu + "')");
            Alert.AlertAndRedirect("添加成功","Add.aspx");
        }
        catch (Exception)
        {
            Response.Write("<script>alert('输入错误!')</script>");
        }
			
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
