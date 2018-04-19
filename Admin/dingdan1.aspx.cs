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


public partial class Admin_dingdan1 : System.Web.UI.Page
{
    DbConn db = new DbConn();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bandgrdw();
            //dropband();
        }

    }
    public void bandgrdw()
    {
        DataSet ds = new DataSet();
        string sql = "select a.dingdanid , a.shangpingid , a.username , a.usertelphone , a.useraddress , a.dingdanbeizhu , b.shangpingname , b.shangpingname , b.spec , b.price ";
        sql += " from dingdan a inner join shangping b on a.shangpingid = b.shangpingid where a.useradmin = '" + Session["userAdmin"].ToString() + "'";
        ds =  db.GetDataSet(sql, "dingdan");
        this.DataGrid1.DataSource = ds;
        this.DataGrid1.DataKeyField = "dingdanid";
        this.DataGrid1.DataBind();
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        this.DataGrid1.CurrentPageIndex = e.NewPageIndex;
        bandgrdw();
    }

}
