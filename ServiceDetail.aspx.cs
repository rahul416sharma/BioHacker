using Property;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    Service sr;
    SubCategory obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Id"] != null && Request.QueryString["Id"] != "")
        {
            string Id = Request.QueryString["Id"].ToString();
            BindCourseList(Id);
        }
    }
    public string ProductName = "";
    private void BindCourseList(string Id)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("ViewProduct", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@ProductId", Id);
        SqlDataReader reader = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(reader);

        // Bind repeater
        rptCourseDetail.DataSource = dt;
        rptCourseDetail.DataBind();
        if (dt.Rows.Count > 0)
        {
            ProductName = dt.Rows[0]["mProductName"].ToString();
            lblHeading.Text = ProductName; // If using a Label
            lblBook.Text = ProductName; // If using a Label
            ltrKey.Text = dt.Rows[0]["mProductKeyBenefits"].ToString();
            imgKeyImage.ImageUrl = dt.Rows[0]["mProductKBIMG"].ToString();
        }
        cmd.Dispose();
        con.Close();

    }

}