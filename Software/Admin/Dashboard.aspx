<%@ Page Title="" Language="C#" MasterPageFile="~/Software/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Start Breadcrumbbar -->
	<div data-ng-app="Website">
		<div class="container">
			<div class="row" data-ng-controller="Dashboard">
				<div class="col-xl-12">
					<div class="card">
						<div class="card-body">
							<div class="card-title mb-1 anchor">
								<h1>WelCome {{logname}}</h1>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</asp:Content>

