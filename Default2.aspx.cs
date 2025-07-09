using System;
using System.IO;
using System.Net.Mail;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) { }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        string toEmail = txtTo.Text.Trim();
        string subject = txtSubject.Text.Trim();
        string body = txtBody.Text.Trim();

        // 📎 Full file path to your PDF
        string pdfPath = Server.MapPath("~/ServiceImage/a1.pdf");

        try
        {
            var emailService = new EmailService();

            emailService.SendEmail(toEmail,subject,body,true,pdfPath);

            lblStatus.Text = "✅ Email sent successfully with PDF attachment!";
            lblStatus.CssClass = "success";
        }
        catch (Exception ex)
        {
            lblStatus.Text = "❌ Error: " + ex.Message;
            lblStatus.CssClass = "error";
        }
    }

}
