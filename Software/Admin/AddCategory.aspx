<%@ Page Title="" Language="C#" MasterPageFile="~/Software/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="Software_Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
 
	<script src="../../Angular/excelexportjs.js"></script>

	<div class="container" data-ng-app="Website">
		<div class="row" data-ng-controller="MasterCategory">
			<div class="pagee">
				<div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
					<div class="card-body">
						<h1>Add Category</h1>
						<br />
						<div class="form-row">
							<div class="col-6">
								<label for="inputEmail4">Category Name*</label>
								<input type="text" id="Category_Name" ng-modal="Category_Name" class="form-control" placeholder="Category Name">
							</div>

							<div class="col-4">
								<br />
								<input id="submit" ng-modal="submit" type="button" ng-click="submit()" class="btn btn-danger" value="{{jackbtn}}" />
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12 col-sm-12 col-lg-12 col-xl-12">
					<div class="card-body">
						<h1>Category Information</h1>
						<br />
						<div class="card-block table-border-style">
							<div class="table-responsive">
								<table id="demo-foo-addrow" class="table table-bordered table-hover toggle-circle" data-page-size="50" style="overflow-x: scroll;">
									<thead>
										<tr class="success">
											<th data-sort-initial="true" data-toggle="true">Sr.No</th>
											<th>Category Name</th>
											<th>Ins Date</th>
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
											<td>{{d.CategoryName}}</td>
											<td>{{d.InsDate}}</td>
											<td style="text-align: center">
												<a class="tip" href="#" data-original-title="Edit Task" ng-click="editdata(d.Id);"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
												&nbsp<a class="tip" href="#" data-original-title="Delete" data-ng-click="delClient(d.Id);"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
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

