<%@ Page Title="" Language="C#" MasterPageFile="~/Software/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Software_Admin_Default2" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<div class="container" <%--data-ng-app="Website"--%>>
		<div class="row" <%--data-ng-controller="MasterCategory"--%>>
			<div class="card">
				<div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
					<div class="card-body">
						<div class="row">
							<div class="col-md-12">
								<rsweb:ReportViewer ID="ReportViewer1" runat="server" CssClass="col-lg-12" Style="width: auto; height: auto"></rsweb:ReportViewer>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

