using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Software_Admin_Default : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
        if (!IsPostBack)
        {
            if (Request.QueryString["log"] != null)
            {
                if (Request.QueryString["sts"] == "1")
                {
                    if (Session["officeAdmin"] == null)
                    {
                        Session["officeAdmin"] = Request.QueryString["log"].ToString();
                        Session["officetype"] = Request.QueryString["type"].ToString();
                        // confcenter.Visible = true;
                        Session["webFSess"] = null;
                        Session["webFSess1"] = null;
                        //staffid.Value = Request.QueryString["log"].ToString();
                        Session["homeURL"] = HttpContext.Current.Request.Url.AbsoluteUri;
                    }
                }
                else if (Request.QueryString["sts"] == "2")
                {
                    if (Session["WebFSess"] == null)
                    {
                        Session["WebFSess"] = Request.QueryString["log"].ToString();

                        //                    string getlist = Session["WebFSess"] as string; ;
                        //                    string[] getval = getlist.Split(',');
                        //                    Session["WebFType"] = getval[9];
                    }

                    Session["officeAdmin"] = null;
                    Session["webFSess1"] = null;


                }
                else
                {
                    if (Session["WebFSess1"] == null)
                    {
                        Session["WebFSess1"] = Request.QueryString["log"].ToString();

                        //                 string getlist = Session["WebFSess1"] as string; ;
                        //                   string[] getval = getlist.Split(',');
                        //                    Session["WebFType"] = getval[9];
                    }

                    Session["officeAdmin"] = null;
                    Session["webFSess"] = null;

                }
                Session["name"] = Request.QueryString["name"].ToString();
                Session["log"] = Request.QueryString["log"].ToString();//-----For Wallet
                Response.Redirect("/Software/Admin/Dashboard.aspx");
            }
            else
            {
                Response.Redirect("/Login/Login.aspx?User=Logout");
            }


        }
    }
}