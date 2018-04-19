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
	/// yanzhenma ��ժҪ˵����
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
			Font font = new Font("����",18f);
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

		#region Web ������������ɵĴ���
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: �õ����� ASP.NET Web ���������������ġ�
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// �����֧������ķ��� - ��Ҫʹ�ô���༭���޸�
		/// �˷��������ݡ�
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion


	}
}
