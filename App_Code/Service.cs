using Message;
using Property;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Channels;
using System.ServiceModel.Web;
using System.Text;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI.WebControls;
using System.Xml.Linq;



// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
[ServiceContract]
public class Service
{
	SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string insCategory(string CatName)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CatName", CatName);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string ViewCategory(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<Category> lst = new List<Category>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewCategory", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CatId", Id);
        SqlDataReader dr = cmd.ExecuteReader();
        Category obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new Category();

                obj.Id = dr["mCatId"].ToString();
                obj.CategoryName = dr["mCatName"].ToString();
                obj.InsDate = dr["mCatInsDate"].ToString();
                lst.Add(obj);
            }
        }
        dr.Dispose();
        cmd.Dispose();
        con.Close();
        //} 
        return RAJ.Serialize(lst);
    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string upsCategory(string Id, string CatName)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CatId", Id);
            cmd.Parameters.AddWithValue("@CatName", CatName);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string delCategory(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CatId", Id);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string MasterLogin(string LoginName, string password)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("spMasterLogin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@LoginName", LoginName);
            cmd.Parameters.AddWithValue("@password", password);
            string str = cmd.ExecuteScalar().ToString();
            return can.Serialize(str);
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string insSubCat(string SCatName,string SCatId,string KeyBenefit,string SCatDesc,string KeyBenefitImg)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insSubCat", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SCatName", SCatName);
            cmd.Parameters.AddWithValue("@SCatId", SCatId);
            cmd.Parameters.AddWithValue("@SCatDesc", SCatDesc);
            cmd.Parameters.AddWithValue("@SCatKeyBenefit", KeyBenefit);
            cmd.Parameters.AddWithValue("@CatKBIMG", KeyBenefitImg);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string viewSubCat(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<SubCategory> lst = new List<SubCategory>();
        con.Open();
        SqlCommand cmd = new SqlCommand("viewSubCat", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@SubCatId", Id);
        SqlDataReader dr = cmd.ExecuteReader();
        SubCategory obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new SubCategory();

                obj.Id = dr["msCatId"].ToString();
                obj.SubCategoryName = dr["msCatName"].ToString();
                obj.CategoryId = dr["mCatId"].ToString();
                obj.CategoryName = dr["mCatName"].ToString();
                obj.InsDate = dr["msCatInsDate"].ToString();
                obj.CategoryDesc = dr["msCatDescription"].ToString();
                obj.CategoryKeyBenefit = dr["msCatKeyBenefits"].ToString();
                obj.KeyBenefitImg = dr["msCatKBIMG"].ToString();
                lst.Add(obj);
            }
        }
        dr.Dispose();
        cmd.Dispose();
        con.Close();
        //} 
        return RAJ.Serialize(lst);
    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string updSubCat(string Id, string SCatName,string cCatId,string SCatDesc, string KeyBenefit,string KeyBenefitImg)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updSubCat", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CatId", Id);
            cmd.Parameters.AddWithValue("@SCatName", SCatName);
            cmd.Parameters.AddWithValue("@cCatId", cCatId);
            cmd.Parameters.AddWithValue("@SCatDesc", SCatDesc);
            cmd.Parameters.AddWithValue("@SCatKeyBenefit", KeyBenefit);
            cmd.Parameters.AddWithValue("@CatKBIMG", KeyBenefitImg);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string delSubCategory(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delSubCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CatId", Id);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string InsProduct(string ProductName, string ProductImage,string ProductDescription, string Productprice,string ProductSubCatId, string ProductInsBy,
        string KeyBenefit,string KeyBenefitImg,string orderby)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("InsProduct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ProductName", ProductName);
            cmd.Parameters.AddWithValue("@ProductImage", ProductImage);
            cmd.Parameters.AddWithValue("@ProductDescription", ProductDescription);
            cmd.Parameters.AddWithValue("@Productprice", Productprice);
            cmd.Parameters.AddWithValue("@ProductSubCatId", ProductSubCatId);
            cmd.Parameters.AddWithValue("@ProductInsBy", ProductInsBy);
            cmd.Parameters.AddWithValue("@ProductKeyBenefits", KeyBenefit);
            cmd.Parameters.AddWithValue("@ProductKBIMG", KeyBenefitImg);
            cmd.Parameters.AddWithValue("@ProductOrderBy", orderby);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string upsProduct(string ProductName, string ProductImage, string ProductDescription, string Productprice, string ProductSubCatId, string ProductId,
        string KeyBenefit,string KeyBenefitImg, string orderby)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("upsProduct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ProductId", ProductId);
            cmd.Parameters.AddWithValue("@ProductName", ProductName);
            cmd.Parameters.AddWithValue("@ProductImage", ProductImage);
            cmd.Parameters.AddWithValue("@ProductDescription", ProductDescription);
            cmd.Parameters.AddWithValue("@Productprice", Productprice);
            cmd.Parameters.AddWithValue("@ProductSubCatId", ProductSubCatId);
            cmd.Parameters.AddWithValue("@ProductKeyBenefits", KeyBenefit);
            cmd.Parameters.AddWithValue("@ProductKBIMG", KeyBenefitImg);
            cmd.Parameters.AddWithValue("@ProductOrderBy", orderby);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string delProduct(string ProductId, string SCatId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delProduct", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ProductId", ProductId);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string ViewProduct(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<Detail> lst = new List<Detail>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewProduct", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@ProductId", Id);
        SqlDataReader dr = cmd.ExecuteReader();
        Detail obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new Detail();

                obj.Id = dr["mproductid"].ToString();
                obj.CatId = dr["mCatId"].ToString();
                obj.SubCatId = dr["msCatId"].ToString();
                obj.CategoryName = dr["mCatName"].ToString();
                obj.SubCategoryName = dr["msCatName"].ToString();
                obj.Title = dr["mProductName"].ToString();
                obj.Description = dr["mProductDescription"].ToString();
                obj.Image = dr["mProductImage"].ToString();
                obj.Price = dr["mProductprice"].ToString();
                obj.InsDate = dr["msCatInsDate"].ToString();
                obj.KeyBenefit = dr["mProductKeyBenefits"].ToString();
                obj.KeyBenefitImg = dr["mProductKBIMG"].ToString();
                obj.OrderBy = dr["mProductOrderBy"].ToString();
                lst.Add(obj);
            }
        }
        dr.Dispose();
        cmd.Dispose();
        con.Close();
        //} 
        return RAJ.Serialize(lst);
    }
    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string DrpSubCat(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<SubCategory> lst = new List<SubCategory>();
        con.Open();
        SqlCommand cmd = new SqlCommand("DrpSubCat", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CatId", Id);
        SqlDataReader dr = cmd.ExecuteReader();
        SubCategory obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new SubCategory();

                obj.Id = dr["msCatId"].ToString();
                obj.SubCategoryName = dr["msCatName"].ToString();
                lst.Add(obj);
            }
        }
        dr.Dispose();
        cmd.Dispose();
        con.Close();
        //} 
        return RAJ.Serialize(lst);
    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string ViewTypeDetail(string detailTypeId, string DetailId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<Dropdown> lst = new List<Dropdown>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewTypeDetail", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@detailTypeId", detailTypeId);
        cmd.Parameters.AddWithValue("@DetailId", DetailId);
        SqlDataReader dr = cmd.ExecuteReader();
        Dropdown obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new Dropdown();

                obj.Id = dr["mtDetailId"].ToString();
                obj.Name = dr["mtDetailName"].ToString();
                obj.orderNo = dr["mtDetailOrderNo"].ToString();
                lst.Add(obj);
            }
        }
        dr.Dispose();
        cmd.Dispose();
        con.Close();
        //} 
        return RAJ.Serialize(lst);
    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string insTypeDetail(string detailTypeId,string DetailName, string DetailOrderNo)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insTypeDetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@detailTypeId", detailTypeId);
            cmd.Parameters.AddWithValue("@DetailName", DetailName);
            cmd.Parameters.AddWithValue("@DetailOrderNo", DetailOrderNo);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string updTypeDetail(string detailTypeId, string DetailName, string DetailOrderNo,string DetailId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updTypeDetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@DetailId", DetailId);
            cmd.Parameters.AddWithValue("@detailTypeId", detailTypeId);
            cmd.Parameters.AddWithValue("@DetailName", DetailName);
            cmd.Parameters.AddWithValue("@DetailOrderNo", DetailOrderNo);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string delTypeDetail(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delTypeDetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@DetailId", Id);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string viewData(string detailTypeId, string DetailId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<viewData> lst = new List<viewData>();
        con.Open();
        SqlCommand cmd = new SqlCommand("viewData", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@detailTypeId", detailTypeId);
        cmd.Parameters.AddWithValue("@DetailId", DetailId);
        SqlDataReader dr = cmd.ExecuteReader();
        viewData obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new viewData();

                obj.Id = dr["mdId"].ToString();
                obj.Name = dr["mdName"].ToString();
                obj.Image = dr["mdImage"].ToString();
                obj.Description = dr["mdDescription"].ToString();
                obj.DetailId = dr["mtDetailId"].ToString();
                obj.DetailName = dr["mtDetailName"].ToString();
                obj.DetailOrderNo = dr["mtDetailOrderNo"].ToString();
                obj.TypeId = dr["mTypeId"].ToString();
                obj.TypeName = dr["mTypeName"].ToString();
                lst.Add(obj);
            }
        }
        dr.Dispose();
        cmd.Dispose();
        con.Close();
        //} 
        return RAJ.Serialize(lst);
    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string insData(string DetailId, string Name, string Image,string Description)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insData", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@DetailId", DetailId);
            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@Image", Image);
            cmd.Parameters.AddWithValue("@Description", Description);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }
    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string updData(string DetailId, string Name, string Image, string Description,string mdId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updData", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mdId", mdId);
            cmd.Parameters.AddWithValue("@DetailId", DetailId);
            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@Image", Image);
            cmd.Parameters.AddWithValue("@Description", Description);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string delData(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delData", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mdId", Id);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string viewPro()
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<Dropdown> lst = new List<Dropdown>();
        con.Open();
        SqlCommand cmd = new SqlCommand("viewPro", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataReader dr = cmd.ExecuteReader();
        Dropdown obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new Dropdown();

                obj.Id = dr["mProductId"].ToString();
                obj.Name = dr["mProductName"].ToString();
                obj.orderNo = dr["mProductprice"].ToString();
                lst.Add(obj);
            }
        }
        dr.Dispose();
        cmd.Dispose();
        con.Close();
        //} 
        return RAJ.Serialize(lst);
    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string viewTimeSlot(string BookingDate)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<Dropdown> lst = new List<Dropdown>();
        con.Open();
        SqlCommand cmd = new SqlCommand("viewTimeSlot", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@BookingDate", BookingDate);
        SqlDataReader dr = cmd.ExecuteReader();
        Dropdown obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new Dropdown();

                obj.Id = dr["mtsId"].ToString();
                obj.Name = dr["mtsName"].ToString();
                obj.orderNo = dr["IsBooked"].ToString();
                lst.Add(obj);
            }
        }
        dr.Dispose();
        cmd.Dispose();
        con.Close();
        //} 
        return RAJ.Serialize(lst);
    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string Insbooking(string BookingName,string BookingEmail, string BookingMobile, string BookingDate, string BookingTime, string BookingLocation,string BookingProductId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("Insbooking", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BookingName", BookingName);
            cmd.Parameters.AddWithValue("@BookingEmail", BookingEmail);
            cmd.Parameters.AddWithValue("@BookingMobile", BookingMobile);
            cmd.Parameters.AddWithValue("@BookingDate", BookingDate);
            cmd.Parameters.AddWithValue("@BookingTime", BookingTime);
            cmd.Parameters.AddWithValue("@BookingLocation", BookingLocation);
            cmd.Parameters.AddWithValue("@BookingProductId", BookingProductId);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }
}
