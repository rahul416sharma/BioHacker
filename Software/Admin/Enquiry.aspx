<%@ Page Title="" Language="C#" MasterPageFile="~/Software/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="Software_Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
	    <script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 

	<div class="container" data-ng-app="Website">
		<div class="row" data-ng-controller="Enquiry">
			<div class="card">
				<div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
					<div class="card-body">
						<h1>Enquiry Detail</h1>
						<br />
						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="inputEmail4">Start Date*</label>
									<input type="date" id="Start_Date" ng-modal="Course_Duration" class="form-control" placeholder="Course Duration">
								</div>
							</div>
							<div class="col-6">
								<div class="mb-3">
									<label for="inputEmail4">End Date</label>
									<input type="date" id="End_Date" ng-modal="Course_Fee" class="form-control" placeholder="Course Fee">
								</div>
							</div>
							<div class="col-2">
								<div class="mb-3">
									<br />
									<input id="submit" ng-modal="submit" type="button" ng-click="submit()" class="btn btn-danger" value="Submit" />
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
					<div class="card-body">
						<h1>Enquiry Detail Information</h1>
						<br />
						<div class="card-block table-border-style">
							<div class="table-responsive">
								<table id="demo-foo-addrow" class="table table-bordered table-hover toggle-circle" data-page-size="50" style="overflow-x: scroll;">
									<thead>
										<tr class="success">
											<th data-sort-initial="true" data-toggle="true">Sr.No</th>
											<th>Name</th>
											<th>Email</th>
											<th>Mobile No.</th>
											<%--<th>Description</th>--%>
											<th>InsDate</th>
										</tr>
									</thead>
									<div class="form-inline padding-bottom-15">
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<a href="javascript:void(0)" class="btn btn-success btn-sm" onclick="ExportToExcel('xlsx')">Export To Excel</a>
												</div>
											</div>
											<div class="col-sm-6 text-right m-b-20">
												<div class="form-group">
													<input id="demo-input-search2" type="text" ng-model="search" placeholder="Search" class="form-control"
														autocomplete="off">
												</div>

											</div>
										</div>
									</div>
									<tbody>
										<tr ng-repeat="d in EnquiryData | filter : search">
											<td>{{$index+1}}</td>
											<td>{{d.Name}}</td>
											<td>{{d.Email}}</td>
											<td>{{d.MobileNo}}</td>
											<%--<td>{{d.Description}}</td>--%>
											<td>{{d.InsDate}}</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td colspan="8">
												<div class="text-right">
													<ul class="pagination" style="display: inline-block; list-style: none;">
													</ul>
												</div>
											</td>
										</tr>
									</tfoot>
								</table>
    <script>

		function ExportToExcel(type, fn, dl) {
			var elt = document.getElementById('demo-foo-addrow');
			var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });
			return dl ?
				XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
				XLSX.writeFile(wb, fn || ('Enquiry.' + (type || 'xlsx')));
		}

	</script>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

