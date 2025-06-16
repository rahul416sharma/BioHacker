using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
	protected void Page_Load(object sender, EventArgs e)
	{

    }
    //protected void lnklogout_Click(object sender, EventArgs e)
    //{

    //    Session["officeAdmin"] = null;
    //    Session["webFSess"] = null;
    //    Session["webFSess1"] = null;

    //    Session.Abandon();
    //    Session.Clear();

    //    Request.Cookies.Clear();

    //    HttpContext.Current.Response.AddHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    //    HttpContext.Current.Response.AddHeader("Pragma", "no-cache");
    //    HttpContext.Current.Response.AddHeader("Expires", "0");
    //    Response.Redirect("Default.aspx");

    //    Session.Abandon();
    //    Session.Clear();

    //    Request.Cookies.Clear();

    //    HttpContext.Current.Response.AddHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    //    HttpContext.Current.Response.AddHeader("Pragma", "no-cache");
    //    HttpContext.Current.Response.AddHeader("Expires", "0");
    //    Response.Redirect("../../Default.aspx");
    //}
}
