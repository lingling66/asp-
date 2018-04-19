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
/// Leibie 的摘要说明
/// </summary>
public class Leibie
{
        private sqldbconn dbconn;

        private int leibieid;
        private string leibiename;

        public int Leibieid
        {
            get
            {
                return leibieid;
            }
            set
            {
                leibieid = value;
            }
        }
        public string Leibiename
        {
            get
            {
                return leibiename;
            }
            set
            {
                leibiename = value;
            }
        }


        public Leibie()
        {
            dbconn = new sqldbconn();
        }
        public DataSet leibie_sel()
        {
            return dbconn.getdataset("leibie_sel", null);
        }
        public int leibie_add()
        {
            SqlParameter[] para = new SqlParameter[1];
            para[0] = new SqlParameter("@leibiename", SqlDbType.VarChar, 20);
            para[0].Value = leibiename;
            return dbconn.updata("leibie_add", para);
        }
        public DataSet fenlei_sel()
        {
            return dbconn.getdataset("fenlei_sel", null);
        }
        public int leibie_del()
        {
            SqlParameter[] para = new SqlParameter[1];
            para[0] = new SqlParameter("@leibieid", SqlDbType.Int);
            para[0].Value = leibieid;
            return dbconn.updata("leibie_del", para);

        }
        public SqlDataReader leibie_name()
        {
            SqlParameter[] para = new SqlParameter[1];
            para[0] = new SqlParameter("@leibieid", SqlDbType.Int);
            para[0].Value = leibieid;
            return dbconn.getread("leibie_name", para);
        }
    }

