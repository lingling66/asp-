using System;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// sqldbconn 的摘要说明
/// </summary>
public class sqldbconn
{
   
        private string connstr;
        private SqlConnection conn;
        public sqldbconn()
        {
            connstr = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
            conn = new SqlConnection(connstr);
        }
        public SqlCommand command(string proc, SqlParameter[] para)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = proc;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conn;

            if (para != null)
            {
                foreach (SqlParameter pa in para)
                {
                    cmd.Parameters.Add(pa);
                }
            }
            return cmd;
        }
        public int updata(string proc, SqlParameter[] para)
        {
            if (conn != null)
            {
                conn.Close();
            }
            conn.Open();
            SqlCommand cmd = command(proc, para);
            int nI = cmd.ExecuteNonQuery();
            conn.Close();
            return nI;
        }
        public DataSet getdataset(string proc, SqlParameter[] para)
        {
            SqlCommand cmd = command(proc, para);

            SqlDataAdapter dataadapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dataadapter.Fill(ds);
            return ds;
        }
        public SqlDataReader getread(string proc, SqlParameter[] para)
        {
            conn.Open();
            SqlCommand cmd = command(proc, para);
            return cmd.ExecuteReader(CommandBehavior.CloseConnection);
        }
        public int count(string proc, SqlParameter[] para)
        {
            if (conn != null)
            {
                conn.Close();
            }
            conn.Open();
            SqlCommand cmd = command(proc, para);
            int nI = (int)cmd.ExecuteScalar();
            conn.Close();
            return nI;
        }

    }

