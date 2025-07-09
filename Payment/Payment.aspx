<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Software_Payment_Payment" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BioHacker Payment</title>
</head>

<body>
    <form action="Charge.aspx" method="post" name="razorpayForm">
        <input id="razorpay_payment_id" type="hidden" name="razorpay_payment_id" />
        <input id="razorpay_order_id" type="hidden" name="razorpay_order_id" />
        <input id="razorpay_signature" type="hidden" name="razorpay_signature" />
        <input type="hidden" id="bookingId" name="bookingId" />
        <input type="hidden" id="Recipt" name="Recipt" />
        <input type="hidden" id="mobNo" name="mobNo" />
        <input type="hidden" id="Name" name="Name" />
        <input type="hidden" id="Amount" name="Amount" />
        <input type="hidden" id="Email" name="Email" />
    </form>

    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script>
        var key = "<%= RazorpayKey %>";  // Add this property in your .cs
        var orderId = "<%= orderId %>";
        var Name = "<%= Name %>";
        var Email = "<%= Email %>";
        var MobileNo = "<%= MobileNo %>";
        var bookingId = "<%= bookingId %>";
        var Recipt = "<%= Recipt %>";
        var Amount = "<%= Amount %>";

        var options = {
            "key": key,
            "name": "BioHacker",
            "description": "BioHacker Payment",
            "order_id": orderId,
            "image": "https://biohacker.thedevgenius.com/assets/logo-black.png",
            "prefill": {
                "name": Name,
                "email": Email,
                "contact": MobileNo
            },
            "notes": {
                "bookingId": bookingId,
                "receipt": Recipt
            },
            "theme": {
                "color": "#F37254",
                "image_padding": false
            },
            "handler": function (response) {
                document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
                document.getElementById('razorpay_order_id').value = orderId;
                document.getElementById('razorpay_signature').value = response.razorpay_signature;
                document.getElementById('bookingId').value = bookingId;
                document.getElementById('Recipt').value = Recipt;
                document.getElementById('mobNo').value = MobileNo;
                document.getElementById('Name').value = Name;
                document.getElementById('Amount').value = Amount;
                document.getElementById('Email').value = Email;
                document.razorpayForm.submit();
            },
            "modal": {
                "ondismiss": function () {
                    console.log("Payment popup closed.");
                },
                "escape": true,
                "backdropclose": false
            }
        };

        var rzp = new Razorpay(options);
        rzp.open();
    </script>
</body>
</html>
