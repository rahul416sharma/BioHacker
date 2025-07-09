using Property;
using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gallery : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Id"] != null && Request.QueryString["Id"] != "")
        {
            string Id = Request.QueryString["Id"].ToString();
            BindBlog(Id);
        }
    }

    private void BindBlog(string Id)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        SqlCommand cmd = new SqlCommand("viewDatablog", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@detailTypeId", "4");
        cmd.Parameters.AddWithValue("@DetailId", Id);

        SqlDataReader reader = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(reader);

        rptBlog.DataSource = dt;
        rptBlog.DataBind();

        // Access image from DataTable instead of reader
        if (dt.Rows.Count > 0)
        {
            imgBlog.ImageUrl = dt.Rows[0]["mdImage"].ToString(); // FIXED
        }

        con.Close();
    }


}