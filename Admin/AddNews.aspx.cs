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

public partial class Admin_AddNews : System.Web.UI.Page
{
    SqlHelper data = new SqlHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
     
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string sql = "insert into XinWen(Titles,Contents) values('" + TextBox1.Text.ToString().Trim() + "','" + Textbox7.Text + "')";
        data.RunSql(sql);
        Alert.AlertAndRedirect("添加成功", "NewsManger.aspx");


    }
}