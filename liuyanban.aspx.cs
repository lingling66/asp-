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

public partial class liuyanban : System.Web.UI.Page
{
      private Liuyanban lyb= new Liuyanban();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!this.IsPostBack)
			{
				bind();
			}
		}
		public void bind()
		{
		    DataSet ds = lyb.userliuyanban_sel_top10();
			DataList1.DataSource = ds;
			DataList1.DataBind();
		}

		#region Web 窗体设计器生成的代码
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: 该调用是 ASP.NET Web 窗体设计器所必需的。
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// 设计器支持所需的方法 - 不要使用代码编辑器修改
		/// 此方法的内容。
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			lyb.Username = TextBox1.Text;
            lyb.Useremail = TextBox2.Text;
			lyb.Lybcontent = TextBox3.Text;
			int nI = lyb.userliuyanban_add();
			if(nI>0)
			{
				Response.Write("<script>alert('添加成功!')</script>");
			
			}	
			bind();
			Button1.Enabled= false;
		}
	}