using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Software_Payment_Payment : System.Web.UI.Page
{
    [System.Web.Services.WebMethod(EnableSession = true)]
    public static void SaveBookingSession(BookingSessionData data)
    {
        HttpContext.Current.Session["BookingName"] = data.BookingName;
        HttpContext.Current.Session["BookingEmail"] = data.BookingEmail;
        HttpContext.Current.Session["BookingMobile"] = data.BookingMobile;
        HttpContext.Current.Session["BookingId"] = data.BookingId;
        HttpContext.Current.Session["Recipt"] = data.Recipt;
        HttpContext.Current.Session["Amount"] = data.Amount;
    }
    public class BookingSessionData
    {
        public string BookingName { get; set; }
        public string BookingEmail { get; set; }
        public string BookingMobile { get; set; }
        public string BookingId { get; set; }
        public string Recipt { get; set; }
        public string Amount { get; set; }
    }

    public string RazorpayKey;
    public string orderId;
    public string Name;
    public string MobileNo;
    public string Email;
    public string bookingId;
    public string Recipt;
    public string Amount;
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;

        Name = Session["BookingName"] as string;
        Email = Session["BookingEmail"] as string;
        MobileNo = Session["BookingMobile"] as string;
        bookingId = Session["BookingId"] as string;
        Recipt = Session["Recipt"] as string;
        Amount = Session["Amount"] as string;
        RazorpayKey = "rzp_test_NN6BvbOsdHlvh1";
        if (string.IsNullOrEmpty(Name) || string.IsNullOrEmpty(Amount))
        {
            Response.Write("Invalid booking session.");
            Response.End();
        }

        var input = new Dictionary<string, object>
    {
        { "amount", Convert.ToInt32(Amount) * 100 },
        { "currency", "INR" },
        { "receipt", Recipt },
        { "payment_capture", 1 }
    };

        string key = "rzp_test_NN6BvbOsdHlvh1";
        string secret = "nyqPw8gbe8GH6j5qHFTkyIOD";

        RazorpayClient client = new RazorpayClient(key, secret);
        Razorpay.Api.Order order = client.Order.Create(input);
        orderId = order["id"].ToString();
    }
}