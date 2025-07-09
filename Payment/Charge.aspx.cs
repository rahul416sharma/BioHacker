using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using Microsoft.Reporting.WebForms;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;
using System.Web;

public partial class Software_Payment_Charge : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        string paymentId = Request.Form["razorpay_payment_id"];
        string orderId = Request.Form["razorpay_order_id"];
        string signature = Request.Form["razorpay_signature"];
        string bookingId = Request.Form["bookingId"];
        string receipt = Request.Form["Recipt"];
        string mobNo = Request.Form["mobNo"];
        string name = Request.Form["Name"];
        string amount = Request.Form["Amount"];
        string email = Request.Form["Email"];



        string key = "rzp_test_NN6BvbOsdHlvh1";
        string secret = "nyqPw8gbe8GH6j5qHFTkyIOD";

        // STEP 1: Verify the signature
        string generatedSignature = GetSHA256(orderId + "|" + paymentId, secret);

        if (generatedSignature == signature)
        {
            // Signature verified — update DB
            try
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();

                SqlCommand cmd = new SqlCommand("updPayment", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@PaymentId", bookingId);
                cmd.Parameters.AddWithValue("@PaymentPaymentId", paymentId);
                cmd.Parameters.AddWithValue("@PaymentOrderId", orderId);
                cmd.Parameters.AddWithValue("@PaymentStatus", "1");
                cmd.Parameters.AddWithValue("@PaymentRecipt", receipt);

                string str = cmd.ExecuteScalar().ToString();

                Response.Write("<h2>Payment Successful</h2>");
                string pdfpathDetail = Billing(bookingId);
                System.Web.Hosting.HostingEnvironment.QueueBackgroundWorkItem(ct =>
                {
                    var emailService = new EmailService();
                    string subject = "Regarding BioHacker Booking Confirmation";
                    string body =
                        "<p>Dear " + name + ",</p>" +

                        "<p>We are pleased to confirm your booking with us. Your reservation has been successfully recorded, and all arrangements have been made as per your request.</p>" +

                        "<p>Should you have any questions, require further assistance, or need to make any changes to your booking, please feel free to contact us at <a href='mailto:support@biohacker.com'>support@biohacker.com</a>.</p>" +

                        "<p>Thank you for choosing <strong>BioHacker</strong>. We look forward to serving you.</p>" +

                        "<p>Best regards,<br/>BioHacker Team</p>";
                    emailService.SendEmail(email, subject, body, true, pdfpathDetail);
                  
                });
                Response.Redirect("~/payment/final.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<h2>DB Error: " + ex.Message + "</h2>");
            }
            finally
            {
                con.Close();
            }
        }
        else
        {
            // Signature mismatch
            Response.Write("<h2>Payment verification failed: Signature mismatch.</h2>");
        }
    }


    public string Billing(string Id)
    {
        Warning[] warnings;
        string[] streamIds;
        string contentType;
        string encoding;
        string extension;

        DataTable dt = new DataTable();

        using (SqlConnection conn = new SqlConnection(
            ConfigurationManager.ConnectionStrings["cn"].ConnectionString))
        {
            try
            {
                using (SqlCommand cmd = new SqlCommand("ViewBilling", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PaymentId", Id);

                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        adapter.Fill(dt);
                    }
                }

                if (dt.Rows.Count == 0)
                    throw new Exception("No billing data found for PaymentId: " + Id);

                ReportViewer1.Reset();
                ReportViewer1.ProcessingMode = ProcessingMode.Local;
                ReportViewer1.LocalReport.EnableExternalImages = true;
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/RDLC/Billing.rdlc");

                ReportViewer1.LocalReport.DataSources.Clear();
                ReportViewer1.LocalReport.DataSources.Add(
                    new ReportDataSource("BillingData", dt));

                ReportViewer1.LocalReport.Refresh();

                byte[] bytes = ReportViewer1.LocalReport.Render(
                    "PDF", null, out contentType, out encoding, out extension, out streamIds, out warnings);

                string fileName = dt.Rows[0][0].ToString() + "_Billing.pdf";

                string siteRoot = AppDomain.CurrentDomain.BaseDirectory;
                string folderPath = Path.Combine(siteRoot, "BillingPdf");

                if (!Directory.Exists(folderPath))
                    Directory.CreateDirectory(folderPath);

                string fullPath = Path.Combine(folderPath, fileName);
                File.WriteAllBytes(fullPath, bytes);

                string relativeUrl = fullPath;
                return relativeUrl;
            }
            catch (Exception ex)
            {
                return "Error: " + ex.Message;
            }
        }
    }

    public static string GetSHA256(string message, string secret)
    {
        byte[] keyBytes = System.Text.Encoding.UTF8.GetBytes(secret);
        byte[] messageBytes = System.Text.Encoding.UTF8.GetBytes(message);

        using (var hmacsha256 = new System.Security.Cryptography.HMACSHA256(keyBytes))
        {
            byte[] hashmessage = hmacsha256.ComputeHash(messageBytes);
            return BitConverter.ToString(hashmessage).Replace("-", "").ToLower();
        }
    }
}
