<%@ Page Language="C#" AutoEventWireup="true" CodeFile="final.aspx.cs" Inherits="Payment_final" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<style>
		#loader {
			text-align: center;
			margin-top: 100px;
		}

		.spinner {
			margin: 0 auto 20px;
			width: 60px;
			height: 60px;
			border: 6px solid #f3f3f3;
			border-top: 6px solid #3498db;
			border-radius: 50%;
			animation: spin 1s linear infinite;
		}

		@keyframes spin {
			0% {
				transform: rotate(0deg);
			}

			100% {
				transform: rotate(360deg);
			}
		}

		#loader p {
			font-size: 16px;
			color: #333;
			margin-top: 10px;
		}
	</style>

	<form id="form1" runat="server">
		<div>
			<div id="loader" style="text-align: center; margin-top: 100px;">
				<img src="spinner.gif" alt="Loading..." />
				<p>Payment Successful! Your appointment is confirmed. Please check your email for confirmation details.</p>
			</div>
		</div>
	</form>
</body>
</html>
