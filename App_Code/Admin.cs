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
/// Admin 的摘要说明
/// </summary>
public class Admin
{


		private sqldbconn dbconn;
		private int adminid;
		private string admin;
		private string adminname;
		private string adminpassword;

		#region 属性器
		public int Adminid
		{
			get
			{
				return  adminid;
			}
			set
			{
				adminid = value;
			}
		}
		public string Adminstr
		{
			get
			{
				return  admin;
			}
			set
			{
				admin = value;
			}
		}
		public string Adminname
		{
			get
			{
				return  adminname;
			}
			set 
			{
				adminname = value;
			}
		}
	
		public string Adminpassword
		{
			get
			{
				return  adminpassword;
			}
			set
			{
				adminpassword = value;
			}
		}
		#endregion
	
		public Admin()
		{
			dbconn = new sqldbconn();			
		}
		public SqlDataReader admin_denlu()
		{
			SqlParameter [] para = new SqlParameter[2];
			para[0] = new SqlParameter("@adminname",SqlDbType.VarChar,20);
			para[0].Value = adminname;
			para[1] = new SqlParameter("@adminpassword",SqlDbType.VarChar,40);
			para[1].Value = adminpassword;

			return dbconn.getread("admin_denlu",para);
		}
		public DataSet admin_select()
		{
			return dbconn.getdataset("admin_select",null);
		}
		public int admin_add()
		{
			SqlParameter [] para = new SqlParameter[4];
			para[0] = new SqlParameter("@adminname",SqlDbType.VarChar,20);
			para[0].Value = adminname;
			para[1] = new SqlParameter("@adminpassword",SqlDbType.VarChar,40);
			para[1].Value = adminpassword;
			para[2] = new SqlParameter("@admin",SqlDbType.VarChar,20);
			para[2].Value = admin;
			para[3] = new SqlParameter("@returnvalue",SqlDbType.Int);
			para[3].Direction = ParameterDirection.ReturnValue;

			dbconn.updata("admin_add",para);
			return (int)para[3].Value;
		}
		public int admin_update()
		{			
			SqlParameter [] para = new SqlParameter[2];
			para[0] = new SqlParameter("@adminname",SqlDbType.VarChar,20);
			para[0].Value = admin;
			para[1] = new SqlParameter("@adminpassword",SqlDbType.VarChar,40);
			para[1].Value = adminpassword;
			return dbconn.updata("admin_update",para);
		}
		public int admin_del()
		{
			SqlParameter [] para = new SqlParameter[3];
			para[0] = new SqlParameter("@adminid",SqlDbType.Int);
			para[0].Value = adminid;
			para[1] = new SqlParameter("@admin",SqlDbType.VarChar,20);
			para[1].Value = admin;
			para[2] = new SqlParameter("@adminname",SqlDbType.VarChar,20);
			para[2].Value = adminname;

		    return dbconn.updata("admin_del",para);
		}
	


	}