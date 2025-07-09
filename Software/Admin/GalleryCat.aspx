<%@ Page Title="" Language="C#" MasterPageFile="~/Software/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="GalleryCat.aspx.cs" Inherits="Software_Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
 
	<script src="../../Angular/excelexportjs.js"></script>

	<div class="container" data-ng-app="Website">
		<div class="row" data-ng-controller="GalleryCat">
			<div class="card">
				<div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
					<div class="card-body">
						<h1>Add Gallery Category</h1>
						<br />
						<div class="row">
							<div class="col-6">
								<div class="mb-3">
									<label for="inputEmail4">Category Name*</label>
									<input type="text" id="Category_Name" ng-modal="Category_Name" class="form-control" placeholder="Category Name">
								</div>
							</div>
							<div class="col-6">
								<div class="mb-3">
									<label for="inputEmail4">Order No.*</label>
									<input type="text" id="OrderNo" ng-modal="OrderNo" class="form-control" placeholder="Category Order No.">
								</div>
							</div>
							<div class="col-4">
								<div class="mb-3">
									<br />
									<input id="submit" ng-modal="submit" type="button" ng-click="submit()" class="btn btn-danger" value="{{jackbtn}}" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
					<div class="card-body">
						<h1>Gallery Category Information</h1>
						<br />
						<div class="card-block table-border-style">
							<div class="table-responsive">
								<table id="demo-foo-addrow" class="table table-bordered table-hover toggle-circle" data-page-size="50" style="overflow-x: scroll;">
									<thead>
										<tr class="success">
											<th data-sort-initial="true" data-toggle="true">Sr.No</th>
											<th>Category Name</th>
											<th>Order No</th>
											<th data-sort-ignore="true" class="min-width">Action</th>
										</tr>
									</thead>
									<div class="form-inline padding-bottom-15">
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<a href="javascript:void(0)" class="btn btn-success btn-sm" onclick="exportexcel1()">Export To Excel</a>
												</div>
											</div>
											<div class="col-sm-6 text-right m-b-20">
												<div class="form-group">
													<input id="demo-input-search2" type="text" ng-model="search"  placeholder="Search" class="form-control"
														autocomplete="off">
												</div>

											</div>
										</div>
									</div>
									<tbody>
										<tr ng-repeat="d in CategoryData | filter : search">
											<td>{{$index+1}}</td>
											<td>{{d.Name}}</td>
											<td>{{d.orderNo}}</td>
											<td style="text-align: center">
												<a class="btn btn-soft-primary btn-sm" href="#" data-original-title="Edit Task" ng-click="editdata(d.Id);"><iconify-icon icon="solar:pen-2-broken" class="align-middle fs-18"></iconify-icon></a>
												&nbsp<a class="btn btn-soft-danger btn-sm" href="#" data-original-title="Delete" data-ng-click="delClient(d.Id);"><iconify-icon icon="solar:trash-bin-minimalistic-2-broken" class="align-middle fs-18"></iconify-icon></a>
												&nbsp
											</td>
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

									function exportexcel1() {
										$("#demo-foo-addrow").table2excel({
											name: "Table2Excel",
											filename: "FranchiseDetail",
											fileext: ".xls"
										});
									}
								</script>

								<script src="https://cdn.rawgit.com/rainabba/jquery-table2excel/1.1.0/dist/jquery.table2excel.min.js"></script>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>

