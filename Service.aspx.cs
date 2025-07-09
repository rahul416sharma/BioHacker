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
            BindService(Id);
        }
    }

    public string ProductName = "";

    private void BindService(string catId, string search = "")
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        SqlCommand cmd = new SqlCommand("viewSubCatMenu", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CatId", string.IsNullOrEmpty(catId) ? "-1" : catId);

        SqlDataReader reader = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(reader);

        // Optional Search Filter (applied after data load)
        if (!string.IsNullOrWhiteSpace(search))
        {
            string safeSearch = search.Replace("'", "''"); // Escape single quotes for filtering
            string filter = "mProductName LIKE '%" + safeSearch + "%' OR ProductDescription LIKE '%" + safeSearch + "%'";
            dt.DefaultView.RowFilter = filter;
            dt = dt.DefaultView.ToTable(); // Convert back to filtered DataTable
        }

        ServiceData.DataSource = dt;
        ServiceData.DataBind();

        if (dt.Rows.Count > 0)
        {
            ProductName = dt.Rows[0]["msCatName"].ToString();
            lblHeading.Text = ProductName;
            ltrDesc.Text = dt.Rows[0]["msCatDescription"].ToString();
            ltrKey.Text = dt.Rows[0]["msCatKeyBenefits"].ToString();
            imgKeyImage.ImageUrl = dt.Rows[0]["msCatKBIMG"].ToString();
        }
        else
        {
            lblHeading.Text = "No results found.";
            ltrDesc.Text = string.Empty;
            ltrKey.Text = string.Empty;
            imgKeyImage.ImageUrl = string.Empty;
        }

        cmd.Dispose();
        con.Close();
    }



    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string searchTerm = txtSearch.Text.Trim();
        BindService(Request.QueryString["Id"], searchTerm); // Assuming you're using querystring "Id"
    }


}