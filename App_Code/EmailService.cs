using System;
using System.Net;
using System.Net.Mail;

public class EmailService
{
    private readonly string smtpServer = "smtp.gmail.com";
    private readonly int smtpPort = 587;
    private readonly string senderEmail = "info.atmediaagency@gmail.com";
    private readonly string senderPassword = "lzdvlzqsauuwyhrx";

    public void SendEmail(
        string toEmail,
        string subject,
        string body,
        bool isHtml = true,
        string pdfFilePath = null // 📎 Optional PDF file path
    )
    {
        var mail = new MailMessage();
        mail.From = new MailAddress(senderEmail, "BioHacker");
        mail.To.Add(new MailAddress(toEmail));
        mail.Subject = subject;
        mail.Body = body;
        mail.IsBodyHtml = isHtml;

        // 📎 Attach PDF if provided
        if (!string.IsNullOrEmpty(pdfFilePath))
        {
            Attachment pdfAttachment = new Attachment(pdfFilePath);
            mail.Attachments.Add(pdfAttachment);
        }

        using (var smtp = new SmtpClient(smtpServer, smtpPort))
        {
            smtp.Credentials = new NetworkCredential(senderEmail, senderPassword);
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
    }
}
