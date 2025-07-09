using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;
using Microsoft.SqlServer.Server;
using System.Web.DynamicData;
using System;
using System.Configuration;

public partial class Software_Admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack != true)
        {
            if (Request.QueryString["Id"] != null && Request.QueryString["Id"] != "")
            {
                GetSPResult(Request.QueryString["Id"]);
            }
        }
    }
    public void GetSPResult(string Id)
    {
        Warning[] warnings;
        string[] streamIds;
        string contentType;
        string encoding;
        string extension;
        DataTable dt = new DataTable();


        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);

        try
        {
            SqlCommand cmd = new SqlCommand("ViewBilling", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            // cmd.Parameters.AddWithValue("@studentId", "78080");
            cmd.Parameters.AddWithValue("@PaymentId", Id);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);

            ReportViewer1.Reset();
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.EnableExternalImages = true;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("/RDLC/Billing.rdlc");
            ReportDataSource datasource = new ReportDataSource("BillingData", dt);
            ReportViewer1.LocalReport.DataSources.Clear();
            this.ReportViewer1.LocalReport.DataSources.Add(datasource);
            ReportViewer1.LocalReport.Refresh();
            byte[] bytes = ReportViewer1.LocalReport.Render("PDF", null, out contentType, out encoding, out extension, out streamIds, out warnings);
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = contentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + dt.Rows[0][0].ToString() + "_Diploma." + extension);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
            cmd.Dispose();
            
            string fileName = dt.Rows[0][0].ToString() + "_Diploma.pdf";

            string folderPath = Server.MapPath("~/BillingPdf/");

            // Ensure folder exists
            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }

            // Full file path
            string fullPath = Path.Combine(folderPath, fileName);
            File.WriteAllBytes(fullPath, bytes);

            // Save PDF to server
            File.WriteAllBytes(fullPath, bytes);
        }

        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
        finally
        {
            if (conn != null)
            {
                conn.Close();

            }
        }
    }

}