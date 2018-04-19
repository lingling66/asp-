using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Drawing.Drawing2D;

namespace tb0601955_web
{
	/// <summary>
	/// yanzhenma 的摘要说明。
	/// </summary>
	public partial class yanzhenma : System.Web.UI.Page
	{
		protected void Page_Load(object sender, System.EventArgs e)
		{
			Response.Clear();
			Bitmap img = new Bitmap(50,24);
			Graphics gs = Graphics.FromImage(img);
			gs.Clear(Color.White);

			Random rand = new Random();
			string str = "";
			for(int nI = 0;nI<4;nI++)
			{
				str = str+rand.Next(9).ToString();
			}
			Session["yanzhenma"] = str;
			Font font = new Font("宋体",18f);
			Brush br = new SolidBrush(Color.Blue);
			gs.DrawString(str,font,br,0,0);


			for(int nI=0;nI<200;nI++)
			{
				int x= rand.Next(50);
                int y = rand.Next(24);//5+1+a+s+p+x
				img.SetPixel(x,y,Color.Red);

			}

			img.Save(Response.OutputStream,System.Drawing.Imaging.ImageFormat.Gif);
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


	}
}
