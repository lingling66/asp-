using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Jiami 的摘要说明
/// </summary>
	public class Jiami
	{				
		public Jiami()
		{			
		}

		public string password(string password)
		{
			return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(password,"sha1");

		}
	
	}

