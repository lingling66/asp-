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
public partial class shangpinxingxi : System.Web.UI.Page
{
    SqlHelper data=new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            bind();

        }
    }
    private void bind()
    {
        SqlDataReader dr = data.GetDataReader("select a.*,b.leibiename  from shangping a,leibie b where a.leibieid = b.leibieid and a.shangpingid =" + Request.QueryString["spid"].ToString());
        if (dr.Read())
        {
            Label1.Text = dr["leibiename"].ToString();
            Image1.ImageUrl = dr["pic"].ToString();
            Label2.Text = dr["shangpingid"].ToString();
            Label3.Text = dr["shangpingname"].ToString();
            Label4.Text = dr["spec"].ToString();
            Label5.Text = dr["shangpingpingpai"].ToString();
            Label6.Text = dr["chushouprice"].ToString();
            Label7.Text = dr["beizhu"].ToString();
        }
        dr.Close();


    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('请先登陆!!!')</script>");
            Session["gwshangping"] = null;
            Response.Write("<script>window.location='default.aspx'</script>");
        }
        else
        {
            int nI = -1;
            try
            {
                nI = int.Parse(TextBox4.Text.Trim());
            }
            catch (Exception)
            {
                Response.Write("<script>alert('购物数量只能为数字！')</script>");
            }
            if (nI > 0)
            {
                Gouwu gw = new Gouwu();
                gw.Shangpingid = int.Parse(Label2.Text);
                gw.Shangpingname = Label3.Text;
                gw.Price = Decimal.Parse(Label6.Text);
                gw.Quantity = nI;
                gw.Allprice = Decimal.Parse(Label6.Text) * nI;

                ArrayList gwlist = new ArrayList();
                if (Session["gwshangping"] != null)
                {
                    gwlist = (ArrayList)Session["gwshangping"];
                }
                gwlist.Add(gw);
                Session["gwshangping"] = gwlist;
                Response.Redirect("shopping.aspx");

            }
            else
            {
                Response.Write("<script>alert('不能为负数！')</script>");
            }


        }

    }
}
