using Property;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NavBar : System.Web.UI.UserControl
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    Service sr;
    SubCategory obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        BindServiceWeb();
        BindServicemob();
        BindServiceWeb1();
        BindServiceMob1();
        BindServiceWeb2();
        BindServicemob2();

    }
    private void BindServiceWeb()
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("viewCatMenu", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CatId", "1");
        Repcaurse.DataSource = cmd.ExecuteReader();
        Repcaurse.DataBind();
        cmd.Dispose();
        con.Close();

    }

    public static List<ViewCourseWeb> GetData(string Id)
    {
        string constr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("viewSubCatMenu"))
            {
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@CatId", Id);
                cmd.CommandType = CommandType.StoredProcedure;
                List<ViewCourseWeb> customers = new List<ViewCourseWeb>();
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(new ViewCourseWeb
                        {
                            SubCourseId = sdr["mproductid"].ToString(),
                            SubCatName = sdr["mProductName"].ToString(),
                        });
                    }
                }
                con.Close();
                return customers;
            }
        }
    }


    protected void Repcaurse_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {

                Label lbl_userid = (Label)e.Item.FindControl("lblid");
                string id = lbl_userid.Text;

                Repeater Chi_Repeat = (Repeater)e.Item.FindControl("RepeaterCourse");



                List<ViewCourseWeb> customers = new List<ViewCourseWeb>();
                customers = GetData(id);

                Chi_Repeat.DataSource = customers;
                Chi_Repeat.DataBind();
            }
        }
        catch { }
    }


    private void BindServicemob()
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("viewCatMenu", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CatId", "1");
        ServiceMobile.DataSource = cmd.ExecuteReader();
        ServiceMobile.DataBind();
        cmd.Dispose();
        con.Close();

    }

    public static List<ViewCourseWeb> GetDatamob(string Id)
    {
        string constr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("viewSubCatMenu"))
            {
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@CatId", Id);
                cmd.CommandType = CommandType.StoredProcedure;
                List<ViewCourseWeb> customers = new List<ViewCourseWeb>();
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(new ViewCourseWeb
                        {
                            SubCourseId = sdr["mproductid"].ToString(),
                            SubCatName = sdr["mProductName"].ToString(),
                        });
                    }
                }
                con.Close();
                return customers;
            }
        }
    }


    protected void Repcaurse_ItemDataBound1(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {

                Label lbl_userid = (Label)e.Item.FindControl("lblid");
                string id = lbl_userid.Text;

                Repeater Chi_Repeat = (Repeater)e.Item.FindControl("rptmob");



                List<ViewCourseWeb> customers = new List<ViewCourseWeb>();
                customers = GetDatamob(id);

                Chi_Repeat.DataSource = customers;
                Chi_Repeat.DataBind();
            }
        }
        catch { }
    }


    private void BindServiceWeb1()
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("viewCatMenu", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CatId", "2");
        rptNni.DataSource = cmd.ExecuteReader();
        rptNni.DataBind();
        cmd.Dispose();
        con.Close();

    }

    public static List<ViewCourseWeb> GetDataWeb1(string Id)
    {
        string constr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("viewSubCatMenu"))
            {
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@CatId", Id);
                cmd.CommandType = CommandType.StoredProcedure;
                List<ViewCourseWeb> customers = new List<ViewCourseWeb>();
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(new ViewCourseWeb
                        {
                            SubCourseId = sdr["mproductid"].ToString(),
                            SubCatName = sdr["mProductName"].ToString(),
                        });
                    }
                }
                con.Close();
                return customers;
            }
        }
    }


    protected void Repcaurse_ItemDataBound2(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {

                Label lbl_userid = (Label)e.Item.FindControl("lblid");
                string id = lbl_userid.Text;

                Repeater Chi_Repeat = (Repeater)e.Item.FindControl("rptweb1");



                List<ViewCourseWeb> customers = new List<ViewCourseWeb>();
                customers = GetDataWeb1(id);

                Chi_Repeat.DataSource = customers;
                Chi_Repeat.DataBind();
            }
        }
        catch { }
    }

    private void BindServiceMob1()
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("viewCatMenu", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CatId", "2");
        nnimob.DataSource = cmd.ExecuteReader();
        nnimob.DataBind();
        cmd.Dispose();
        con.Close();

    }

    public static List<ViewCourseWeb> GetDataMob1(string Id)
    {
        string constr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("viewSubCatMenu"))
            {
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@CatId", Id);
                cmd.CommandType = CommandType.StoredProcedure;
                List<ViewCourseWeb> customers = new List<ViewCourseWeb>();
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(new ViewCourseWeb
                        {
                            SubCourseId = sdr["mproductid"].ToString(),
                            SubCatName = sdr["mProductName"].ToString(),
                        });
                    }
                }
                con.Close();
                return customers;
            }
        }
    }


    protected void Repcaurse_ItemDataBound3(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {

                Label lbl_userid = (Label)e.Item.FindControl("lblid");
                string id = lbl_userid.Text;

                Repeater Chi_Repeat = (Repeater)e.Item.FindControl("rptmob1");



                List<ViewCourseWeb> customers = new List<ViewCourseWeb>();
                customers = GetDataMob1(id);

                Chi_Repeat.DataSource = customers;
                Chi_Repeat.DataBind();
            }
        }
        catch { }
    }

    private void BindServiceWeb2()
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("viewCatMenu", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CatId", "3");
        Repcaurse3.DataSource = cmd.ExecuteReader();
        Repcaurse3.DataBind();
        cmd.Dispose();
        con.Close();

    }

    public static List<ViewCourseWeb> GetData2(string Id)
    {
        string constr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("viewSubCatMenu"))
            {
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@CatId", Id);
                cmd.CommandType = CommandType.StoredProcedure;
                List<ViewCourseWeb> customers = new List<ViewCourseWeb>();
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(new ViewCourseWeb
                        {
                            SubCourseId = sdr["mproductid"].ToString(),
                            SubCatName = sdr["mProductName"].ToString(),
                        });
                    }
                }
                con.Close();
                return customers;
            }
        }
    }


    protected void Repcaurse_ItemDataBound4(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {

                Label lbl_userid = (Label)e.Item.FindControl("lbid");
                string id = lbl_userid.Text;

                Repeater Chi_Repeat = (Repeater)e.Item.FindControl("RepeaterCourse3");



                List<ViewCourseWeb> customers = new List<ViewCourseWeb>();
                customers = GetData2(id);

                Chi_Repeat.DataSource = customers;
                Chi_Repeat.DataBind();
            }
        }
        catch { }
    }


    private void BindServicemob2()
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        SqlCommand cmd = new SqlCommand("viewCatMenu", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CatId", "3");
        ServiceMobile2.DataSource = cmd.ExecuteReader();
        ServiceMobile2.DataBind();
        cmd.Dispose();
        con.Close();

    }

    public static List<ViewCourseWeb> GetDatamob2(string Id)
    {
        string constr = ConfigurationManager.ConnectionStrings["cn"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("viewSubCatMenu"))
            {
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@CatId", Id);
                cmd.CommandType = CommandType.StoredProcedure;
                List<ViewCourseWeb> customers = new List<ViewCourseWeb>();
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        customers.Add(new ViewCourseWeb
                        {
                            SubCourseId = sdr["mproductid"].ToString(),
                            SubCatName = sdr["mProductName"].ToString(),
                        });
                    }
                }
                con.Close();
                return customers;
            }
        }
    }


    protected void Repcaurse_ItemDataBound5(object sender, RepeaterItemEventArgs e)
    {
        try
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {

                Label lbl_userid = (Label)e.Item.FindControl("lblid");
                string id = lbl_userid.Text;

                Repeater Chi_Repeat = (Repeater)e.Item.FindControl("rptmob2");



                List<ViewCourseWeb> customers = new List<ViewCourseWeb>();
                customers = GetDatamob(id);

                Chi_Repeat.DataSource = customers;
                Chi_Repeat.DataBind();
            }
        }
        catch { }
    }


}