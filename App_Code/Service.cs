using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.ServiceModel.Web;
using System.ServiceModel.Activation;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Runtime.Serialization.Json;
using System.Web.Script.Services;
using System.ServiceModel.Channels;
using System.Web.Services;
using Property;
using Message;
using System.Xml.Linq;
using System.Web.UI.WebControls;



// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
[ServiceContract]
public class Service
{
	SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string insEnquiry(string EnquiryName, string EnquiryEmail, string EnquiryMobileNo, string EnquiryTypeId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insEnquiry", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@EnquiryName", EnquiryName);
            cmd.Parameters.AddWithValue("@EnquiryEmail", EnquiryEmail);
            cmd.Parameters.AddWithValue("@EnquiryMobileNo", EnquiryMobileNo);
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
    public string insCategory(string CategoryName, string IsActive)
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
            cmd.Parameters.AddWithValue("@mcatName", CategoryName);
            cmd.Parameters.AddWithValue("@mcatIsActive", IsActive);
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
        cmd.Parameters.AddWithValue("@mcatId", Id);
        SqlDataReader dr = cmd.ExecuteReader();
        Category obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new Category();

                obj.Id = dr["mcatId"].ToString();
                obj.CategoryName = dr["mcatName"].ToString();
                obj.Status = dr["Status"].ToString();
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
    public string upsCategory(string Id, string CategoryName)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("upsCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mcatId", Id);
            cmd.Parameters.AddWithValue("@mcatName", CategoryName);
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
            cmd.Parameters.AddWithValue("@mCatId", Id);
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
    public string insSubCategory(string SubCategoryName, string IsActive, string CatId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insSubCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mscName", SubCategoryName);
            cmd.Parameters.AddWithValue("@mscIsActive", IsActive);
            cmd.Parameters.AddWithValue("@mscCatId", CatId);
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
    public string ViewSubCategory(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<SubCategory> lst = new List<SubCategory>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewSubCategory", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@mscId", Id);
        SqlDataReader dr = cmd.ExecuteReader();
        SubCategory obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new SubCategory();

                obj.Id = dr["mscId"].ToString();
                obj.SubCategoryName = dr["mscName"].ToString();
                obj.CategoryId = dr["mcatId"].ToString();
                obj.CategoryName = dr["mcatName"].ToString();
                obj.Isactive = dr["mcatIsActive"].ToString();
                obj.Status = dr["Status"].ToString();
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
    public string upsSubCategory(string Id, string SubCategoryName, string CatId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("upsSubCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mscId", Id);
            cmd.Parameters.AddWithValue("@mscName", SubCategoryName);
            cmd.Parameters.AddWithValue("@mscCatId", CatId);
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
            cmd.Parameters.AddWithValue("@mscId", Id);
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
    public string insDetail(string Title, string SubTitle, string Description, string Image, string CatId, string SubCatId, string SeoTitile, string SeoDescription, string SeoKeywords)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insDetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mDetailTitle", Title);
            cmd.Parameters.AddWithValue("@mDetailSubTitle", SubTitle);
            cmd.Parameters.AddWithValue("@mdetailDescription", Description);
            cmd.Parameters.AddWithValue("@mdetailImage", Image);
            cmd.Parameters.AddWithValue("@mdetailCatId", CatId);
            cmd.Parameters.AddWithValue("@mdetailSubCatId", SubCatId);
            cmd.Parameters.AddWithValue("@mdetailSeoTitile", SeoTitile);
            cmd.Parameters.AddWithValue("@mdetailSeoDescription", SeoDescription);
            cmd.Parameters.AddWithValue("@mdetailSeoKeywords", SeoKeywords);
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
    public string ViewDetail(string Id, string cat, string subcat)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<Detail> lst = new List<Detail>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewDetail", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@mDetailId", Id);
        cmd.Parameters.AddWithValue("@CatId", cat);
        cmd.Parameters.AddWithValue("@subCatId", subcat);
        SqlDataReader dr = cmd.ExecuteReader();
        Detail obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new Detail();

                obj.Id = dr["mDetailId"].ToString();
                obj.CatId = dr["mcatId"].ToString();
                obj.SubCatId = dr["mscId"].ToString();
                obj.CategoryName = dr["mcatName"].ToString();
                obj.SubCategoryName = dr["mscName"].ToString();
                obj.Title = dr["mDetailTitle"].ToString();
                obj.SubTitle = dr["mDetailSubTitle"].ToString();
                obj.Description = dr["mdetailDescription"].ToString();
                obj.Image = dr["mdetailImage"].ToString();
                obj.Status = dr["Status"].ToString();
                obj.InsDate = dr["mdetailinsDate"].ToString();
                obj.SeoTitle = dr["mdetailSeoTitile"].ToString();
                obj.SeoDescription = dr["mdetailSeoDescription"].ToString();
                obj.SeoKeywords = dr["mdetailSeoKeywords"].ToString();

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
    public string upsDetail(string Id, string Title, string SubTitle, string Description, string Image, string CatId, string SubCatId, string SeoTitile, string SeoDescription, string SeoKeywords)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("upsDetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mDetailId", Id);
            cmd.Parameters.AddWithValue("@mDetailTitle", Title);
            cmd.Parameters.AddWithValue("@mDetailSubTitle", SubTitle);
            cmd.Parameters.AddWithValue("@mdetailDescription", Description);
            cmd.Parameters.AddWithValue("@mdetailImage", Image);
            cmd.Parameters.AddWithValue("@mdetailCatId", CatId);
            cmd.Parameters.AddWithValue("@mdetailSubCatId", SubCatId);
            cmd.Parameters.AddWithValue("@mdetailSeoTitile", SeoTitile);
            cmd.Parameters.AddWithValue("@mdetailSeoDescription", SeoDescription);
            cmd.Parameters.AddWithValue("@mdetailSeoKeywords", SeoKeywords);
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
    public string delDetail(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delDetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mDetailId", Id);
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
    public string ddlSubCategory(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ddlSubCategory> lst = new List<ddlSubCategory>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ddlSubCategory", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@mCatId", Id);
        SqlDataReader dr = cmd.ExecuteReader();
        ddlSubCategory obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ddlSubCategory();

                obj.Id = dr["mscId"].ToString();
                obj.SubCatName = dr["mscName"].ToString();
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
    public string insWebenquiry(string mweName, string mweEmail, string mweMobileNo, string mweDescription)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insWebenquiry", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mweName", mweName);
            cmd.Parameters.AddWithValue("@mweEmail", mweEmail);
            cmd.Parameters.AddWithValue("@mweMobileNo", mweMobileNo);
            cmd.Parameters.AddWithValue("@mweDescription", mweDescription);
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
    public string insCourseDetail(string CourseName, string CourseType, string CourseDuration, string CourseFeeType, 
        string CourseFee, string CourseImage, string CourseDescription,string CourseSubCatId,string PopularCourseId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insCourseDetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mcdCourseName", CourseName);
            cmd.Parameters.AddWithValue("@mcdCourseType", CourseType);
            cmd.Parameters.AddWithValue("@mcdCourseDuration", CourseDuration);
            cmd.Parameters.AddWithValue("@mcdCourseFeeType", CourseFeeType);
            cmd.Parameters.AddWithValue("@mcdCourseFee", CourseFee);
            cmd.Parameters.AddWithValue("@mcdCourseImage", CourseImage);
            cmd.Parameters.AddWithValue("@mcdCourseDescription", CourseDescription);
            cmd.Parameters.AddWithValue("@mcdCourseSubCatId", CourseSubCatId);
            cmd.Parameters.AddWithValue("@mcdPopularCourseId", PopularCourseId);
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
    public string upsCourseDetail(string Id, string CourseName, string CourseType, string CourseDuration, string CourseFeeType,
        string CourseFee, string CourseImage, string CourseDescription,string CourseSubCatId,string PopularCourseId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("upsCourseDetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mcdId", Id);
            cmd.Parameters.AddWithValue("@mcdCourseName", CourseName);
            cmd.Parameters.AddWithValue("@mcdCourseType", CourseType);
            cmd.Parameters.AddWithValue("@mcdCourseDuration", CourseDuration);
            cmd.Parameters.AddWithValue("@mcdCourseFeeType", CourseFeeType);
            cmd.Parameters.AddWithValue("@mcdCourseFee", CourseFee);
            cmd.Parameters.AddWithValue("@mcdCourseImage", CourseImage);
            cmd.Parameters.AddWithValue("@mcdCourseDescription", CourseDescription);
            cmd.Parameters.AddWithValue("@mcdCourseSubCatId", CourseSubCatId);
            cmd.Parameters.AddWithValue("@mcdPopularCourseId", PopularCourseId);
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
    public string delCourseDetail(string mcdId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delCourseDetail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mcdId", mcdId);
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
    public string viewCourseDetail(string Id,string SubCatId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<CourseDetail> lst = new List<CourseDetail>();
        con.Open();
        SqlCommand cmd = new SqlCommand("viewCourseDetail", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@mcdId", Id);
        cmd.Parameters.AddWithValue("@SubCatId", SubCatId);
        SqlDataReader dr = cmd.ExecuteReader();
        CourseDetail obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new CourseDetail();

                obj.Id = dr["mcdId"].ToString();
                obj.CourseName = dr["mcdCourseName"].ToString();
                obj.CourseType = dr["mcdCourseType"].ToString();
                obj.CourseDuration = dr["mcdCourseDuration"].ToString();
                obj.CourseFeeType = dr["mcdCourseFeeType"].ToString();
                obj.CourseFee = dr["mcdCourseFee"].ToString();
                obj.CourseImage = dr["mcdCourseImage"].ToString();
                obj.CourseDescription = dr["mcdCourseDescription"].ToString();
                obj.IsActive = dr["mcdIsActive"].ToString();
                obj.Status = dr["Status"].ToString();
                obj.CatId = dr["CourseCatId"].ToString();
                obj.CatName = dr["CourseCatName"].ToString();
                obj.CatSubId = dr["CourseSubCatId"].ToString();
                obj.CatSubName = dr["CourseSubCatName"].ToString();
                obj.CourseStatus = dr["CourseStatus"].ToString();
                obj.PopularCourseId = dr["mcdPopularCourseId"].ToString();
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
    public string InsStudentRegistration(string BranchId, string CourseId, string SessionId,
        string Name, string FatherName, string MotherName, string Email, string MobileNo, string DOB, string Address, string StateId, string DistrictId, string CityId, string CategoryId,
        string Gender, string Photo, string DocumentImage, string AadharNo, string createdby)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("InsStudentRegistration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BranchId", BranchId);
            cmd.Parameters.AddWithValue("@CourseId", CourseId);
            cmd.Parameters.AddWithValue("@SessionId", SessionId);
            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@FatherName", FatherName);
            cmd.Parameters.AddWithValue("@MotherName", MotherName);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@MobileNo", MobileNo);
            cmd.Parameters.AddWithValue("@DOB", DOB);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@StateId", StateId);
            cmd.Parameters.AddWithValue("@DistrictId", DistrictId);
            cmd.Parameters.AddWithValue("@CityId", CityId);
            cmd.Parameters.AddWithValue("@CategoryId", CategoryId);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.Parameters.AddWithValue("@Photo", Photo);
            cmd.Parameters.AddWithValue("@DocumentImage", DocumentImage);
            cmd.Parameters.AddWithValue("@AadharNo", AadharNo);
            cmd.Parameters.AddWithValue("@CreatedBy", createdby);
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
    public string ViewStudentDetail(string StartDate, string @EndDate)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<StudentDetail> lst = new List<StudentDetail>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewStudentDetail", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StartDate", StartDate);
        cmd.Parameters.AddWithValue("@EndDate", @EndDate);
        SqlDataReader dr = cmd.ExecuteReader();
        StudentDetail obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new StudentDetail();

                obj.Id = dr["mscId"].ToString();
                obj.BranchId = dr["mscName"].ToString();
                obj.BranchName = dr["mscName"].ToString();
                obj.CourseId = dr["mscName"].ToString();
                obj.CourseName = dr["mscName"].ToString();
                obj.MonthTime = dr["mscName"].ToString();
                obj.mspSessionStartDate = dr["mscName"].ToString();
                obj.mspSessionEndDate = dr["mscName"].ToString();
                obj.SessionStartDate = dr["mscName"].ToString();
                obj.SessionEndDate = dr["mscName"].ToString();
                obj.InsDate = dr["mscName"].ToString();
                obj.Name = dr["mscName"].ToString();
                obj.FatherName = dr["mscName"].ToString();
                obj.MotherName = dr["mscName"].ToString();
                obj.Email = dr["mscName"].ToString();
                obj.MobileNo = dr["mscName"].ToString();
                obj.DOB = dr["mscName"].ToString();
                obj.Address = dr["mscName"].ToString();
                obj.StateId = dr["mscName"].ToString();
                obj.StateName = dr["mscName"].ToString();
                obj.DistrictId = dr["mscName"].ToString();
                obj.DistrictName = dr["mscName"].ToString();
                obj.CityId = dr["mscName"].ToString();
                obj.CityName = dr["mscName"].ToString();
                obj.CategoryId = dr["mscName"].ToString();
                obj.CategoryName = dr["mscName"].ToString();
                obj.Gender = dr["mscName"].ToString();
                obj.Photos = dr["mscName"].ToString();
                obj.DocumentsImage = dr["mscName"].ToString();
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
    public string ViewBranch(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewBranch> lst = new List<ViewBranch>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewBranch", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        SqlDataReader dr = cmd.ExecuteReader();
        ViewBranch obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewBranch();

                obj.Id = dr["mbId"].ToString();
                obj.Name = dr["mbName"].ToString();
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
    public string ViewState(string StateId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewBranch> lst = new List<ViewBranch>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewState", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StateId", StateId);
        SqlDataReader dr = cmd.ExecuteReader();
        ViewBranch obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewBranch();

                obj.Id = dr["mStateId"].ToString();
                obj.Name = dr["mStateName"].ToString();
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
    public string ViewDistrict(string DistrictId, string DistrictStateId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewBranch> lst = new List<ViewBranch>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewDistrict", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@DistrictId", DistrictId);
        cmd.Parameters.AddWithValue("@DistrictStateId", DistrictStateId);
        SqlDataReader dr = cmd.ExecuteReader();
        ViewBranch obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewBranch();

                obj.Id = dr["mDistrictId"].ToString();
                obj.Name = dr["mDistrictName"].ToString();
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
    public string ViewCity(string CityId, string CityDistrictId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewBranch> lst = new List<ViewBranch>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewCity", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CityId", CityId);
        cmd.Parameters.AddWithValue("@CityDistrictId", CityDistrictId);
        SqlDataReader dr = cmd.ExecuteReader();
        ViewBranch obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewBranch();

                obj.Id = dr["mCityId"].ToString();
                obj.Name = dr["mCityName"].ToString();
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
    public string ViewTypeDetail(string DetailTypeId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewBranch> lst = new List<ViewBranch>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewTypeDetail", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@DetailTypeId", DetailTypeId);
        SqlDataReader dr = cmd.ExecuteReader();
        ViewBranch obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewBranch();

                obj.Id = dr["mtDetailId"].ToString();
                obj.Name = dr["mtDetailName"].ToString();
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
    public string viewWebenquiry(string StartDate, string EndDate)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewEnquiry> lst = new List<ViewEnquiry>();
        con.Open();
        SqlCommand cmd = new SqlCommand("viewWebenquiry", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StartDate", StartDate);
        cmd.Parameters.AddWithValue("@EndDate", EndDate);
        SqlDataReader dr = cmd.ExecuteReader();
        ViewEnquiry obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewEnquiry();

                obj.Id = dr["mweId"].ToString();
                obj.Name = dr["mweName"].ToString();
                obj.Email = dr["mweEmail"].ToString();
                obj.MobileNo = dr["mweMobileNo"].ToString();
                //obj.Description = dr["mweDescription"].ToString();
                obj.InsDate = dr["InsDate"].ToString();
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
    public string ViewStudent(string Id, string SessionId, string mbId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewStuent> lst = new List<ViewStuent>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewStudent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        if (SessionId != null && SessionId != "")
        {
            cmd.Parameters.AddWithValue("@SessionId", SessionId);
        }
        if (mbId != null && mbId != "")
        {
            cmd.Parameters.AddWithValue("@mbId", mbId);
        }

        SqlDataReader dr = cmd.ExecuteReader();
        ViewStuent obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewStuent();

                obj.Id = dr["mspid"].ToString();
                obj.StudentCode = dr["mspStudentCode"].ToString();
                obj.Name = dr["srName"].ToString();
                obj.FatherName = dr["srFatherName"].ToString();
                obj.Dob = dr["srDOB"].ToString();
                obj.Mobile_No = dr["srMobileNo"].ToString();
                obj.BranchId = dr["mbId"].ToString();
                obj.BrnachName = dr["mbName"].ToString();
                obj.CourseId = dr["mcdId"].ToString();
                obj.CourseName = dr["mcdCourseName"].ToString();
                obj.Photo = dr["srPhoto"].ToString();
                obj.DocumentImage = dr["srDocumentImage"].ToString();
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
    public string UpdateStatus(string StudentId, string Status)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("UpdateStatus", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentId", StudentId);
            cmd.Parameters.AddWithValue("@Status", Status);
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
    public string EditStudentDetail(string StudentId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewStudentDetail> lst = new List<ViewStudentDetail>();
        con.Open();
        SqlCommand cmd = new SqlCommand("EditStudentDetail", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StudentId", StudentId);
        SqlDataReader dr = cmd.ExecuteReader();
        ViewStudentDetail obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewStudentDetail();

                obj.Id = dr["mspId"].ToString();
                obj.BranchId = dr["mspBranchId"].ToString();
                obj.CourseId = dr["mspCourseId"].ToString();
                obj.SessionId = dr["mspSessionId"].ToString();
                obj.StudentName = dr["srName"].ToString();
                obj.StudentFatherName = dr["srFatherName"].ToString();
                obj.StudentMotherName = dr["srMotherName"].ToString();
                obj.Email = dr["srEmail"].ToString();
                obj.MobileNo = dr["srMobileNo"].ToString();
                obj.Dob = dr["srDOB"].ToString();
                obj.Address = dr["srAddress"].ToString();
                obj.StudentStateId = dr["srStateId"].ToString();
                obj.StudentDistrictId = dr["srDistrictId"].ToString();
                obj.StudentCityId = dr["srCityId"].ToString();
                obj.StudentCategoryId = dr["srCategoryId"].ToString();
                obj.StudentGender = dr["srGender"].ToString();
                obj.StudentImage = dr["srPhoto"].ToString();
                obj.StudentDocumentImage = dr["srDocumentImage"].ToString();
                obj.AadharNo = dr["srAadharNo"].ToString();

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
    public string viewMessage(string type)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewBranch> lst = new List<ViewBranch>();
        con.Open();
        SqlCommand cmd = new SqlCommand("viewMessage", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@type", type);
        SqlDataReader dr = cmd.ExecuteReader();
        ViewBranch obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewBranch();

                obj.Id = dr["mmId"].ToString();
                obj.Name = dr["mmDescription"].ToString();
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
    public string insMessage(string Description, string Type)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insMessage", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Description", Description);
            cmd.Parameters.AddWithValue("@Type", Type);
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
    public string delMessage(string Description, string Type)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delMessage", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mmId", Description);
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
    public string SendSMS(long mobileNo, string smsDetail, string smsType)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            Message.SMS sms = new Message.SMS();
            sms.SMSSend(smsDetail, mobileNo, smsType);
            string str = "Successfully Done";
            return can.Serialize(str);
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string viewStudentList(string uId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewBranch> lst = new List<ViewBranch>();
        con.Open();
        SqlCommand cmd = new SqlCommand("viewStudentList", con);
        cmd.CommandType = CommandType.StoredProcedure;
        if (uId != null && uId != "")
        {
            cmd.Parameters.AddWithValue("@UId", uId);
        }
        SqlDataReader dr = cmd.ExecuteReader();
        ViewBranch obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewBranch();

                obj.Id = dr["srMobileNo"].ToString();
                obj.Name = dr["srName"].ToString();
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
    public string SendSMSWithComa(string mobileNo, string smsDetail, string smsType)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            string mobi = ""; long cs;
            mobi = mobileNo.Split(',').ToString();
            cs = mobi.Count();
            for (int i = 0; i < cs; i++)
            {
                Message.SMS sms = new Message.SMS();
                sms.SMSSend(smsDetail, mobi[i], smsType);

            }
            string str = "Successfully Done";
            return can.Serialize(str);
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }

    [OperationContract]
    [WebInvoke(Method = "POST", BodyStyle = WebMessageBodyStyle.Wrapped, ResponseFormat = WebMessageFormat.Json)]
    public string updStudentRegistration(string BranchId, string CourseId, string SessionId,
    string Name, string FatherName, string MotherName, string Email, string MobileNo, string DOB, string Address, string StateId, string DistrictId, string CityId, string CategoryId,
    string Gender, string Photo, string DocumentImage, string mspId, string AadharNo)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updStudentRegistration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mspId", mspId);
            cmd.Parameters.AddWithValue("@BranchId", BranchId);
            cmd.Parameters.AddWithValue("@CourseId", CourseId);
            cmd.Parameters.AddWithValue("@SessionId", SessionId);
            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@FatherName", FatherName);
            cmd.Parameters.AddWithValue("@MotherName", MotherName);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@MobileNo", MobileNo);
            cmd.Parameters.AddWithValue("@DOB", DOB);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@StateId", StateId);
            cmd.Parameters.AddWithValue("@DistrictId", DistrictId);
            cmd.Parameters.AddWithValue("@CityId", CityId);
            cmd.Parameters.AddWithValue("@CategoryId", CategoryId);
            cmd.Parameters.AddWithValue("@Gender", Gender);
            cmd.Parameters.AddWithValue("@Photo", Photo);
            cmd.Parameters.AddWithValue("@DocumentImage", DocumentImage);
            cmd.Parameters.AddWithValue("@AadharNo", AadharNo);
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
    public string InsSubject(string SubjectName)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("InsSubject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SubjectName", SubjectName);
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
    public string ViewSubject(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<Subject> lst = new List<Subject>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewSubject", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@SubjectId", Id);
        SqlDataReader dr = cmd.ExecuteReader();
        Subject obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new Subject();

                obj.Id = dr["mSubjectId"].ToString();
                obj.SubjectName = dr["mSubjectName"].ToString();
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
    public string UpdateSubject(string Id, string SubjectName)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("UpdateSubject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SubjectId", Id);
            cmd.Parameters.AddWithValue("@SubjectName", SubjectName);
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
    public string ViewCourseWiseSubject(string Id,string Year)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<CourseWiseSubject> lst = new List<CourseWiseSubject>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewCourseWiseSubject", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CourseId", Id);
        cmd.Parameters.AddWithValue("@Year", Year);
        SqlDataReader dr = cmd.ExecuteReader();
        CourseWiseSubject obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new CourseWiseSubject();

                obj.SubjectId = dr["mSubjectId"].ToString();
                obj.cwsId = dr["cwsId"].ToString();
                obj.CourseId = dr["cwsCourseId"].ToString();
                obj.CourseName = dr["mcdCourseName"].ToString();
                obj.Code = dr["cwsCode"].ToString();
                obj.SubjectName = dr["mSubjectName"].ToString();
                obj.Year = dr["cwsYear"].ToString();
                obj.YearStatus = dr["YearStatus"].ToString();
                //obj.TheoryMinMarks = dr["cwsTheoryMinMarks"].ToString();
                //obj.PracticalMaxMarks = dr["cwsPracticalMaxMarks"].ToString();
                //obj.PracticalMinMarks = dr["cwsPracticalMinMarks"].ToString();
                //obj.AssessmentMinMarks = dr["cwsAssessmentMinMarks"].ToString();
                //obj.AssessmentMaxMarks = dr["cwsAssessmentMaxMarks"].ToString();
                //obj.TotalMarks = dr["cwsTotalMarks"].ToString();
                obj.OrderNo = dr["cwsOrderNo"].ToString();
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
    public string InsCourseWiseSubject(string Code, string CourseId, string SubjectId,string Year)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("InsCourseWiseSubject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cwsCode", Code);
            cmd.Parameters.AddWithValue("@CourseId", CourseId);
            cmd.Parameters.AddWithValue("@SubjectId", SubjectId);
            cmd.Parameters.AddWithValue("@Year", Year);
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
    public string UpdateCourseWiseSubject(string Id, string OrderNo)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("UpdateCourseWiseSubject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cwsId", Id);
            cmd.Parameters.AddWithValue("@OrderNo", OrderNo);
            //cmd.Parameters.AddWithValue("@TheoryMaxMarks", TheoryMaxMark);
            //cmd.Parameters.AddWithValue("@TheoryMinMarks", TheoryMinMark);
            //cmd.Parameters.AddWithValue("@PracticalMaxMarks", PracticalMaxMark);
            //cmd.Parameters.AddWithValue("@PracticalMinMarks", PracticalMinMark);
            //cmd.Parameters.AddWithValue("@AssessmentMinMarks", AssessmentMinMarks);
            //cmd.Parameters.AddWithValue("@AssessmentMaxMarks", AssessmentMaxMarks);
            //cmd.Parameters.AddWithValue("@TotalMarks", TotalMark);
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
    public string ViewStudentMarks(string StudentCode, string Year)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<StudentMarks> lst = new List<StudentMarks>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewStudentMarks", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StudentCode", StudentCode);
        cmd.Parameters.AddWithValue("@Year", Year);
        SqlDataReader dr = cmd.ExecuteReader();
        StudentMarks obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new StudentMarks();

                obj.Id = dr["cwsSubjectId"].ToString();
                obj.SubjectName = dr["mSubjectName"].ToString();
                obj.StudentName = dr["srName"].ToString();
                obj.FatherName = dr["srFatherName"].ToString();
                obj.CourseName = dr["mcdCourseName"].ToString();
                obj.ObtainMarks = dr["ObtainMarks"].ToString();
                obj.Practical = dr["Practical"].ToString();
                obj.BranchId = dr["BranchId"].ToString();
                obj.StudentId = dr["mspId"].ToString();
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
    public string delCourseWiseSubject(string cwsId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delCourseWiseSubject", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cwsId", cwsId);
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
    public string insMasterSession(string SessionName, string SessionStartDate, string SessionPrintDays, string SessionPrefix,
        string SessionNumber, string SessionShowToWeb)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insMasterSession", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SessionName", SessionName);
            cmd.Parameters.AddWithValue("@SessionStartDate", SessionStartDate);
            cmd.Parameters.AddWithValue("@SessionPrintDays", SessionPrintDays);
            cmd.Parameters.AddWithValue("@SessionPrefix", SessionPrefix);
            cmd.Parameters.AddWithValue("@SessionNumber", SessionNumber);
            cmd.Parameters.AddWithValue("@SessionShowToWeb", SessionShowToWeb);
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
    public string viewMasterSession(string SessionId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<MasterSession> lst = new List<MasterSession>();
        con.Open();
        SqlCommand cmd = new SqlCommand("viewMasterSession", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@SessionId", SessionId);
        SqlDataReader dr = cmd.ExecuteReader();
        MasterSession obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new MasterSession();

                obj.SessionId = dr["mSessionId"].ToString();
                obj.SessionName = dr["mSessionName"].ToString();
                obj.SessionStartDate = dr["mSessionStartDate"].ToString();
                obj.SessionPrefix = dr["mSessionPrefix"].ToString();
                obj.SessionNumber = dr["mSessionNumber"].ToString();
                obj.SessionStatus = dr["SessionStatus"].ToString();
                obj.SessionSDate = dr["SessionSDate"].ToString();
                obj.SessionPrintDays = dr["mSessionPrintDays"].ToString();
                obj.ShowToWeb = dr["SessionShowToWeb"].ToString();
                obj.SessionShowToWeb = dr["mSessionShowToWeb"].ToString();
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
    public string updateMasterSession(string SessionName, string SessionStartDate, string SessionPrintDays, string SessionPrefix,
        string SessionNumber, string SessionId, string SessionShowToWeb)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updateMasterSession", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@SessionId", SessionId);
            cmd.Parameters.AddWithValue("@SessionName", SessionName);
            cmd.Parameters.AddWithValue("@SessionStartDate", SessionStartDate);
            cmd.Parameters.AddWithValue("@SessionPrintDays", SessionPrintDays);
            cmd.Parameters.AddWithValue("@SessionPrefix", SessionPrefix);
            cmd.Parameters.AddWithValue("@SessionNumber", SessionNumber);
            cmd.Parameters.AddWithValue("@SessionShowToWeb", SessionShowToWeb);
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
    public string delMasterSession(string SessionId, string SessionStatus)
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
            cmd.Parameters.AddWithValue("@SessionId", SessionId);
            cmd.Parameters.AddWithValue("@SessionStatus", SessionStatus);
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
    public string ViewSession()
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewBranch> lst = new List<ViewBranch>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewSession", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataReader dr = cmd.ExecuteReader();
        ViewBranch obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewBranch();

                obj.Id = dr["mSessionId"].ToString();
                obj.Name = dr["mSessionName"].ToString();
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
    public string StudentLogin(string LoginName, string password)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("StudentLogin", con);
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
    public string ViewStuDetail(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewStuentDetail> lst = new List<ViewStuentDetail>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewStuDetail", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StudentId", Id);
        SqlDataReader dr = cmd.ExecuteReader();
        ViewStuentDetail obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewStuentDetail();

                obj.Id = dr["mspId"].ToString();
                obj.Name = dr["srName"].ToString();
                obj.FatherName = dr["srFatherName"].ToString();
                obj.MotherName = dr["srMotherName"].ToString();
                obj.Dob = dr["srDOB"].ToString();
                obj.Mobile_No = dr["srMobileNo"].ToString();
                obj.Email = dr["srEmail"].ToString();
                obj.BrnachName = dr["mbName"].ToString();
                obj.Gender = dr["srGender"].ToString();
                obj.Address = dr["srAddress"].ToString();
                obj.CourseName = dr["mcdCourseName"].ToString();
                obj.Photo = dr["srPhoto"].ToString();
                obj.DocumentImage = dr["srDocumentImage"].ToString();
                obj.State = dr["mStateName"].ToString();
                obj.District = dr["mDistrictName"].ToString();
                obj.City = dr["mCityName"].ToString();
                obj.SessionName = dr["mSessionName"].ToString();
                obj.CategoryName = dr["mtDetailName"].ToString();
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
    public string ViewSessionWeb()
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewBranch> lst = new List<ViewBranch>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewSessionWeb", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataReader dr = cmd.ExecuteReader();
        ViewBranch obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewBranch();

                obj.Id = dr["mSessionId"].ToString();
                obj.Name = dr["mSessionName"].ToString();
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
    public string VerifyStudent(string Id,string Stuname)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<VerifyStudent> lst = new List<VerifyStudent>();
        con.Open();
        SqlCommand cmd = new SqlCommand("VerifyStudent", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StudentId", Id);
        cmd.Parameters.AddWithValue("@Stuname", Stuname);
        SqlDataReader dr = cmd.ExecuteReader();
        VerifyStudent obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new VerifyStudent();

                obj.Id = dr["mspId"].ToString();
                obj.UniqueId = dr["mspUniqueId"].ToString();
                obj.StudentName = dr["srName"].ToString();
                obj.FatherName = dr["srFatherName"].ToString();
                obj.MotherName = dr["srMotherName"].ToString();
                obj.StudentImage = dr["srPhoto"].ToString();
                obj.CourseName = dr["mcdCourseName"].ToString();
                obj.BatchName = dr["mSessionName"].ToString();
                obj.BranchName = dr["mbName"].ToString();
                obj.Remark = dr["Remark"].ToString();
                obj.StudentCode = dr["mspStudentCode"].ToString();
                obj.RegistrationNo = dr["RegistrationNo"].ToString();
                obj.AadharNo = dr["srAadharNo"].ToString();
                obj.DOB = dr["srdob"].ToString();
                obj.CourseDuration = dr["courseDuration"].ToString();
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
    public string insStudentMarks(string Querry, string StudentId, string Year)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insStudentMarks", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentId", StudentId);
            cmd.Parameters.AddWithValue("@Querry", Querry);
            cmd.Parameters.AddWithValue("@Year", Year);
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
    public string ViewBranchDeatil(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<BranchDetail> lst = new List<BranchDetail>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewBranchDeatil", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        SqlDataReader dr = cmd.ExecuteReader();
        BranchDetail obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new BranchDetail();

                obj.BranchId = dr["mbId"].ToString();
                obj.BranchName = dr["mbName"].ToString();
                obj.BranchAddress = dr["mbAddress"].ToString();
                obj.BranchMobileNo = dr["mbMobileNo"].ToString();
                obj.BranchEmail = dr["mbEmail"].ToString();
                obj.BranchLogo = dr["mbLogo"].ToString();
                obj.BranchType = dr["mbBranchType"].ToString();
                obj.BranchStateId = dr["mbStateId"].ToString();
                obj.BranchStateName = dr["mstateName"].ToString();
                obj.BranchDistrictId = dr["mbDistrictId"].ToString();
                obj.BranchDistrictName = dr["mDistrictName"].ToString();
                obj.BranchCityId = dr["mbCityId"].ToString();
                obj.BranchCityName = dr["mcityName"].ToString();
                obj.BranchStatus = dr["branchStatus"].ToString();
                obj.UserName = dr["mloginUserName"].ToString();
                obj.Password = dr["mloginPassword"].ToString();
                obj.TcId = dr["mbTcId"].ToString();
                obj.BranchPersonName = dr["mbBranchPersonName"].ToString();
                obj.PersonImg = dr["mbPersonImage"].ToString();
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
    public string insBranch(string Name,string Address,string MobileNo,string Email,string Logo,string StateId,string DistrictId,
        string CityId,string Reference,string UserName,string Password,string TcId,string BranchPersonName,string personImage)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insBranch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@MobileNo", MobileNo);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Logo", Logo);
            cmd.Parameters.AddWithValue("@StateId", StateId);
            cmd.Parameters.AddWithValue("@DistrictId", DistrictId);
            cmd.Parameters.AddWithValue("@CityId", CityId);
            cmd.Parameters.AddWithValue("@Reference", Reference);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.Parameters.AddWithValue("@TcId", TcId);
            cmd.Parameters.AddWithValue("@BranchPersonName", BranchPersonName);
            cmd.Parameters.AddWithValue("@personImage", personImage);
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
    public string updBranch(string Name, string Address, string MobileNo, string Email, string Logo, string StateId, string DistrictId,
    string CityId, string Reference, string UserName, string Password,string Id,string TcId,string BranchPersonName,string personImage)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("updBranch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@MobileNo", MobileNo);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@Logo", Logo);
            cmd.Parameters.AddWithValue("@StateId", StateId);
            cmd.Parameters.AddWithValue("@DistrictId", DistrictId);
            cmd.Parameters.AddWithValue("@CityId", CityId);
            cmd.Parameters.AddWithValue("@Reference", Reference);
            cmd.Parameters.AddWithValue("@UserName", UserName);
            cmd.Parameters.AddWithValue("@Password", Password);
            cmd.Parameters.AddWithValue("@Id", Id);
            cmd.Parameters.AddWithValue("@TcId", TcId);
            cmd.Parameters.AddWithValue("@BranchPersonName", BranchPersonName);
            cmd.Parameters.AddWithValue("@personImage", personImage);
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
    public string delbranch(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delbranch", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Id", Id);
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
    public string UpdateStatusNew(string StudentId, string Status)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("UpdateStatusNew", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentId", StudentId);
            cmd.Parameters.AddWithValue("@Status", Status);
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
    public string UpdBranchStatus(string mbId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("UpdBranchStatus", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mbId", mbId);
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
    public string ViewBranchDeatilNew(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<BranchDetail> lst = new List<BranchDetail>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewBranchDeatilNew", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Id", Id);
        SqlDataReader dr = cmd.ExecuteReader();
        BranchDetail obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new BranchDetail();

                obj.BranchId = dr["mbId"].ToString();
                obj.BranchName = dr["mbName"].ToString();
                obj.BranchAddress = dr["mbAddress"].ToString();
                obj.BranchMobileNo = dr["mbMobileNo"].ToString();
                obj.BranchEmail = dr["mbEmail"].ToString();
                obj.BranchLogo = dr["mbLogo"].ToString();
                obj.BranchType = dr["mbBranchType"].ToString();
                obj.BranchStateId = dr["mbStateId"].ToString();
                obj.BranchStateName = dr["mstateName"].ToString();
                obj.BranchDistrictId = dr["mbDistrictId"].ToString();
                obj.BranchDistrictName = dr["mDistrictName"].ToString();
                obj.BranchCityId = dr["mbCityId"].ToString();
                obj.BranchCityName = dr["mcityName"].ToString();
                obj.BranchStatus = dr["branchStatus"].ToString();
                obj.UserName = dr["mloginUserName"].ToString();
                obj.Password = dr["mloginPassword"].ToString();
                obj.TcId = dr["mbTcId"].ToString();
                obj.BranchPersonName = dr["mbBranchPersonName"].ToString();
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
    public string InsBranchEnquiry(string Name, string Address, string MobileNo, string Email, string Logo, string StateId, string DistrictId,
    string CityId, string BranchPersonName)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("InsBranchEnquiry", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", Name);
            cmd.Parameters.AddWithValue("@Address", Address);
            cmd.Parameters.AddWithValue("@MobileNo", MobileNo);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@StateId", StateId);
            cmd.Parameters.AddWithValue("@DistrictId", DistrictId);
            cmd.Parameters.AddWithValue("@CityId", CityId);
            cmd.Parameters.AddWithValue("@BranchPersonName", BranchPersonName);
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
    public string insCourseCat(string CategoryName, string IsActive)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insCourseCat", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CourseCatName", CategoryName);
            cmd.Parameters.AddWithValue("@CourseCatIsActive", IsActive);
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
    public string ViewCourseCat(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<Category> lst = new List<Category>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewCourseCat", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@CourseCatId", Id);
        SqlDataReader dr = cmd.ExecuteReader();
        Category obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new Category();

                obj.Id = dr["CourseCatId"].ToString();
                obj.CategoryName = dr["CourseCatName"].ToString();
                obj.Status = dr["Status"].ToString();
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
    public string upsCourseCat(string Id, string CategoryName)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("upsCourseCat", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CourseCatId", Id);
            cmd.Parameters.AddWithValue("@CourseCatName", CategoryName);
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
    public string delCourseCat(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delCourseCat", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CourseCatId", Id);
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
    public string insCourseSubCat(string SubCategoryName, string IsActive, string CatId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("insCourseSubCat", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CourseSubCatName", SubCategoryName);
            cmd.Parameters.AddWithValue("@CourseSubCatIsActive", IsActive);
            cmd.Parameters.AddWithValue("@SubCourseCatId", CatId);
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
    public string ViewCourseSubCat(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<SubCategory> lst = new List<SubCategory>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewCourseSubCat", con);
        cmd.CommandType = CommandType.StoredProcedure;
        if (Id!=null&& Id!="")
        {
            cmd.Parameters.AddWithValue("@CourseSubCatId", Id);
        }
        SqlDataReader dr = cmd.ExecuteReader();
        SubCategory obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new SubCategory();

                obj.Id = dr["CourseSubCatId"].ToString();
                obj.SubCategoryName = dr["CourseSubCatName"].ToString();
                obj.CategoryId = dr["CourseCatId"].ToString();
                obj.CategoryName = dr["CourseCatName"].ToString();
                obj.Isactive = dr["CourseSubCatIsActive"].ToString();
                obj.Status = dr["Status"].ToString();
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
    public string upsCourseSubCat(string Id, string SubCategoryName, string CatId)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("upsCourseSubCat", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CourseSubCatId", Id);
            cmd.Parameters.AddWithValue("@CourseSubCatName", SubCategoryName);
            cmd.Parameters.AddWithValue("@SubCourseCatId", CatId);
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
    public string delCourseSubCat(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delCourseSubCat", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CourseSubCatId", Id);
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
    public string ViewSubCat(string Id)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<SubCategory> lst = new List<SubCategory>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewSubCat", con);
        cmd.CommandType = CommandType.StoredProcedure;
        if (Id != null && Id != "")
        {
            cmd.Parameters.AddWithValue("@CatId", Id);
        }
        SqlDataReader dr = cmd.ExecuteReader();
        SubCategory obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new SubCategory();

                obj.Id = dr["CourseSubCatId"].ToString();
                obj.SubCategoryName = dr["CourseSubCatName"].ToString();
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
    public string viewBranchEnquiry(string StartDate, string EndDate)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<ViewBrnachEnquiry> lst = new List<ViewBrnachEnquiry>();
        con.Open();
        SqlCommand cmd = new SqlCommand("viewBranchEnquiry", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StartDate", StartDate);
        cmd.Parameters.AddWithValue("@EndDate", EndDate);
        SqlDataReader dr = cmd.ExecuteReader();
        ViewBrnachEnquiry obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new ViewBrnachEnquiry();

                obj.Id = dr["meId"].ToString();
                obj.Name = dr["meName"].ToString();
                obj.PersonName = dr["meBranchPersonName"].ToString();
                obj.Email = dr["meEmail"].ToString();
                obj.MobileNo = dr["meMobileNo"].ToString();
                obj.Address = dr["meAddress"].ToString();
                obj.InsDate = dr["InsDate"].ToString();
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
    public string ViewBranchDataTc(string branchTc)
    {
        System.Web.Script.Serialization.JavaScriptSerializer RAJ = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<BranchData> lst = new List<BranchData>();
        con.Open();
        SqlCommand cmd = new SqlCommand("ViewBranchDataTc", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@branchTc", branchTc);
        SqlDataReader dr = cmd.ExecuteReader();
        BranchData obj;
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                obj = new BranchData();

                obj.Srno = dr["srno"].ToString();
                obj.TcId = dr["mbTCId"].ToString();
                obj.BranchName = dr["mbname"].ToString();
                obj.BranchPersonName = dr["mbBranchPersonName"].ToString();
                obj.BranchAddress = dr["mbAddress"].ToString();
                obj.BranchMobileNo = dr["mbMobileNo"].ToString();
                obj.BranchStateName = dr["mStateName"].ToString();
                obj.BranchCityName = dr["mCityName"].ToString();
                obj.PersonImg = dr["mbpersonimage"].ToString();
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
    public string GenrateStudentMarksAuto(string StudentId,string cwsYears)
    {
        System.Web.Script.Serialization.JavaScriptSerializer can = new System.Web.Script.Serialization.JavaScriptSerializer();
        try
        {
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("GenrateStudentMarksAuto", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StudentId", StudentId);
            //cmd.Parameters.AddWithValue("@cwsYears", cwsYears);
            string str = cmd.ExecuteScalar().ToString();
            return str;
        }
        catch (Exception ex)
        {
            return can.Serialize(ex.Message);
        }

    }
}
