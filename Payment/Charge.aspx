<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Charge.aspx.cs" Inherits="Software_Payment_Charge" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<asp:ScriptManager ID="ScriptManager1" runat="server" />
		<div>
			<rsweb:ReportViewer ID="ReportViewer1" runat="server" CssClass="col-lg-12" Style="width: auto; height: auto"></rsweb:ReportViewer>

		</div>
	</form>
</body>
</html>
