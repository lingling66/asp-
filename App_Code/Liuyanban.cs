using System;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Liuyanban 的摘要说明
/// </summary>
public class Liuyanban
{

        private sqldbconn dbconn;
        private int lybid;
        private string username;
        private string useremail;
        private string lybcontent;

        public int Lybid
        {
            get
            {
                return lybid;
            }
            set
            {
                lybid = value;
            }
        }
        public string Username
        {
            get
            {
                return username;
            }
            set
            {
                username = value;
            }
        }
        public string Useremail
        {
            get
            {
                return useremail;
            }
            set
            {
                useremail = value;
            }
        }
        public string Lybcontent
        {
            get
            {
                return lybcontent;
            }
            set
            {
                lybcontent = value;
            }
        }


        public Liuyanban()
        {
            dbconn = new sqldbconn();
        }

        public int userliuyanban_add()
        {
            SqlParameter[] para = new SqlParameter[3];
            para[0] = new SqlParameter("@username", SqlDbType.VarChar, 30);
            para[0].Value = username;
            para[1] = new SqlParameter("@useremail", SqlDbType.VarChar, 30);
            para[1].Value = useremail;
            para[2] = new SqlParameter("@lybcontent", SqlDbType.NText);
            para[2].Value = lybcontent;
            return dbconn.updata("userliuyanban_add", para);
        }
        public DataSet userliuyanban_sel_top10()
        {
            return dbconn.getdataset("userliuyanban_sel_top10", null);
        }
        public DataSet userliuyanban_sel()
        {
            return dbconn.getdataset("userliuyanban_sel", null);
        }
        public int userliuyanban_del()
        {
            SqlParameter[] para = new SqlParameter[1];
            para[0] = new SqlParameter("@lybid", SqlDbType.Int);
            para[0].Value = lybid;
            return dbconn.updata("userliuyanban_del", para);
        }

        public SqlDataReader userliuyanban_lybcontent()
        {
            SqlParameter[] para = new SqlParameter[1];
            para[0] = new SqlParameter("@lybid", SqlDbType.Int);
            para[0].Value = lybid;
            return dbconn.getread("userliuyanban_lybcontent", para);
        }

    }

