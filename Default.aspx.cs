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

public partial class _Default : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataList1.DataSource = data.GetDataReader("select top 4 * from shangping order by  shangpingid desc   ");
            DataList1.DataBind();
            Datalist2.DataSource = data.GetDataReader(" select top 4 shangpingid,shangpingname,chushouprice,pic from shangping where fenleiid = 3 order by shangpingid desc ");
              Datalist2.DataBind();
              Datalist3.DataSource = data.GetDataReader(" select top 4 shangpingid,shangpingname,chushouprice,pic from shangping where fenleiid = 4 order by shangpingid desc ");
              Datalist3.DataBind();

           
        }

    }
}
