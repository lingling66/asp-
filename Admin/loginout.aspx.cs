﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_loginout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
            if (Session["username"] != null)
            {
                Session["username"] = null;
                Response.Write("<script>window.location='../default.aspx'</script>");
                Response.End();
            }
            else
            {
                Response.Write("<script>window.location='../default.aspx'</script>");
                Response.End();
            }
        //}
    }
}
