using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment_final : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string message = "Payment Successful! Your appointment is confirmed. Please check your email for confirmation details.";
        Response.Write(string.Format(
            "<script>alert('{0}'); window.location='/Default.aspx';</script>",
            message.Replace("'", "\\'")
        ));
    }
}