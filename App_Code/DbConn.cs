using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
/// <summary>
/// DbConn 的摘要说明
/// </summary>
public class DbConn
{
    DataSet ds = new DataSet();
    public DbConn()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public static SqlConnection Creation()
    {
        return new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    }
    public System.Data.DataSet GetDataSet(string str, string TableName)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        SqlDataAdapter oda = new SqlDataAdapter(str, conn);
        oda.Fill(ds, TableName);

        conn.Close();
        return ds;
    }
    public string message(string TxtMessage)
    {
        string str;
        str = "<script>alert('" + TxtMessage + "')</script>";

        return str;
    }
    public Boolean ExecuteSql(string SQLString)
    {
        using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand(SQLString, connection))
            {
                try
                {
                    connection.Open();
                    cmd.ExecuteNonQuery();
                }
                catch (System.Data.SqlClient.SqlException e)
                {
                    connection.Close();
                    throw e;
                    return false;
                }
                finally
                {
                    cmd.Dispose();
                    connection.Close();
                }
                return true;
            }
        }
    }
}
