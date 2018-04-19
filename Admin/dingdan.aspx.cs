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

public partial class admin_dingdan : System.Web.UI.Page
{
    SqlConnection conn = DbConn.Creation();
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
        string sqlstr = "select * from V_dingdan order by dingdanid desc";
        this.DataGrid1.DataSource = db.GetDataSet(sqlstr, "V_dingdan");
        this.DataGrid1.DataKeyField = "dingdanid";
        this.DataGrid1.DataBind();
    }

    protected void DataGrid1_ItemCreated(object sender, DataGridItemEventArgs e)
    {
        Button del = new Button();
        switch (e.Item.ItemType)
        {

            case (ListItemType.Item):

                del = (System.Web.UI.WebControls.Button)e.Item.FindControl("CmdDel");
                del.Attributes.Add("OnClick", "return confirm('确定要删除吗？');");
                break;

            case (ListItemType.AlternatingItem):

                del = (System.Web.UI.WebControls.Button)e.Item.FindControl("CmdDel");
                del.Attributes.Add("OnClick", "return confirm('确定要删除吗？');");
                break;
        }
    }
    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        this.DataGrid1.CurrentPageIndex = e.NewPageIndex;
        bandgrdw();
    }
    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        string delID = DataGrid1.DataKeys[e.Item.ItemIndex].ToString();
        string sqlstr = "delete from dingdan where dingdanid='" + delID + "'";
        db.ExecuteSql(sqlstr);
        bandgrdw();
    }
}
